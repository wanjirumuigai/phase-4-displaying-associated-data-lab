class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user, only: [:id, :username, :city], include: {
      items: {
        except: [:created_at, :updated_at,:user_id]
      }
    }
  end
end
