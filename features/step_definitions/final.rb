Dado('que estou no meu carrinho') do
  # binding.pry
  expect(final.checktitle).to eql 'Meu carrinho'
end

Dado('insiro o cep') do
  final.insert_cep(37_501_053)
end
Entao('seleciono concluir pedido') do
  final.checkout
end
