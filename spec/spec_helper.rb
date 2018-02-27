ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("customer")
require("product")
require("purchase")

RSpec.configure do |config| # clear db between spec runs
  config.after(:each) do
    # Task.all.each do |task|
    #   task.destroy
    # end
    # List.all.each do |list|
    #   list.destroy
    # end
  end
end
