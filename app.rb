require 'sinatra'
require 'rqrcode'
require 'base64'
require 'securerandom'
require 'dotenv/load'

enable :sessions
set :session_secret, ENV['SESSION_SECRET']

helpers do
  def current_user
    nil  # Giriş sistemi kaldırıldığı için her zaman nil döner
  end

  def logged_in?
    false
  end
end

get '/' do
  erb :index, locals: {
    qr_code: nil,
    text: nil,
    history: session[:qr_history] || [],
    user: nil
  }
end

post '/generate' do
  input = params[:qr_text]
  qr = RQRCode::QRCode.new(input)
  png = qr.as_png(size: 300)
  base64_image = Base64.strict_encode64(png.to_s)

  session[:qr_history] ||= []
  session[:qr_history] << { text: input, image: base64_image }
  session[:qr_history] = session[:qr_history].last(5)

  erb :index, locals: {
    qr_code: base64_image,
    text: input,
    history: session[:qr_history],
    user: nil
  }
end
