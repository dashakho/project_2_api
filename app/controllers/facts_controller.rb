# frozen_string_literal: true

class FactsController < ProtectedController

  before_action :set_fact, only: %i[show update destroy]

  # GET /facts
  def index
    @facts = Fact.all
    # @facts = current_user.facts
    render json: @facts
  end

  # GET /facts/1
  def show
    render json: Fact.find(params[:id])
    # render json: current_user.facts.find(params[:id])
    # render json: @fact
  end

  # POST /facts
  def create
    # @fact = Fact.new(fact_params)
    @fact = current_user.facts.build(fact_params)

    if @fact.save
      render json: @fact, status: :created, location: @fact
    else
      render json: @fact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facts/1
  def update
    if @fact.update(fact_params)
      render json: @fact
    else
      render json: @fact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facts/1
  def destroy
    @fact.destroy
    head :no_content
  end

  # private

  # Use callbacks to share common setup or constraints between actions.
  def set_fact
    @fact = current_user.facts.find(params[:id])
    # @fact = Fact.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def fact_params
    params.require(:fact).permit(:category, :level, :user_id)
    # params.require(:fact).permit(:category, :level)
  end
  private :set_fact, :fact_params
end
