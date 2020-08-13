class Final < SitePrism::Page
  element :cep, 'input#cep'
  element :btn_final, 'button#buy-button'

  def checktitle
    find('h2[class="page-title"]').text
  end

  def insert_cep(param)
    cep.set param
    find('button[class="freightForm-okBtn btn btn-default btn-xs nowrap"]').click
  end

  def checkout
    btn_final
  end
end
