class Warranty < SitePrism::Page

  def checktitle
    assert_selector('h1',  text: 'Agora que você já escolheu seu produto, saiba como protegê-lo por mais tempo.', visible: true, wait: 30)
  end

  def continue
    find('div[class="Wrapper-sc-1i9za0i-3 ibqKJd ViewUI-sc-1ijittn-6 iXIDWU"]')
  end
end
