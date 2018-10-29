class Topic02sController < ApplicationController
  before_action :set_topic02, only: [:show, :edit, :update, :destroy]

  # GET /topic02s
  # GET /topic02s.json
  def index
    @topic02s = Topic02.all
  end

  # GET /topic02s/1
  # GET /topic02s/1.json
  def show
      @comment = Comment02.new
  end

  # GET /topic02s/new
  def new
    @topic02 = Topic02.new
  end

  # GET /topic02s/1/edit
  def edit
  end

  # POST /topic02s
  # POST /topic02s.json
  def create
    @topic02 = Topic02.new(topic02_params)

    respond_to do |format|
      if @topic02.save
        format.html { redirect_to @topic02, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic02 }
      else
        format.html { render :new }
        format.json { render json: @topic02.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic02s/1
  # PATCH/PUT /topic02s/1.json
  def update
    respond_to do |format|
      if @topic02.update(topic02_params)
        format.html { redirect_to @topic02, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic02 }
      else
        format.html { render :edit }
        format.json { render json: @topic02.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic02s/1
  # DELETE /topic02s/1.json
  def destroy
    @topic02.destroy
    respond_to do |format|
      format.html { redirect_to topic02s_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic02
      @topic02 = Topic02.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic02_params
      params.require(:topic02).permit(:title, :body, :picture)
    end
end
