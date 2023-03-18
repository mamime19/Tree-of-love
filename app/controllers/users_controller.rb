class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @lovetree=@user.lovetree
  end
  def setting
    @user=User.find(params[:id])
  end
end
