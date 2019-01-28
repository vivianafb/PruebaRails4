class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :total_completed, only: [:index, :show]

  def index
    @orders = Order.all
    @task = Task.all  
  end

  def show
    @counter = 1
    @task = Task.find(params[:id])
  end

  def total_completed
    if signed_in?
      @count = 0
      @orders = Order.all
      @total_completed = @orders.where(user_id: current_user.id)
      @total_completed.each do |total|
        @count += 1 if total.completed == true
      end
   end
  end
end
