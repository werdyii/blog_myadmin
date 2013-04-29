class TasksController < ApplicationController
	befors_filter :load_project 

	def new
		@task = Task.new
	end

	def create
		@task = @project.tasks.build params[:task]

		if @task.save 
			redirect_to project_url(@project)
		else
			render :new
		end
	end

	def edit
		@task = @project.tasks.find params[:id]
	end

	def update
		@task = @project.tasks.find params[:id]
		
		if @task.update_attributes params[:task]
			redirect_to project_url(@project)
		else
			render :edit
		end		
	end

	def destroy
		@task = @project.tasks.find params[:id]
		@task.destroy
		redirect_to project_url(@project)
	end

	private
	def load_project
		@project = Project.find params[:project_id]		
	end
end
