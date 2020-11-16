class ApplicationController < ActionController::Base
  def times_to_array(params)
    val = '['
    # variable location: models/concerns/filter.rb
    $days.each do |day|
      start = params[:employee][:times]["#{day}"][:start]
      stop = params[:employee][:times]["#{day}"][:end]

      unless start == '' and stop == ''
        val.length > 1 ? val += ', ' : ''
        val += "#{day} [#{start}, #{stop}]"
        day == $days.last ? val += ']' : ''
      end
    end
    val
  end

end
