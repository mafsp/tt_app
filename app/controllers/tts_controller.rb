class TtsController < ApplicationController

  def index
    @tt = Tt.new
    @tts = Tt.all
    # binding.pry
  end
  
  def create
    @tts = Tt.all
    @tt = Tt.new(tt_params)
    if @tt.save
      redirect_to tts_path, notice: "TTを作成しました！"
    else
      render 'index'
    end
  end
  
  def confirm
    @tt = Tt.new(tt_params)
  end
  
  def edit
    @tt = Tt.find(params[:id])
  end
  
  def update
    @tt = Tt.find(params[:id])
    if @tt.update(tt_params)
      redirect_to tts_path, notice: "TTを編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @blog = Tt.find(params[:id])
    @blog.destroy
    redirect_to tts_path, notice:"TTを削除しました！"
  end
  
  private
  
  def tt_params
    params.require(:tt).permit(:content)
  end

end



