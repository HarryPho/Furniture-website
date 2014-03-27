class EmployeeSkillsController < ApplicationController
  # GET /employee_skills
  # GET /employee_skills.xml
  def index
    @employee_skills = EmployeeSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employee_skills }
    end
  end

  # GET /employee_skills/1
  # GET /employee_skills/1.xml
  def show
    @employee_skill = EmployeeSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employee_skill }
    end
  end

  # GET /employee_skills/new
  # GET /employee_skills/new.xml
  def new
    @employee_skill = EmployeeSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employee_skill }
    end
  end

  # GET /employee_skills/1/edit
  def edit
    @employee_skill = EmployeeSkill.find(params[:id])
  end

  # POST /employee_skills
  # POST /employee_skills.xml
  def create
    @employee_skill = EmployeeSkill.new(params[:employee_skill])

    respond_to do |format|
      if @employee_skill.save
        format.html { redirect_to(@employee_skill, :notice => 'EmployeeSkill was successfully created.') }
        format.xml  { render :xml => @employee_skill, :status => :created, :location => @employee_skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employee_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employee_skills/1
  # PUT /employee_skills/1.xml
  def update
    @employee_skill = EmployeeSkill.find(params[:id])

    respond_to do |format|
      if @employee_skill.update_attributes(params[:employee_skill])
        format.html { redirect_to(@employee_skill, :notice => 'EmployeeSkill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employee_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_skills/1
  # DELETE /employee_skills/1.xml
  def destroy
    @employee_skill = EmployeeSkill.find(params[:id])
    @employee_skill.destroy

    respond_to do |format|
      format.html { redirect_to(employee_skills_url) }
      format.xml  { head :ok }
    end
  end
end
