class ApplicationController < ActionController::Base
  #sorceryが作成するメソッド ログインしてない時にログイン必須ページにアクセスされた場合、not_authenticatedメソッドを呼び出す
  before_action :require_login
end
