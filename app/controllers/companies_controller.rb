class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      flash.now.notice = "企業を登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    def set_company
      @user = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :description, company_users_attributes: [:id, :user_id, :_destroy])
    end
end