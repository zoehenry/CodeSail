class AtmController < ApplicationController
  def machine

  end

  def get_balance
    @@balance ||= 100

    render json: {
      balance: @@balance
    }
  end

  def update_balance
    @@balance = params[:balance]

    render json: {
      balance: @@balance
    }
  end
end
