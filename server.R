# defining the server logics
server <- function(output, input, session) {
  ################ reactive values to hold the current state of the calculator ################
  operationStack <- reactiveVal("")
  displayOperation <- reactiveVal("")
  displayResult <- reactiveVal("")
  reset <- reactiveVal(FALSE)

  ################ listening to button clicks ################
  observeEvent(
    input$one,
    {
      if(reset()){
        operationStack("1")
        displayOperation("1")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "1"))
        displayOperation(paste0(displayOperation(), "1"))
      }
    }
  )

  observeEvent(
    input$two,
    {
      if(reset()){
        operationStack("2")
        displayOperation("2")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "2"))
        displayOperation(paste0(displayOperation(), "2"))
      }
    }
  )

  observeEvent(
    input$three,
    {
      if(reset()){
        operationStack("3")
        displayOperation("3")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "3"))
        displayOperation(paste0(displayOperation(), "3"))
      }
    }
  )

  observeEvent(
    input$four,
    {
      if(reset()){
        operationStack("4")
        displayOperation("4")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "4"))
        displayOperation(paste0(displayOperation(), "4"))
      }
    }
  )

  observeEvent(
    input$five,
    {
      if(reset()){
        operationStack("5")
        displayOperation("5")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "5"))
        displayOperation(paste0(displayOperation(), "5"))
      }
    }
  )

  observeEvent(
    input$six,
    {
      if(reset()){
        operationStack("6")
        displayOperation("6")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "6"))
        displayOperation(paste0(displayOperation(), "6"))
      }
    }
  )

  observeEvent(
    input$seven,
    {
      if(reset()){
        operationStack("7")
        displayOperation("7")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "7"))
        displayOperation(paste0(displayOperation(), "7"))
      }
    }
  )

  observeEvent(
    input$eight,
    {
      if(reset()){
        operationStack("8")
        displayOperation("8")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "8"))
        displayOperation(paste0(displayOperation(), "8"))
      }
    }
  )

  observeEvent(
    input$nine,
    {
      if(reset()){
        operationStack("9")
        displayOperation("9")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "9"))
        displayOperation(paste0(displayOperation(), "9"))
      }
    }
  )

  observeEvent(
    input$zero,
    {
      if(reset()){
        operationStack("0")
        displayOperation("0")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "0"))
        displayOperation(paste0(displayOperation(), "0"))
      }
    }
  )

  observeEvent(
    input$point,
    {
      if(reset()){
        operationStack(".")
        displayOperation(".")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "."))
        displayOperation(paste0(displayOperation(), "."))
      }
    }
  )

  observeEvent(
    input$plus,
    {
      if(reset()){

        operationStack( "  +  ")
        displayOperation("  <span class = 'color1'>+</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  +  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'color1'>+</span>  "))
      }
    }
  )

  observeEvent(
    input$minus,
    {
      if(reset()){
        operationStack("  -  ")
        displayOperation("  <span class = 'color1'>-</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  -  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'color1'>-</span>  "))
      }
    }
  )

  observeEvent(
    input$multiply,
    {
      if(reset()){
        operationStack("  *  ")
        displayOperation("  <span class = 'color1'>×</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  *  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'color1'>×</span>  "))
      }
    }
  )

  observeEvent(
    input$divide,
    {
      if(reset()){
        operationStack("  /  ")
        displayOperation("  <span class = 'color1'>÷</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  /  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'color1'>÷</span>  "))
      }
    }
  )

  observeEvent(
    input$equal,
    {
      tryCatch(
        displayResult(format(eval(parse(text = operationStack())), big.mark = ",", scientific = FALSE)),
        error = function(e){
          displayResult("Syntax Error!")
        }
      )
      reset(TRUE)
    }
  )

  observeEvent(
    input$ac,
    {
      operationStack("")
      displayOperation("")
      displayResult("")
    }
  )

  ################ rendering UI ################
  output$operation <- renderUI({
    HTML(displayOperation())
  })

  output$result <- renderUI({
    HTML(displayResult())
  })
}
