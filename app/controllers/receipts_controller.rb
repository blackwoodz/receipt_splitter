class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new
    @receipt.event_id = params[:event_id]
    @receipt.payer_id = params[:payer_id]
    @receipt.receipt_img = params[:receipt_img]

    if @receipt.save
      redirect_to "/receipts", :notice => "Receipt created successfully."
    else
      render 'new'
    end
  end

  def edit
    @receipt = Receipt.find(params[:id])
  end

  def update
    @receipt = Receipt.find(params[:id])

    @receipt.event_id = params[:event_id]
    @receipt.payer_id = params[:payer_id]
    @receipt.receipt_img = params[:receipt_img]

    if @receipt.save
      redirect_to "/receipts", :notice => "Receipt updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @receipt = Receipt.find(params[:id])

    @receipt.destroy

    redirect_to "/receipts", :notice => "Receipt deleted."
  end
end
