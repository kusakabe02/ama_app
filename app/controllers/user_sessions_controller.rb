class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def new
  end

  def create
    #loginメソッドでEmail、パスワードを用いて認証情報が正当か検証。
    #認証情報が正しければ、ユーザーIDを返す。
    @user = login(params[:email], params[:password])

    if @user
      #ログイン後はトップページへリダイレクト
      redirect_back_or_to root_path, notice: 'Login successful!!!'
    else
      #ログイン失敗時はメッセージ表示
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    #ログアウト処理、処理後にログイン画面に遷移する。
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end
