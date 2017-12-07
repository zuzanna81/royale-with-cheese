require 'spec_helper'

describe 'External request' do
  it 'queries FactoryBot contributers on Github' do
    uri = URI('https://api.github.com/repos/thoughtbot/factory_bot/contributors')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
