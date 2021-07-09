class TasksController < ApplicationController
    def index
        @tasks = Task.all
        render json: {tasks: @tasks}
    end

    def new 
        @task = Task.new
    end

    def create
        @task = Task.create!(
            task_title: params[:task_title],
            task_info: params[:task_info],
            task_priority: params[:task_priority]
        )

        if @task
            render json: {status: :created}
        else
            render json: { status: 501 }
        end
    end

    def show
        @task = Task.find(params[:id])
        render json: {task: @task}
    end
end