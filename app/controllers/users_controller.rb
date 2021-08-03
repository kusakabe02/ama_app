class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :require_login, only: %i[new create index]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    # respond_to do |format|
      if @user.save
        #保存が失敗したらログイン画面へ遷移する
        redirect_to login_path, notice: 'success'
        # format.html { redirect_to @user, notice: "User was successfully created." }
        # format.json { render :show, status: :created, location: @user }
      else
        #保存が失敗したら登録画面へ遷移する
        render :new
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    #余分なend? エラーが出ていたので削除した

  # PATCH/PUT /users/1 or /users/1.json
  def update
    #デフォルト？の記述を一旦コメントアウト
    # respond_to do |format|
    #   if @user.update(user_params)
    #     format.html { redirect_to @user, notice: "User was successfully updated." }
    #     format.json { render :show, status: :ok, location: @user }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to "/users/#{@user.id}"
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :crypted_password, :salt, :image)
    end
 end
#end があった
