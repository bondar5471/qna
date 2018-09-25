# frozen_string_literal: true

# def sqrt(value)
#  puts sqrt
# rescue StandardError
#  puts "Неверное значение"
# end
#
# sqrt(-1)

def connect_to
  # ...
  raise 'Connect Error'
end

try = 0
begin
  connect_to
rescue RuntimeError
  try += 1
  # puts "Проверьте интернет соединение"
  retry if try < 3
ensure
  puts "Количество попыток #{try}"
end

class TrainsController < ApplicationController
  before_action :set_train, only: %i[show edit update destroy]

  def index
    @trains = Train.all
  end

  def show; end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)

    if @train.save
      redirect_to @train, notice: 'Обьект поезд создан.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @train.update(train_params)
      redirect_to @train, notice: 'Обьект поезд обновлен.'
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to trains_path, notice: 'Обьект поезд удален.'
  end

  private

  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:number)
  end
end
