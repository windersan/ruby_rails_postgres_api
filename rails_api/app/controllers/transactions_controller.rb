
  class TransactionsController < ApplicationController
    def index
      transactions = Transaction.order('created_at DESC');
      render json: {status: 'SUCCESS', msg: 'loaded', data: transactions},
             status: :ok
    end
  end
