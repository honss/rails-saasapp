class BugsController < ApplicationController
  def new
    @bug = Bug.new
  end
  def create
    @bug = Bug.new(bug_params)
    if @bug.save
      redirect_to new_bug_path, notice: 'Bug report sent.'
    else
      redirect_to new_bug_path, notice: 'Bug report failed, please try again'
    end
  end
  
  private
    def bug_params
      params.require(:bug).permit(:title, :description)
    end
end
