Dado('que estou na pagina de garantia estendida') do
  expect(warranty.checktitle).to be true
end

Entao('seleciono continuar') do
  warranty.continue.click
end
