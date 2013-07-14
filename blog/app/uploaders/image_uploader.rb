# encoding: utf-8
 
+class CoverUploader < CarrierWave::Uploader::Base
 
   # Include RMagick or MiniMagick support:
   # include CarrierWave::RMagick
   # include CarrierWave::MiniMagick
 
   def filename
     @name ||= "#{timestamp}-#{super}.jpg" if original_filename.present? and super.present?
   end
 
   def timestamp
     var = :"@#{mounted_as}_timestamp"
     model.instance_variable_get(var) or model.instance_variable_set(var, Time.now.to_i)
   end
   
   # Choose what kind of storage to use for this uploader:
   storage :file
   # storage :fog
 def store_dir
   # Provide a default URL as a default if there hasn't been a file uploaded:
   # def default_url
   #   # For Rails 3.1+ asset pipeline compatibility:
   #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
   #
   #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
   # end
