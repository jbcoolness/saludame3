require 'sinatra'

get '/' do

<<-HTML
<form action="/saludo" method="post">
<h1>Dime a quien quieres saludar</h1>
<input type="text" name="nombre"></input>
<input type="submit" value="Saludar"></input>
</form>
HTML
end

post '/saludo' do
    "Hola #{params[:nombre]}!"
    end
