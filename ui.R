# defining the UI elements
htmlTemplate(
  filename = "template.html",

  history = uiOutput("history"),

  operation = uiOutput("operation"),
  result = uiOutput("result"),

  buttonAC = actionButton(inputId = "ac", label = "AC", class = "function-button"),
  buttonDelete = actionButton(inputId = "delete", label = NULL, icon = icon("delete-left"), class = "symbol-button"),
  buttonPercent = actionButton(inputId = "percent", label = "%", class = "function-button"),
  buttonDivide = actionButton(inputId = "divide", label = "÷", class = "symbol-button"),
  buttonSeven = actionButton(inputId = "seven", label = "7", class = "number-button"),
  buttonEight = actionButton(inputId = "eight", label = "8", class = "number-button"),
  buttonNine = actionButton(inputId = "nine", label = "9", class = "number-button"),
  buttonMultiply = actionButton(inputId = "multiply", label = "×", class = "symbol-button"),
  buttonFour = actionButton(inputId = "four", label = "4", class = "number-button"),
  buttonFive = actionButton(inputId = "five", label = "5", class = "number-button"),
  buttonSix = actionButton(inputId = "six", label = "6", class = "number-button"),
  buttonMinus = actionButton(inputId = "minus", label = "-", class = "symbol-button"),
  buttonOne = actionButton(inputId = "one", label = "1", class = "number-button"),
  buttonTwo = actionButton(inputId = "two", label = "2", class = "number-button"),
  buttonThree = actionButton(inputId = "three", label = "3", class = "number-button"),
  buttonPlus = actionButton(inputId = "plus", label = "+", class = "symbol-button"),
  buttonHistory = actionButton(inputId = "historyBtn", label = "", icon = icon("rotate-left"), class = "function-button"),
  buttonZero = actionButton(inputId = "zero", label = "0", class = "number-button"),
  buttonPoint = actionButton(inputId = "point", label = ".", class = "number-button"),
  buttonEqual = actionButton(inputId = "equal", label = "=", class = "symbol-button")
)
