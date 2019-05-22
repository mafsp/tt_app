class TtsController < ApplicationController
  
  def index
    @tt = Tt.new
    @tts = Tt.all
  end
  
  def create
    Tt.create(content: params[:tt][:content])
    redirect_to tts_path
  end
end
