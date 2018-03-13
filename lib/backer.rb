class Backer
attr_accessor :name, :backed_projects, :title 

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if @backed_projects.include?(project)
    else
        @backed_projects << project
        project.add_backer(self)
    end
  end
end
