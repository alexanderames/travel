{"filter":false,"title":"stripe.rb","tooltip":"/config/initializers/stripe.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":8,"column":56},"action":"insert","lines":["Rails.configuration.stripe = {","","  :publishable_key => \"#{ENV['stripe_test_publishable_key']}\",","","  :secret_key => \"#{ENV['stripe_test_secret_key']}\"","","}","","Stripe.api_key = Rails.configuration.stripe[:secret_key]"],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":56},"end":{"row":8,"column":56},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"d92b554748ca42c04b76072c1828af8be48e74c7","timestamp":1472702585900}