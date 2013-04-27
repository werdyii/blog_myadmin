class TasksController < ApplicationController
	def new
		@project = Project.find params[:project_id]
		@task = Task.new
	end
	def create
		@project = Project.find params[:project_id]
		@task = @project.tasks.build params[:task]

		if @task.save 
			redirect_to project_url(@project)
		else
			render :new
		end
	end
	def edit
		@project = Project.find params[:project_id]
		@task = @project.tasks.find params[:id]
	end
	def update
		@project = Project.find params[:project_id]
		@task = @project.tasks.find params[:id]
		
		if @task.update_attributes params[:task]
			redirect_to project_url(@project)
		else
			render :edit
		end		
	end
	def destroy
		@project = Project.find params[:project_id]
		@task = @project.tasks.find params[:id]
		@task.destroy
		redirect_to project_url(@project)
	end

end
