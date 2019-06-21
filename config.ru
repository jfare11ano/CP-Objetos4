# config.ru
require 'rack'
class MiPrimeraWebApp  # objeto con el metodo call
  def call(env)  # info del request
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ["<h1>   Estás en el Index! </h1>"]] #respuesta ["<h1>    #{env} </h1>"]]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1>  "Estás en otro landing!" </h1>']] #respuesta
    else
      [404, {'Content-Type' => 'text/html'},[File.read("404.html")]]
    end
  end

end
run MiPrimeraWebApp.new
