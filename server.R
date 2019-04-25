#
# This is the server logic of a Shiny web application. You can run the 
# application by typing runApp().
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server formula required to perform the conversion
shinyServer(function(input, output) {
        
        values <- reactiveValues()
        
        observe({
                input$FindResult
                values$result1 <- isolate({
                        input$int_weight_kg*2.20462
                })
                values$result2 <- isolate({
                        input$int_height_cm*0.393701
                })
        })
        
        
        
        # Display your current values
        output$current_weight <- renderText({
                input$FindResult
                paste(" Weight in KG : ", isolate(input$int_weight_kg))
        })
        
        output$current_height <- renderText({
                input$FindResult
                paste("Length in CM :", isolate(input$int_height_cm))
        })
        
        
        
        
        
        # Display your converted values
        
        output$result1 <- renderText({
              
                        paste("Weight in LB:", values$result1)
        })
        output$result2 <- renderText({
                    
                        paste("Length in Inch:", values$result2)
                })
        })
        
        
        
        
        
        
