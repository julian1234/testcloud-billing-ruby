describe Testcloud::Billing do

  it 'should find nil for 404s' do
    stub_request(:any, "bapi.testcloud.io/customers/1").to_return( status: 404 )
    Testcloud::Billing.setup url: 'http://bapi.testcloud.io', api_key: '123456789qwertzuio'
    expect( Testcloud::Billing::Customer.find(1) ).to be_nil
  end

end