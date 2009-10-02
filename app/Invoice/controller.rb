require 'rho/rhocontroller'

class InvoiceController < Rho::RhoController

  #GET /Invoice
  def index
    @invoices = Invoice.find(:all)
    render
  end

  # GET /Invoice/{1}
  def show
    @invoice = Invoice.find(@params['id'])
    render :action => :show
  end

  # GET /Invoice/new
  def new
    @invoice = Invoice.new
    render :action => :new
  end

  # GET /Invoice/{1}/edit
  def edit
    @invoice = Invoice.find(@params['id'])
    render :action => :edit
  end

  # POST /Invoice/create
  def create
    @invoice = Invoice.new(@params['invoice'])
    @invoice.save
    redirect :action => :index
  end

  # POST /Invoice/{1}/update
  def update
    @invoice = Invoice.find(@params['id'])
    @invoice.update_attributes(@params['invoice'])
    redirect :action => :index
  end

  # POST /Invoice/{1}/delete
  def delete
    @invoice = Invoice.find(@params['id'])
    @invoice.destroy
    redirect :action => :index
  end
end
