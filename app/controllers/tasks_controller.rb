class TasksController < ApplicationController
  before_filter :get_site

  def index
    @complete_tasks = @site.complete_tasks
    @incomplete_tasks = @site.incomplete_tasks
    @task = @site.tasks.build
  end
  def show
    @task = Task.find(params[:id])
  end
  def create
    @task = @site.tasks.build(params[:task])
    if @task.save
      flash[:notice] = "Task created"
    else
      flash[:error] = "Task not created"
    end
    redirect_to site_tasks_path(@site)
  end
end
