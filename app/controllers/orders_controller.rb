class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :paypal_init, only: %i[create_order capture_order]

  def index
  end

  def create_order
    price = '0.01'
    request = PayPalCheckoutSdk::Orders::OrdersCreateRequest::new
    request.request_body({
      :intent => 'CAPTURE',
      :purchase_units =>[
        {
          :amount => {
            :currency_code => 'USD',
            :value => price
          }
        }
      ]
    })

    begin
      response = @client.execute request
      order = Order.new
      order.price = price.to_i
      order.token = response.result.id

      if order.save
        return render :json => { :token => response.result.id }, :status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      # Handle the error
    end
  end

  def capture_order
    request = PayPalCheckoutSdk::Orders::OrdersCaptureRequest::new params[:order_id]

    begin
      response = @client.execute request
      order = Order.find_by :token => params[:order_id]
      order.paid = response.result.status == 'COMPLETED'

      if order.save
        @order = order.id
        return render :json => {:status => response.result.status}, status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      # Handle The Error
    end
  end

  private

  def paypal_init
    client_id = 'AWW8BOdjGkv5jFmSwY7s_M2oNhoI_6fQfFNqpXjm13DM9IifyxSNsbWHTTDM8vKqUMuYY_jnD9cbekPp'
    client_secret = 'EBMC50zoVI3ZX8nA-Y5Sae4X_ougcUg5VIydc0RqcqZZd4KGWAeCfssDR10gQjtsPoomloblChoX9Up1'

    environment = PayPal::SandboxEnvironment.new client_id, client_secret
    @client = PayPal::PayPalHttpClient.new environment
  end
end
