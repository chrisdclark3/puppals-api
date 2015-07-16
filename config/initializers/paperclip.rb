require "paperclip"
Paperclip.options[:command_path] = "/ImageMagick"
Paperclip::Attachment.default_options[:use_timestamp] = false