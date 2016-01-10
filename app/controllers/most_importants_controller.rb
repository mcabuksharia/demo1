class MostImportantsController < ApplicationController
  before_action :set_most_important, only: [:show, :edit, :update, :destroy]

  # GET /most_importants
  # GET /most_importants.json
  def index
    @most_importants = MostImportant.all
  end

  # GET /most_importants/1
  # GET /most_importants/1.json
  def show
  end

  # GET /most_importants/new
  def new
    @most_important = MostImportant.new
  end

  # GET /most_importants/1/edit
  def edit
  end

  # POST /most_importants
  # POST /most_importants.json
  def create
    @most_important = MostImportant.new(most_important_params)
    respond_to do |format|
      if @most_important.save
        well = {:most_important_id=>@most_important.id}
        aw=well_params
        df = well.merge(aw)
        WellnessRoom.new(df).save
        format.html { redirect_to @most_important, notice: 'Most important was successfully created.' }
        format.json { render :show, status: :created, location: @most_important }
      else
        format.html { render :new }
        format.json { render json: @most_important.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /most_importants/1
  # PATCH/PUT /most_importants/1.json
  def update
    respond_to do |format|
      if @most_important.update(most_important_params)
        format.html { redirect_to @most_important, notice: 'Most important was successfully updated.' }
        format.json { render :show, status: :ok, location: @most_important }
      else
        format.html { render :edit }
        format.json { render json: @most_important.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /most_importants/1
  # DELETE /most_importants/1.json
  def destroy
    @most_important.destroy
    respond_to do |format|
      format.html { redirect_to most_importants_url, notice: 'Most important was successfully destroyed.' }
 f.text_field rails     format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_most_important
      @most_important = MostImportant.find(params[:id])
    end

    def well_params
      return({:name=>"default name",:desc=>"default desc"})
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def most_important_params
      params[:most_important].permit(:name)
    end
end
