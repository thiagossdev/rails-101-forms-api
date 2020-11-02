require Rails.root.join('spec', 'macros', 'request_macros.rb')


RSpec.configure do |config|
  # Custom json helpers
  config.include Requests::JsonHelpers, type: :request
  # Custom Header helpers
  config.include Requests::HeaderHelpers, type: :request
end
