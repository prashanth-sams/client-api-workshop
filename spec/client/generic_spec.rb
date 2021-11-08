
describe 'Generic Methods - Api Test' do

  before :all do
    @api = ClientApi::Api.new
  end

  context 'GET request' do
    it "generic GET request", :get do
      @api.get('/api/users')
      expect(@api.status).to eq(200)
      expect(@api.message).to eq('OK')
    end
  end

  context 'POST request' do
    it "generic POST request", :post do
      @api.post('/api/users', {"name": "prashanth sams"})
      expect(@api.status).to eq(201)
    end
  end

  context 'DELETE request' do
    it "generic DELETE request", :post do
      @api.delete('/api/users/3')
      expect(@api.status).to eq(204)
    end
  end

  context 'PUT request' do
    it "generic PUT request", :post do
      @api.put('/api/users/2', {"data":{"email":"prashanth@mail.com","first_name":"Prashanth","last_name":"Sams"}})
      expect(@api.status).to eq(200)
    end
  end

  context 'PATCH request' do
    it "generic PATCH request", :post do
      @api.patch('/api/users/2', {"data":{"email":"prashanth@mail.com","first_name":"Prashanth","last_name":"Sams"}})
      expect(@api.status).to eq(200)
    end
  end

  after :all do
    puts "after all"
  end
end