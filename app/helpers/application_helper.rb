module ApplicationHelper
  def data_br(data_us)
    data_us.strftime '%d/%m/%Y'
  end

  def nome_aplicacao
    'Crypto Wallet App'
  end

  def ambiente_rails
    if Rails.env.production?
      'Produção'
    elsif Rails.env.development?
      'Desenvolvimento'
    else
      'Testes'
    end

  end
end
