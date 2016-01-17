class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy, :components]

  def index
    @people = Person.all

    respond_with @people
  end

  def show
    respond_with @person
  end

  def create
    @person = Person.new person_params
  end

  def update

  end

  def destroy

  end

  def components
    respond_with @person.components
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name)
    end
end
