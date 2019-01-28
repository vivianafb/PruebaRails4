class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @orders = current_user.orders
    @orders = Order.all
    @task = Task.all   
  end
  
  def create
    @task = Task.find(params[:task_id])
    @order = Order.new(task: @task, user: current_user, completed: true, completed_at: Time.now)
    if @order.save
      redirect_to tasks_path, notice: 'La tarea ha sido completada'
    else
      redirect_to tasks_path, alert: 'La tarea no ha sido completada'
    end
    
  end

  def update
    @order = Order.find(params[:id])
    if @order.completed == true
      @order.update(completed: false, completed_at: nil)
    else
      @order.update(completed: true, completed_at: Time.now)
    end
    redirect_to tasks_path
  end
end
