class Topic04sController < ApplicationController
  before_action :set_topic04, only: [:show, :edit, :update, :destroy]

  # GET /topic04s
  # GET /topic04s.json
  def index
    @topic04s = Topic04.all
  end

  # GET /topic04s/1
  # GET /topic04s/1.json
  def show
    @comment = Comment04.new
  end

  # GET /topic04s/new
  def new
    @topic04 = Topic04.new
  end

  # GET /topic04s/1/edit
  def edit
  end

  # POST /topic04s
  # POST /topic04s.json
  def create
    @topic04 = Topic04.new(topic04_params)

    respond_to do |format|
      if @topic04.save
        format.html { redirect_to @topic04, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic04 }
      else
        format.html { render :new }
        format.json { render json: @topic04.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic04s/1
  # PATCH/PUT /topic04s/1.json
  def update
    respond_to do |format|
      if @topic04.update(topic04_params)
        format.html { redirect_to @topic04, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic04 }
      else
        format.html { render :edit }
        format.json { render json: @topic04.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic04s/1
  # DELETE /topic04s/1.json
  def destroy
    @topic04.destroy
    respond_to do |format|
      format.html { redirect_to topic04s_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic04
      @topic04 = Topic04.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic04_params
      params.require(:topic04).permit(:title, :body, :picture,:avatar)
    end
end
