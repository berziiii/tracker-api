class CohortsController < ProtectedController
  before_action :set_cohort, only: [:show, :update, :destroy]
  # before_action :authenticate, only: [:index, :create, :show, :update, :destroy]

  # GET /cohorts
  # GET /cohorts.json
  def index
    if current_user.admin === true
      @cohorts = Cohort.all
      render json: @cohorts
    elsif current_user.admin === false
      @cohort = current_user.profile.cohorts
      render json: @cohort
    else
      render json: @cohorts.errors, status: :unprocessable_entity
    end
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    if current_user.admin === true
      render json: @cohort
    elsif current_user.admin === false
      @cohort = current_user.profile.cohort
      render json: @cohort
    end
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)

    if current_user.admin === true && @cohort.save
      render json: @cohort, status: :created, location: @cohort
    else
      render json: @cohort.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cohorts/1
  # PATCH/PUT /cohorts/1.json
  def update
    @cohort = Cohort.find(params[:id])

    if current_user.admin === true && @cohort.update(cohort_params)
      head :no_content
    else
      render json: @cohort.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    if current_user.admin === true && @cohort.destroy
      head :no_content
    else
      render json: @cohort.errors, status: :unprocessable_entity
    end
  end

  private

    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

    def cohort_params
      params.require(:cohort).permit(:title, :start_date, :end_date, :program_id)
    end
end
