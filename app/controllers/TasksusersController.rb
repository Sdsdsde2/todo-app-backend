class TasksusersController < ApplicationController
    def index
        tasksuser = TasksUser.all
        render json: tasksuser
    end

    def show
        tasksuser = TasksUser.find_by(id: params[:id])
        render json: tasksuser
    end

    def create
        # byebug
        tasksuser = TasksUser.create(
            user_id: params[:user_id],
            task_id: params[:task_id]
        )
        render json: tasksuser
    end
    
    def destroy
        tasksuser = TasksUser.find_by(id: params[:id])
        TasksUser.destroy(tasksuser.id)
    end
end
