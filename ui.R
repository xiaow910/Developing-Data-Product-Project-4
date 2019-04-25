#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
        
        titlePanel("KG/LB and CM/INCH Converter"),
        
        sidebarLayout(
                sidebarPanel( 
                        
                        helpText("This application convert kg to lb, cm to inch"),            
                        br(),           
                        numericInput("int_weight_kg",label = h4("Input weight in KG"),0),  
                        br(),
                        numericInput("int_height_cm",label = h4("Input length in CM"),0),  
                        br(),
                        
                        br(),   
                        actionButton("FindResult", label = "Convert")    
                        
                        
                ),
                mainPanel
                (
                        tabsetPanel
                        (
                                tabPanel("Find out your result",
                                         p(h4("Input Values")),
                                         textOutput("current_weight"),
                                         textOutput("current_height"),
                                         
                                         br(),
                                         p(h4("Converted Values")),
                                         textOutput("result1"),
                                         textOutput("result2")
                                         
                                ),
                                tabPanel(
                                        "Formula",
                                        p(h4("kg/lb, cm/inch Converter")),
                                        br(),
                                        helpText("1 kg = 2.20462 lb"),
                                        helpText("1 cm = 0.393701 inch")
                                        
                                )
                                
                                
                        )
                )
        )
))