library(shiny)

shinyServer(
  function(input, output){
    rate_1 <- reactive(round({as.numeric(input$c_salary)/2080}, digits = 2))
    output$wph_1 <- renderText({rate_1()})
    
    x <- reactive({as.numeric(input$c_salary)*(1+as.numeric(input$pct_inc)/100)})
    
    oc_commute_days<- renderText(sum(as.numeric({input$c_commute_days})))
    c_hpy_commute <- reactive( (as.numeric({input$commute_1})/60)*(as.numeric(oc_commute_days())*52))
    rate_2 <- reactive({as.numeric(input$c_salary)/(2080+{c_hpy_commute()})})
    output$wph_2 <- renderText(round({rate_2()},digits=2))
    
    
    on_commute_days<- renderText(sum(as.numeric({input$n_commute_days})))    
    n_hpy_commute <- reactive( (as.numeric({input$commute_2})/60)*(as.numeric(on_commute_days())*52))
    rate_3 <- reactive({as.numeric({x()})/(2080+{n_hpy_commute()})})
    output$wph_3 <- renderText(round({rate_3()}, digits = 2))    
    
    
    rate_4 <- reactive(round(({rate_3()}-{rate_2()})/{rate_2()}, digits = 4)*100)
    
    output$wph_4 <- renderText({rate_4()})
    output$onf_salary <- renderText(as.numeric(input$c_salary)+{as.numeric({input$c_salary})*(({rate_3()}-{rate_2()})/{rate_2()})})
    
    
#Basic output 
    output$oc_commute_days <- renderText({oc_commute_days()})
    output$on_commute_days <- renderText({on_commute_days()})
    output$oc_salary <- renderPrint({input$c_salary})
    output$opct_inc <- renderPrint({input$pct_inc})
    output$ocommute_1 <- renderPrint({input$commute_1})
    output$ocommute_2 <- renderPrint({input$commute_2})

    output$c_hpy_commute <- renderText({c_hpy_commute()})
    output$on_salary <- renderText({x()})
    
    
  }
)