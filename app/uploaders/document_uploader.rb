class DocumentUploader < CarrierWave::Uploader::Base

  # process :store_dimensions

  storage :file

  def extension_white_list
    %w(jpg jpeg gif png pdf)
  end

  def store_dir
    puts "#{model.class.to_s.underscore} #{mounted_as}   #{model.id}"
    "#{ENV["HEROKU_RAILS_ENV"] || Rails.env}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  private

  # def store_dimensions
  #   if file && model
  #     model.width, model.height = `identify -format "%wx%h" #{file.path}`.split(/x/)
  #   end
  # end

end
