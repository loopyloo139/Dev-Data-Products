library(shiny)
shinyUI(fluidPage(
    titlePanel("Body Mass Indicator"),
    sidebarLayout(
        sidebarPanel(
            h2("Enter your weight and height"),
            
            h1(numericInput("numeric", "Enter weight in kilos", 
                         value = 75, min = 30, max = 150, step = 1)),
            h1( "Enter height in metres"),
            sliderInput("slider1", "Slide Me!", 1.3, 2.5, 0)
        ),
        mainPanel(
            h1("BMI score"),
            h1(textOutput("pred2"),
            
            h2("A BMI score between 18 and 24.9 is considered healthy"),
            
            
            
            h5("*App developed for Coursera Project not for healthcare use"))
        )
    )
))