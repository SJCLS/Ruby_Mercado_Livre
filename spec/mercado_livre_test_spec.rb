# spec/mercado_livre_test_spec.rb
require_relative '../config/setup'
require_relative '../lib/page_objects/consulta_mercado_livre'
require 'rspec'

RSpec.describe 'Mercado Livre Test' do
  before(:each) do
    @driver = setup_driver
    @home_page = HomePage.new(@driver)
  end

  after(:each) do
    @driver.quit
  end

  it 'visita a página inicial, busca e navega pelas imagens' do
    @home_page.open('https://www.mercadolivre.com.br')
    @home_page.search_product('Mouse gamer')
    @home_page.click_first_product
    @home_page.navigate_gallery
    sleep 5
  end
end
