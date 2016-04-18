library(shiny)

##What salary do you negoiate for when applying for a new job

shinyUI(pageWithSidebar(
  headerPanel("Negotiate your salary!"),
  sidebarPanel(
    numericInput('c_salary', 'What is your current annual salary?',50000, step =1),
    sliderInput("pct_inc",
                "Prefered percent increase:",
                min = 0,
                max = 150,
                value = 15),
    
    numericInput('commute_1', 'Roundtrip time in minutes of current commute?',0),
    checkboxGroupInput("c_commute_days","Check the days you currently commute:",
                   c('Monday' = '1',
                     'Tuesday' = '1',
                     'Wednesday' = '1',
                     'Thursday' = '1',
                     'Friday' = '1',
                     'Saturday' = '1',
                     'Sunday' = '1')),
    numericInput('commute_2', 'Roundtrip time in of new commute?',0),
    checkboxGroupInput("n_commute_days","Check the days you will commute:",
                       c('Monday' = '1',
                         'Tuesday' = '1',
                         'Wednesday' = '1',
                         'Thursday' = '1',
                         'Friday' = '1',
                         'Saturday' = '1',
                         'Sunday' = '1'))    
    
  
  ),
  mainPanel (
#     h3('Output Panel'),
#     h4('Current Salary entered'),
#     verbatimTextOutput('oc_salary'),
#     h4('Prefered Salary increase'),
#     verbatimTextOutput('opct_inc'),
#     h4('Current commute time'),
#     verbatimTextOutput('ocommute_1'),
#     h4('Current number of commute days'),
#     verbatimTextOutput('oc_commute_days'),    
#     h4('Future commute time'),
#     verbatimTextOutput('ocommute_2'),
# 
#      h4('Future number of commute days'),
#      verbatimTextOutput('on_commute_days'),

    
    h3('Current Job'),
    h4('Wage per hour if no commute:'),
    verbatimTextOutput('wph_1'),
    h4('Wage per hour with commute:'),
    verbatimTextOutput('wph_2'),
    
    h3('New Job'),
    h4('Wage per hour with commute:'),
    verbatimTextOutput('wph_3'),
    
#    h4('Hours per year of commuting'),
#    verbatimTextOutput('c_hpy_commute'),
    
    h4('Negotiated base salary for new job:'),
    verbatimTextOutput('on_salary'),
    
    h4('Functional percentage increase in salary:'),
    verbatimTextOutput('wph_4'),
    
    h4('Functional base salary on new job when commute is factored in:'),
    verbatimTextOutput('onf_salary')
    
  )

  
  
))