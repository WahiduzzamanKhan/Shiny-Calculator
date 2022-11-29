# defining the server logics
server <- function(output, input, session) {
  ################ reactive values to hold the current state of the calculator ################
  operationStack <- reactiveVal("")
  historyStack <- reactiveValues(
    operatoion = as.character(),
    result = as.character(),
    pointer = 0
  )
  displayOperation <- reactiveVal("")
  displayResult <- reactiveVal("")
  reset <- reactiveVal(FALSE)

  ################ listening to button clicks ################
  observeEvent(
    input$one,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
      if(reset()){
        operationStack( "  +  ")
        displayOperation("  <span class = 'text-symbol'>+</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  +  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'text-symbol'>+</span>  "))
      }
    }
  )

  observeEvent(
    input$minus,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
      if(reset()){
        operationStack("  -  ")
        displayOperation("  <span class = 'text-symbol'>-</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  -  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'text-symbol'>-</span>  "))
      }
    }
  )

  observeEvent(
    input$multiply,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
      if(reset()){
        operationStack("  *  ")
        displayOperation("  <span class = 'text-symbol'>×</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  *  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'text-symbol'>×</span>  "))
      }
    }
  )

  observeEvent(
    input$divide,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
      if(reset()){
        operationStack("  /  ")
        displayOperation("  <span class = 'text-symbol'>÷</span>  ")
        reset(FALSE)
      } else {
        operationStack(paste0(operationStack(), "  /  "))
        displayOperation(paste0(displayOperation(), "  <span class = 'text-symbol'>÷</span>  "))
      }
    }
  )

  observeEvent(
    input$equal,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
      tryCatch(
        {
          result <- format(eval(parse(text = operationStack())), big.mark = ",", scientific = FALSE)
          displayResult(result)
          if(length(historyStack$operations) < 10) {
            historyStack$operations <- append(historyStack$operations, displayOperation())
            historyStack$result <- append(historyStack$result, result)
          } else {
            historyStack$operations <- append(historyStack$operations[2:9], displayOperation())
            historyStack$result <- append(historyStack$result[2:9], result)
          }
        },
        error = function(e){
          result <- "Syntax Error!"
          displayResult(result)
          if(length(historyStack$operations) < 10) {
            historyStack$operations <- append(historyStack$operations, displayOperation())
            historyStack$result <- append(historyStack$result, result)
          } else {
            historyStack$operations <- append(historyStack$operations[2:9], displayOperation())
            historyStack$result <- append(historyStack$result[2:9], result)
          }
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest
    }
  )

  observeEvent(
    input$history,
    {
      operationStack("")
      displayOperation("")
      displayResult("")
      historyStack$pointer <- length(historyStack$operations)
      output$history <- renderUI({
        tagList(
          uiOutput("historyDisplay"),
          div(
            class = "history-nav",
            actionButton(inputId = "historyPrev", label = NULL, icon = icon("caret-left"), class = "history-nav-buttons"),
            actionButton(inputId = "historyNext", label = NULL, icon = icon("caret-right"), class = "history-nav-buttons")
          )
        )
      })
    }
  )

  observeEvent(
    input$historyPrev,
    {
      historyStack$pointer <- ifelse(historyStack$pointer-1 != 0, historyStack$pointer-1, historyStack$pointer)
      output$historyDisplay <- renderUI({
        tagList(
          HTML(historyStack$operations[historyStack$pointer]),
          HTML("  <span class = 'text-symbol'>=</span>  "),
          HTML(historyStack$result[historyStack$pointer])
        )
      })
    }
  )

  observeEvent(
    input$historyNext,
    {
      historyStack$pointer <- ifelse(historyStack$pointer+1 <= length(historyStack$operations), historyStack$pointer+1, historyStack$pointer)
      output$historyDisplay <- renderUI({
        tagList(
          HTML(historyStack$operations[historyStack$pointer]),
          HTML("  <span class = 'text-symbol'>=</span>  "),
          HTML(historyStack$result[historyStack$pointer])
        )
      })
    }
  )

  ################ rendering UI ################
  output$historyDisplay <- renderUI({
    tagList(
      HTML(historyStack$operations[historyStack$pointer]),
      HTML("  <span class = 'text-symbol'>=</span>  "),
      HTML(historyStack$result[historyStack$pointer])
    )
  })

  output$operation <- renderUI({
    HTML(displayOperation())
  })

  output$result <- renderUI({
    HTML(displayResult())
  })
}
