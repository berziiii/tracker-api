class AttendencesController < ProtectedController
  before_action :set_attendence, only: [:show, :update, :destroy]

  # GET /attendences
  # GET /attendences.json
  def index
    if current_user.admin
      @attendences = Attendence.all
      render json: @attendences
    elsif !current_user.admin
      @attendences = current_user.profile.attendences
      render json: @attendences
    else
      render json: @attendences.errors, status: :unprocessable_entity
    end
  end

  # GET /attendences/1
  # GET /attendences/1.json
  def show
    if current_user.admin === true
      render json: @attendence
    elsif current_user.admin === false
      @attendence = current_user.profile.attendence.find(params[:id])
      render json: @attendence
    else
      render json: @attendence.errors, status: :unprocessable_entity
    end
  end

  # POST /attendences
  # POST /attendences.json
  def create
    if current_user.admin === true
      @attendence = Attendence.new(attendence_params)

      if @attendence.save
        render json: @attendence, status: :created, location: @attendence
      else
        render json: @attendence.errors, status: :unprocessable_entity
      end

    else
      render json: @attendence.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /attendences/1
  # PATCH/PUT /attendences/1.json
  def update
    if current_user.admin === true
      @attendence = Attendence.find(params[:id])

      if @attendence.update(attendence_params)
        head :no_content
      else
        render json: @attendence.errors, status: :unprocessable_entity
      end
    else
      render json: @attendence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attendences/1
  # DELETE /attendences/1.json
  def destroy
    if current_user.admin === true
      @attendence.destroy

      head :no_content
    else
      render json: @attendence.errors, status: :unprocessable_entity
    end
  end

  private

    def set_attendence
      @attendence = Attendence.find(params[:id])
    end

    def attendence_params
      params.require(:attendence).permit(:day, :option, :note, :profile_id)
    end
end
