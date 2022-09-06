# defining the server logics
server <- function(output, input, session) {
  ################ reactive values to hold the current state of the calculator ################
  operationStack <- reactiveVal("")
  displayOperation <- reactiveVal("")
  displayResult <- reactiveVal("")

  ################ listening to button clicks ################
  observeEvent(
    input$one,
    {
      operationStack(paste0(operationStack(), "1"))
      displayOperation(paste0(displayOperation(), "1"))
    }
  )

  observeEvent(
    input$two,
    {
      operationStack(paste0(operationStack(), "2"))
      displayOperation(paste0(displayOperation(), "2"))
    }
  )

  observeEvent(
    input$three,
    {
      operationStack(paste0(operationStack(), "3"))
      displayOperation(paste0(displayOperation(), "3"))
    }
  )

  observeEvent(
    input$four,
    {
      operationStack(paste0(operationStack(), "4"))
      displayOperation(paste0(displayOperation(), "4"))
    }
  )

  observeEvent(
    input$five,
    {
      operationStack(paste0(operationStack(), "5"))
      displayOperation(paste0(displayOperation(), "5"))
    }
  )

  observeEvent(
    input$six,
    {
      operationStack(paste0(operationStack(), "6"))
      displayOperation(paste0(displayOperation(), "6"))
    }
  )

  observeEvent(
    input$seven,
    {
      operationStack(paste0(operationStack(), "7"))
      displayOperation(paste0(displayOperation(), "7"))
    }
  )

  observeEvent(
    input$eight,
    {
      operationStack(paste0(operationStack(), "8"))
      displayOperation(paste0(displayOperation(), "8"))
    }
  )

  observeEvent(
    input$nine,
    {
      operationStack(paste0(operationStack(), "9"))
      displayOperation(paste0(displayOperation(), "9"))
    }
  )

  observeEvent(
    input$zero,
    {
      operationStack(paste0(operationStack(), "0"))
      displayOperation(paste0(displayOperation(), "0"))
    }
  )

  observeEvent(
    input$plus,
    {
      operationStack(paste0(operationStack(), "  +  "))
      displayOperation(paste0(displayOperation(), "  <span class = 'color1'>+</span>  "))
    }
  )

  observeEvent(
    input$minus,
    {
      operationStack(paste0(operationStack(), "  -  "))
      displayOperation(paste0(displayOperation(), "  <span class = 'color1'>-</span>  "))
    }
  )

  observeEvent(
    input$multiply,
    {
      operationStack(paste0(operationStack(), "  *  "))
      displayOperation(paste0(displayOperation(), "  <span class = 'color1'>×</span>  "))
    }
  )

  observeEvent(
    input$divide,
    {
      operationStack(paste0(operationStack(), "  /  "))
      displayOperation(paste0(displayOperation(), "  <span class = 'color1'>÷</span>  "))
    }
  )

  observeEvent(
    input$equal,
    {
      displayResult(format(eval(parse(text = operationStack())), big.mark = ",", scientific = FALSE))
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
