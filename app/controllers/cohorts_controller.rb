class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:index, :create, :show, :update, :destroy]

  # GET /cohorts
  # GET /cohorts.json
  def index
    @cohorts = Cohort.all

    render json: @cohorts
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    render json: @cohort
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)

    if @cohort.save
      render json: @cohort, status: :created, location: @cohort
    else
      render json: @cohort.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cohorts/1
  # PATCH/PUT /cohorts/1.json
  def update
    @cohort = Cohort.find(params[:id])

    if @cohort.update(cohort_params)
      head :no_content
    else
      render json: @cohort.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    @cohort.destroy

    head :no_content
  end

  private

    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

    def cohort_params
      params.require(:cohort).permit(:title, :start_date, :end_date, :program_id)
    end
end
