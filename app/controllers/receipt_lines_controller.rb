class ReceiptLinesController < ApplicationController
  def index
    @receipt_lines = ReceiptLine.all
  end

  def show
    @receipt_line = ReceiptLine.find(params[:id])
  end

  def new
    @receipt_line = ReceiptLine.new
  end

  def create
    @receipt_line = ReceiptLine.new
    @receipt_line.claimer_id = params[:claimer_id]
    @receipt_line.description = params[:description]
    @receipt_line.line_value = params[:line_value]
    @receipt_line.receipt_id = params[:receipt_id]

    if @receipt_line.save
      redirect_to "/receipt_lines", :notice => "Receipt line created successfully."
    else
      render 'new'
    end
  end

  def edit
    @receipt_line = ReceiptLine.find(params[:id])
  end

  def update
    @receipt_line = ReceiptLine.find(params[:id])

    @receipt_line.claimer_id = params[:claimer_id]
    @receipt_line.description = params[:description]
    @receipt_line.line_value = params[:line_value]
    @receipt_line.receipt_id = params[:receipt_id]

    if @receipt_line.save
      redirect_to "/receipt_lines", :notice => "Receipt line updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @receipt_line = ReceiptLine.find(params[:id])

    @receipt_line.destroy

    redirect_to "/receipt_lines", :notice => "Receipt line deleted."
  end
end
