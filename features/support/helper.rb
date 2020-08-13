# Metodo para tirar screenshot e embeda no relatorio html
module Helper
  def take_screenshot(file_name, resultado)
    data = Time.now.strftime('%F').to_s
    h_m_s = Time.now.strftime('%H%M%S%p').to_s
    caminho = "results/evidencias/test_#{resultado}/#{data}"
    foto = "#{caminho}/#{h_m_s}.png"
    page.save_screenshot(foto, full: true)
    attach(foto, 'image/png')
  end
end