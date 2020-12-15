library(shiny)
shinyServer(function(input, output) {
    output$pred2<- renderText({
        
        
        calc_sum <- reactive({
            (input$numeric*1.3) / (input$slider1^2.5)
        })
        
        #....
        
      output$pred2 <- renderText({
            calc_sum()
        })  
            
        
        })
    })
