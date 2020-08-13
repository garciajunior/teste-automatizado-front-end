class MakeShop < SitePrism::Page
  def choose_notebook
    find('h2.TitleUI-bwhjk3-15', text: 'Notebook Inspiron i15-3583-A30P 8ª Intel Core i7 8GB (AMD Radeon 520 com 2GB) 2TB LED HD 15,6" W10 Preto - Dell')
  end

  def buy_notebook
    all('span.TextUI-sc-1i9za0i-4', text: 'Comprar')[0]
  end
end
