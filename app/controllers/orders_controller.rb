class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @task = Task.find(params[:task_id])
    @order = Order.new(task: @task, user: current_user)
    if @order.save
      redirect_to tasks_path, notice: 'La tarea ha sido completada'
    else
      redirect_to tasks_path, alert: 'La tarea no ha sido completada'
    end
    
  end

  def index
  @orders = current_user.orders
  end
end
