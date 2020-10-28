describe 'callbacks' do
  it 'will have an api_key automatically assigned when created' do
    client = Client.create(source_app: "app_name")
    expect(client.api_key).to_not be_nil
  end
end