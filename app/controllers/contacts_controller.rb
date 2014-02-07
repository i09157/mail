class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_action :correct_user,   only: [:show,:edit, :update]
  
  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
    #@hierarchies=Hierarchy.all

  end

  def edit
  end

  def create    
     @contact = Contact.new(contact_params)
     attachment = params[:attachment]
     @contact.user_id =current_user.id
     @contact.user_name = current_user.account.kanjiname
     @contact.email = current_user.account.mail_addr
     addresses = params[:"addresses"]
     
     results = addresses.map {|address|
      email = @contact.clone
      email.to = address
      successed = email.save
      Message.hello(email,attachment).deliver if successed
      successed
    }

     respond_to do |format|
      if results.all?
         format.html { redirect_to @contact, notice: 'メールを送信しました。' }
         format.json { render action: 'show', status: :created, location: @contact }
       else
         format.html { render action: 'new' }
         format.json { render json: @contact.errors, status: :unprocessable_entity }
       end
     end
  end

  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end

  private
    
    def set_contact
      @contact = Contact.find(params[:id])
    end
    def contact_params
      params.require(:contact).permit(:to, :reply, :subject, :body)
    end
    def attachment_params
      params.require(:attachment)
    end
    def correct_user
      @contact = Contact.find(params[:id])
      redirect_to root_path,:alert => '不正な操作です。' unless @contact.user_id == current_user.id
    end
end
