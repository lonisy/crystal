struct Number
  def step(limit, by = 1)
    x = self
    if by > 0
      while x <= limit
        yield x
        x += by
      end
    elsif by < 0
      while x >= limit
        yield x
        x += by
      end
    end
    self
  end

  def abs
    self < 0 ? -self : self
  end

  def divmod(number)
    {self / number, self % number}
  end

  def <=>(other)
    self > other ? 1 : (self < other ? -1 : 0)
  end
end
