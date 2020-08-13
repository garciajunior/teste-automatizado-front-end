Dado('que estou na Home Page') do
  home.load
  expect(home.check_title.text).to eql 'Tá rolando muito cashback! Se liga:'
end

Quando('pesquiso por notebook') do
  home.search_product('notebook')
  sleep(5)
end

Entao('verifico se a seção notebook foi selecionado') do
  expect(home.check_product_found.text).to eql 'notebook'
end
