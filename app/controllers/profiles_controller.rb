#
class ProfilesController < ProtectedController
  before_action :set_profile, only: [:set, :update, :destroy]
  # before_action :authenticate, only: [:index, :create, :show, :update,
  # :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    if current_user.admin === true
      @profiles = Profile.all
      render json: @profiles
    elsif current_user.admin === false
      @profile = current_user.profile
      render json: @profile
    else
      render json: @profiles.errors, status: :unprocessable_entity
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if current_user.admin === true
      @profile = Profile.find(params[:id])
      render json: @profile
    elsif current_user.admin === false
      @profile = current_user.profile
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if current_user.profile.id === params[:id] && @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    if current_user.profile.id === params[:id] && @profile.destroy
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :gender, :phone_number, :github_username, :user_id)
    end
end
