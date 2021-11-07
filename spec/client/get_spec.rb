
describe 'Test Automation' do

  it "GET request", :get do
    @api = ClientApi::Api.new
    @api.get('/api/users')
    expect(@api.status).to eq(200)
    expect(@api.message).to eq('OK')
  end

end