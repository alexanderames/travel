{"filter":false,"title":"cart_controller.rb","tooltip":"/app/controllers/cart_controller.rb","undoManager":{"mark":21,"position":21,"stack":[[{"start":{"row":35,"column":5},"end":{"row":36,"column":0},"action":"insert","lines":["",""],"id":140},{"start":{"row":36,"column":0},"end":{"row":36,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":36,"column":2},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":141},{"start":{"row":37,"column":0},"end":{"row":37,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":37,"column":2},"end":{"row":37,"column":3},"action":"insert","lines":["d"],"id":142}],[{"start":{"row":37,"column":3},"end":{"row":37,"column":4},"action":"insert","lines":["e"],"id":143}],[{"start":{"row":37,"column":4},"end":{"row":37,"column":5},"action":"insert","lines":["f"],"id":144}],[{"start":{"row":37,"column":2},"end":{"row":37,"column":5},"action":"remove","lines":["def"],"id":145},{"start":{"row":37,"column":2},"end":{"row":37,"column":5},"action":"insert","lines":["def"]}],[{"start":{"row":37,"column":2},"end":{"row":37,"column":5},"action":"remove","lines":["def"],"id":146},{"start":{"row":37,"column":2},"end":{"row":39,"column":5},"action":"insert","lines":["def method_name","    ","  end"]}],[{"start":{"row":37,"column":6},"end":{"row":37,"column":17},"action":"remove","lines":["method_name"],"id":147},{"start":{"row":37,"column":6},"end":{"row":37,"column":7},"action":"insert","lines":["o"]}],[{"start":{"row":37,"column":7},"end":{"row":37,"column":8},"action":"insert","lines":["r"],"id":148}],[{"start":{"row":37,"column":8},"end":{"row":37,"column":9},"action":"insert","lines":["d"],"id":149}],[{"start":{"row":37,"column":9},"end":{"row":37,"column":10},"action":"insert","lines":["e"],"id":150}],[{"start":{"row":37,"column":10},"end":{"row":37,"column":11},"action":"insert","lines":["r"],"id":151}],[{"start":{"row":37,"column":11},"end":{"row":37,"column":12},"action":"insert","lines":["_"],"id":152}],[{"start":{"row":37,"column":12},"end":{"row":37,"column":13},"action":"insert","lines":["c"],"id":153}],[{"start":{"row":37,"column":13},"end":{"row":37,"column":14},"action":"insert","lines":["o"],"id":154}],[{"start":{"row":37,"column":14},"end":{"row":37,"column":15},"action":"insert","lines":["m"],"id":155}],[{"start":{"row":37,"column":15},"end":{"row":37,"column":16},"action":"insert","lines":["p"],"id":156}],[{"start":{"row":37,"column":16},"end":{"row":37,"column":17},"action":"insert","lines":["l"],"id":157}],[{"start":{"row":37,"column":17},"end":{"row":37,"column":18},"action":"insert","lines":["e"],"id":158}],[{"start":{"row":37,"column":18},"end":{"row":37,"column":19},"action":"insert","lines":["t"],"id":159}],[{"start":{"row":37,"column":19},"end":{"row":37,"column":20},"action":"insert","lines":["e"],"id":160}],[{"start":{"row":37,"column":2},"end":{"row":39,"column":5},"action":"remove","lines":["def order_complete","    ","  end"],"id":163},{"start":{"row":37,"column":2},"end":{"row":56,"column":5},"action":"insert","lines":["def order_complete","    @order = Order.find(params[:order_id])","    @amount = (@order.grand_total.to_f.round(2) * 100).to_i","","    customer = Stripe::Customer.create(","      :email => current_user.email,","      :card => params[:stripeToken]","    )","","    charge = Stripe::Charge.create(","      :customer => customer.id,","      :amount => @amount,","      :description => 'Rails Stripe customer',","      :currency => 'usd'","    )","","    rescue Stripe::CardError => e","    flash[:error] = e.message","    redirect_to charges_path","  end"]}]]},"ace":{"folds":[],"scrolltop":636.5,"scrollleft":0,"selection":{"start":{"row":56,"column":5},"end":{"row":56,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1472702898985,"hash":"6ada9bec21b6a7bd8be00c141f4b5d6215ad24c4"}