  
  def measure
    start_time=Time.now
    yield
    end_time=Time.now
    elapsed_time=end_time-start_time
  end
