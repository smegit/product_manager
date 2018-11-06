class FileAttachment < Attachment

  mount_uploader :attachment, DocumentUploader
  #validates :file_type, presence: true


end
