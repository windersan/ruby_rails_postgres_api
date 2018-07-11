
  class TransactionsController < ApplicationController
    def index
      transactions = Transaction.order('created_at DESC');
      render json: {status: 'SUCCESS', msg: 'loaded', data: transactions},
             status: :ok
    end
    def show
      transaction = Transaction.find(params[:id])
      render json: {status: 'SUCCESS', msg: 'loaded', data: transaction},
             status: :ok
    end
    def create
      transaction = Transaction.new(transaction_params)
    #  if transaction.save
        render json: {status: 'SUCCESS', msg: 'saved', data: transaction},
               status: :ok

      end
     # else
      #  render json: {status: 'ERROR', msg: 'not saved', data: transaction.errors},
       #       status: :unprocessable_entity
    end
    def destroy
      transaction = Transaction.find(params[:id])
      transaction.destroy
      render json: {status: 'SUCCESS', msg: 'deleted', data: transaction},
             status: :ok
    end
    def update
      transaction = Transaction.find(params[:id])
      if transaction.update_attributes(transaction_params)
        render json: {status: 'SUCCESS', msg: 'saved', data: transaction},
               status: :ok
      end
    end


    private
    def transaction_params
      params.permit(:amount, :date, :desc)
    end
  #end

