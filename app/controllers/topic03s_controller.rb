class Topic03sController < ApplicationController
  before_action :set_topic03, only: [:show, :edit, :update, :destroy]

  # GET /topic03s
  # GET /topic03s.json
  def index
    @topic03s = Topic03.all
  end

  # GET /topic03s/1
  # GET /topic03s/1.json
  def show
      @comment = Comment03.new
  end

  # GET /topic03s/new
  def new
    @topic03 = Topic03.new
  end

  # GET /topic03s/1/edit
  def edit
  end

  # POST /topic03s
  # POST /topic03s.json
  def create
    @topic03 = Topic03.new(topic03_params)

    respond_to do |format|
      if @topic03.save
        format.html { redirect_to @topic03, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic03 }
      else
        format.html { render :new }
        format.json { render json: @topic03.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic03s/1
  # PATCH/PUT /topic03s/1.json
  def update
    respond_to do |format|
      if @topic03.update(topic03_params)
        format.html { redirect_to @topic03, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic03 }
      else
        format.html { render :edit }
        format.json { render json: @topic03.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic03s/1
  # DELETE /topic03s/1.json
  def destroy
    @topic03.destroy
    respond_to do |format|
      format.html { redirect_to topic03s_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic03
      @topic03 = Topic03.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic03_params
      params.require(:topic03).permit(:title, :body, :picture)
    end
end
