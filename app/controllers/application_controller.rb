class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2.0
    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/ran_results.html.erb" })
  end

  def random_form
    render({ :template => "calculation_templates/rand_input.html.erb" })
  end

  def square_root_form
    render ({ :template => "calculation_templates/squared_input.html.erb" })
  end

  def square_root_results
    @number = params.fetch("squareroot").to_f
    @square_root = Math.sqrt(@number)
    render ({ :template => "calculation_templates/squared_results.html.erb" })
  end

  def payment_form
    render ({ :template => "calculation_templates/payment_input.html.erb" })
  end
end
