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

  COLOR1 = "\u001b[38;5;32m"
  COLOR2 = "\u001b[38;5;35m"
  COLOR3 = "\u001b[38;5;40m"
  COLOR4 = "\u001b[38;5;45m"
  COLOR5 = "\u001b[38;5;50m"
  COLOR6 = "\u001b[38;5;55m"
  COLOR7 = "\u001b[38;5;55m"
  COLOR8 = "\u001b[38;5;55m"

  COLORS = [COLOR1, COLOR2, COLOR3, COLOR4, COLOR5, COLOR6, COLOR7, COLOR8]
end
