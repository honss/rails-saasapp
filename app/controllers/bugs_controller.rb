class BugsController < ApplicationController
  def new
    @bug = Bug.new
  end
  def create
    @bug = Bug.new(bug_params)
    if @bug.save
      flash[:success] = 'Bug report sent.'
      redirect_to new_bug_path
    else
      flash[:danger] = @bug.errors.full_messages.join(", ")
      redirect_to new_bug_path
    end
  end
  
  private
    def bug_params
      params.require(:bug).permit(:title, :description)
    end
end
