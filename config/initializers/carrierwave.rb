CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIB3A37YES6BZ5OZA',
    :aws_secret_access_key  => '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'
    #:region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = '3d-printing'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end