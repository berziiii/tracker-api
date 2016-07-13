class EnrollmentsController < ProtectedController
  before_action :set_enrollment, only: [:show, :update, :destroy]
  # before_action :authenticate, only: [:index, :create, :show, :update, :destroy]

  # GET /enrollments
  # GET /enrollments.json
  def index
    if current_user.admin === true
      @enrollments = Enrollment.all
      render json: @enrollments
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
    if current_user.admin === true
      render json: @enrollment
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(enrollment_params)

    if current_user.admin === true && @enrollment.save
      render json: @enrollment, status: :created, location: @enrollment
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enrollments/1
  # PATCH/PUT /enrollments/1.json
  def update
    @enrollment = Enrollment.find(params[:id])

    if current_user.admin === true && @enrollment.update(enrollment_params)
      head :no_content
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    if current_user.admin === true && @enrollment.destroy
      head :no_content
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  def findEnrollmentId
    @enrollment = Enrollment.select { |enrollment| enrollment if enrollment.profile_id.to_s == params[:profile_id] and enrollment.cohort_id.to_s == params[:cohort_id]  }
    if current_user.admin === true
      render json: @enrollment
    else
      render json: @enrollment.errors, status: :unprocessable_entity
    end
  end

  private

    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    def enrollment_params
      params.require(:enrollment).permit(:profile_id, :cohort_id, :status)
    end
end
