class ProgramsController < ProtectedController
  before_action :set_program, only: [:show, :update, :destroy]
  # before_action :authenticate

  # GET /programs
  # GET /programs.json
  def index
    if current_user.admin === true
      @programs = Program.all
      render json: @programs
    else
      render json: @programs.errors, status: :unprocessable_entity
    end
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    if current_user.admin === true
      render json: @program
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(program_params)

    if current_user.admin === true && @program.save
      render json: @program, status: :created, location: @program
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /programs/1
  # PATCH/PUT /programs/1.json
  def update
    @program = Program.find(params[:id])

    if current_user.admin === true && @program.update(program_params)
      head :no_content
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    if current_user.admin
      @program.destroy
      head :no_content
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  private

    def set_program
      @program = Program.find(params[:id])
    end

    def program_params
      params.require(:program).permit(:title)
    end
end
