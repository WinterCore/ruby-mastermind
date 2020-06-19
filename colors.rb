class Backgrounds
  def self.render(str, color)
    color + str + "\e[0m"
  end

  BLACK   = "\e[40m"
  RED     = "\e[41m"
  GREEN   = "\e[42m"
  BROWN   = "\e[43m"
  BLUE    = "\e[44m"
  MAGENTA = "\e[45m"
  CYAN    = "\e[46m"
  GRAY    = "\e[47m"
end

class Colors
  def self.render(str, color)
    color + str + "\u001b[0m"
  end

  RED = "\u001b[38;5;9m"
  GREEN = "\u001b[38;5;10m"
  BLUE = "\u001b[38;5;12m"
  MAGENTA = "\u001b[38;5;5m"
  BROWN = "\u001b[38;5;3m"
  PINK = "\u001b[38;5;13m"
  CYAN = "\u001b[38;5;14m"
  YELLOW = "\u001b[38;5;11m"

  COLORS = [RED, GREEN, BLUE, MAGENTA, BROWN, PINK, CYAN, YELLOW]
end
