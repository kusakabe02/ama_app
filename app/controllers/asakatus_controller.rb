class AsakatusController < ApplicationController
    def new
      #新規投稿用
      @asakatu = Asakatu.new
      @task = @asakatu.task.build
    end

    def index
      #一覧用
      @asakatu = Asakatu.all
    end

    def show
      #詳細用
      @asakatu = Asakatu.find(params[:id])
    end

    def create
      @asakatu = Asakatu.new(asakatu_params)
      @asakatu.save
    end

    def destroy
    end

    #ストロングパラメーター _attributesの記載でタスクが取得可能になる
    def asakatu_params
      params.require(:asakatu).permit(:title,:memo,:private_flag,task_attributes:[:id, :name, :status_flag, :_destroy])
    end
  end
