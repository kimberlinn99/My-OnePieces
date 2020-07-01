class OnepiecesController < ApplicationController
  # Prevent invalid authentication token
  skip_before_action :verify_authenticity_token

  def index
    onepieces = Onepiece.all
    render json: {
      status: "SUCCESS",
      data: onepieces
    }
  end

  def create
    onepiece = Onepiece.new(onepiece_params)
    if onepiece.save
      render json: {
        status: "SUCCESS",
        message: "create #{onepiece.character}  successfully",
        data: onepiece
      }
    else
      render json: {
        status: "ERROR",
        message: "Fail to create this character"
      }
    end
  end

  def show
    onepiece = Onepiece.find(params[:id])
    render json: {
      status: "SUCCESS",
      data: onepiece
    }
  end

  def update
    onepiece = Onepiece.find(params[:id])
    if onepiece.update(onepiece_params)
      render json: {
        status: "SUCCESS",
        message: "Update #{onepiece.character} info successfully",
        data: onepiece
      }
    else
      render json: {
        status: "ERROR",
        message: "Fail to update #{onepiece.character}. Please fill out all fields."
      }
    end
  end

  def destroy
    onepiece = Onepiece.find(params[:id])
    onepiece.destroy
    render json: {
      status: "SUCCESS",
      message: "delete this charater successfully",
    }
  end

  private def onepiece_params
    params.permit(:character, :sea, :island, :location, :quote, :akuma_no_mi)
  end
end
