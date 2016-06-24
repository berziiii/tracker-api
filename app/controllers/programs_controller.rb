class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:index, :create, :show, :update, :destroy]

  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.all

    render json: @programs
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    render json: @program
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(program_params)

    if @program.save
      render json: @program, status: :created, location: @program
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /programs/1
  # PATCH/PUT /programs/1.json
  def update
    @program = Program.find(params[:id])

    if @program.update(program_params)
      head :no_content
    else
      render json: @program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program.destroy

    head :no_content
  end

  private

    def set_program
      @program = Program.find(params[:id])
    end

    def program_params
      params.require(:program).permit(:title)
    end
end
