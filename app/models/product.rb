class Product < ApplicationRecord
  include PgSearch
  include Trailable
  extend FriendlyId

  friendly_id :model_number, use: :slugged
  mount_uploader :cover_image, ImageUploader
  has_paper_trail
  has_many :product_features, dependent: :destroy
  has_many :features, through: :product_features
  has_many :product_approvals, dependent: :destroy
  has_many :approvals, through: :product_approvals
  has_many :product_attachments, dependent: :destroy
  has_many :image_attachments, through: :product_attachments, source: :attachment, class_name: 'ImageAttachment', dependent: :destroy
  has_many :schematic_attachments, through: :product_attachments, source: :attachment, class_name: 'SchematicAttachment', dependent: :destroy
  has_many :file_attachments, through: :product_attachments, source: :attachment, class_name: 'FileAttachment', dependent: :destroy

  accepts_nested_attributes_for :features, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :image_attachments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :schematic_attachments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :file_attachments, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :approvals, reject_if: :all_blank, allow_destroy: true
  pg_search_scope :search_products,
                  against: %i[model_number type description],
                  using: { tsearch: { prefix: true } }
  scope :by_type, -> type { where(type: type) }
  scope :by_aesthetic, -> aesthetic { where(aesthetic: aesthetic) }

  validates :model_number, presence: true, uniqueness: { case_sensitive: false }
  validates :type, presence: true, exclusion: { in: %w(Product), message: ": Please select product type." }
  before_validation :assign_type

  def history
    own_papertrail_history = papertrail_history || []
  end

  def self.to_csv(ptype)

    puts ptype
    cl = Product.find_by(type: ptype)
    #puts t
    #puts p_type
    # cl = Product.find_by(type: p_type)
    # puts cl.class
    #attributes = %w{id  model_number type description aesthetic dimensions finish supplied_accessories optional_accessories safety power warranty status data notes ean price }
    attributes = Product.column_names() + cl.data.keys
    attributes.delete('data')
    attributes << 'features'
  
    #attributes << cl.data.keys
    CSV.generate(headers: true) do |csv|
      csv << attributes
      Product.where(type: ptype).each do |product|
        #csv<< attributes.map{ |attr| product.send(attr).kind_of?(Array) ? product.send(attr).join("\n") : product.send(attr)}
        csv<< attributes.map{ |attr| attr == 'features' ? product.send(attr).pluck('name').join("\n") : (product.send(attr).kind_of?(Array) ? product.send(attr).join("\n") : product.send(attr))}
      end
    end
  end

  def self.tester(num)
    puts num
  end

  private
  def assign_type
    self.type = self.class.to_s if type.blank?
  end

  def self.unique_type
    self.distinct.order(:type).pluck(:type) 
  end

  def self.unique_aesthetic
    self.distinct.pluck(:aesthetic).reject { |x| x.to_s.empty? }
  end


end



