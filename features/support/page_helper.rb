# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

# Depois que pegar os arquivos com (_page.rb) estancio todos as suas variaveis
module Pages
  def home
    @home ||= HomePage.new
  end

  def make
    @make ||= MakeShop.new
  end

  def warranty
    @warranty ||= Warranty.new
  end

  def final
    @final ||= Final.new
  end
end
