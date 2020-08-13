class HomePage < SitePrism::Page
  set_url '/'

  element :busca, 'input#h_search-input'
  element :btn_ok, 'button#h_search-btn'
  element :title_page, 'h1.h1.page-title'

  def check_title
    find('h2.zion-image-carousel__TitleUI-sc-12jba14-0', text: 'Tá rolando muito cashback! Se liga:')
  end

  def search_product(product)
    busca.set product
    btn_ok.click
  end

  def check_product_found
    title_page
  end

  # def clean_local
  #   super
  #   visit "/"
  #   page.execute_script("localStorage.clear()")
  # end
end
