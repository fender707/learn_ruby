  
  def measure(count=1)
    start_time = Time.now
    itr=0
    begin
      yield
      itr+=1
    end while itr<count
    end_time = Time.now
    elapsed_time=end_time-start_time
    average_time=elapsed_time/count
  end
