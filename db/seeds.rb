spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas")
spinner.auto_spin

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://www.pngplay.com/wp-content/uploads/2/Bitcoin-PNG-Photo-Image.png'
  },
  {
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png'
  },
  {
    description: 'Dash',
    acronym: 'DASH',
    url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png'
  }
]

coins.each do |coin|
  sleep(0.5)
  Coin.find_or_create_by!(coin)
end

spinner.success('(Concluído!)')