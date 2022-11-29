# defining the server logics
server <- function(output, input, session) {
  ################ reactive values to hold the current state of the calculator ################

  operationStack <- reactiveVal("") # tracks the current operation

  # store all the performed operation to be reviewed later
  historyStack <- reactiveValues(
    operatoion = as.character(), # store the operations
    result = as.character(), # store the results
    pointer = 0 # track the point in history
  )

  displayOperation <- reactiveVal("") # operation section of the display
  displayResult <- reactiveVal("") # result section of the display

  reset <- reactiveVal(FALSE) # clear the display when reset is TRUE

  ################ listening to button clicks ################
  observeEvent(
    input$one,
    {
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # if reset was TRUE, recreate the operation and display stack from beginning and set reset to FALSE
      # else append to the current stack
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

      # when the "=" button is pressed, evaluate the operationStack
      # if operation is valid, display result and then add the operation and the result to the historyStack
      # else display "Syntax Error" and then add the operation and the result to the historyStack
      # lastly, set the reset to TRUE, so that next key press clears the display and restarts the operationStack
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
      output$history <- NULL # hide history if it was visible
      historyStack$pointer <- length(historyStack$operations) # reset history pointer to the latest

      # reset the display and operation stacks
      operationStack("")
      displayOperation("")
      displayResult("")
    }
  )

  observeEvent(
    input$history,
    {
      # reset the display and operation stacks
      operationStack("")
      displayOperation("")
      displayResult("")

      # set the history pointer to the latest
      historyStack$pointer <- length(historyStack$operations)

      # render the history view
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
      # set history pointer to one step back unless it is already the oldest
      historyStack$pointer <- ifelse(historyStack$pointer-1 != 0, historyStack$pointer-1, historyStack$pointer)

      # update the history view with new pointer
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
      # set history pointer to one step back unless it is already the latest
      historyStack$pointer <- ifelse(historyStack$pointer+1 <= length(historyStack$operations), historyStack$pointer+1, historyStack$pointer)

      # update the history view with new pointer
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
