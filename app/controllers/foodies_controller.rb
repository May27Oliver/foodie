# frozen_string_literal: true

# this controller deal with foodie things
class FoodiesController < ApplicationController
  before_action :set_foody, only: %i[ show edit update destroy ] 
  def index
    @foodies = Foodie.all
    render(json: @foodies, status: 200)
  end

  # GET /foodies/new
  def new
    @foody = Foodie.new
  end

  # GET /foodies/1/edit
  def edit; end

  # POST /foodies or /foodies.json
  def create
    @foody = Foodie.new(foody_params)

    respond_to do |format|
      if @foody.save
        format.html { redirect_to foody_url(@foody), notice: 'Foodie was successfully created.' }
        format.json { render :show, status: :created, location: @foody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodies/1 or /foodies/1.json
  def update
    respond_to do |format|
      if @foody.update(foody_params)
        format.html { redirect_to foody_url(@foody), notice: 'Foodie was successfully updated.' }
        format.json { render :show, status: :ok, location: @foody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodies/1 or /foodies/1.json
  def destroy
    @foody.destroy

    respond_to do |format|
      format.html { redirect_to foodies_url, notice: 'Foodie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_foody
      @foody = Foodie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foody_params
      params.require(:foody).permit(:recommender_id, :type, :price, :integer, :url, :string)
    end
end
