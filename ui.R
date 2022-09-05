# defining the UI elements
htmlTemplate(
  filename = "template.html",
  buttonAC = actionButton(inputId = "ac", label = "AC", class = "keypad-buttons color2"),
  buttonMemory = actionButton(inputId = "memory", label = "M±", class = "keypad-buttons color2"),
  buttonPercent = actionButton(inputId = "percent", label = "%", class = "keypad-buttons color2"),
  buttonDivide = actionButton(inputId = "divide", label = "÷", class = "keypad-buttons color1"),
  buttonSeven = actionButton(inputId = "seven", label = "7", class = "keypad-buttons"),
  buttonEight = actionButton(inputId = "eight", label = "8", class = "keypad-buttons"),
  buttonNine = actionButton(inputId = "nine", label = "9", class = "keypad-buttons"),
  buttonMultiply = actionButton(inputId = "multiply", label = "×", class = "keypad-buttons color1"),
  buttonFour = actionButton(inputId = "four", label = "4", class = "keypad-buttons"),
  buttonFive = actionButton(inputId = "five", label = "5", class = "keypad-buttons"),
  buttonSix = actionButton(inputId = "six", label = "6", class = "keypad-buttons"),
  buttonMinus = actionButton(inputId = "minus", label = "-", class = "keypad-buttons color1"),
  buttonOne = actionButton(inputId = "one", label = "1", class = "keypad-buttons"),
  buttonTwo = actionButton(inputId = "two", label = "2", class = "keypad-buttons"),
  buttonThree = actionButton(inputId = "three", label = "3", class = "keypad-buttons"),
  buttonPlus = actionButton(inputId = "plus", label = "+", class = "keypad-buttons color1"),
  buttonHistory = actionButton(inputId = "history", label = "", icon = icon("rotate-left"), class = "keypad-buttons"),
  buttonZero = actionButton(inputId = "zero", label = "0", class = "keypad-buttons"),
  buttonPoint = actionButton(inputId = "point", label = ".", class = "keypad-buttons"),
  buttonEqual = actionButton(inputId = "equal", label = "=", class = "keypad-buttons color1")
)
