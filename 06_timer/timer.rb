class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def padded(int)
    if int < 10
      '0' + int.to_s
    else
      int.to_s
    end
  end

  def seconds
    @seconds
  end

  def seconds=(int)
    @seconds = int
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - (hours * 3600)) / 60
    seconds = (@seconds - (hours * 3600)) - (minutes * 60)
    time = padded(hours) + ':'
    time += padded(minutes) + ':'
    time += padded(seconds)
  end
end
