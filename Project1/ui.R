library(shiny) 
shinyUI(pageWithSidebar( 
        titlePanel("Can you quit your job now?"),
        sidebarPanel( 
                h4('Savings and Spending'),
                numericInput('spending', 'How much will you need to spend in retirement? ($ per year)', 40000, min = 10000, max = 100000000, step = 5000),
                numericInput('savings', "How much do you have saved? (total $)", 1000000, min = 10000, max = 1000000000, step = 100),
                h4('Inflation and Interest Rates**'),
                sliderInput('inflation', 'Inflation rate in % (fixed, annual)', value = 3, min = 1, max = 10, step = 0.01),
                sliderInput('investment', 'Growth rate in % (fixed, annual)', value = 7, min = 1, max = 20, step = 0.01),
                p("** Note that for this calculation to work, we need the growth/investment return rate to be higher than the inflation rate. ")
        ), 
        
        mainPanel( 
                h4("Results: "),
                textOutput("value"),
                br(), 
                imageOutput("image", height = 300),
                br(), 
                br(), 
                tabsetPanel(
                        tabPanel("Results", 
                                 br()),
                        tabPanel("Documentation", 
                                h4("Summary Description"),
                                p("What is this?"),                             
                                p("========================================================"),
                                p("Have you ever tried to plan for your retirement?"),
                                p("Do you know if you are ready to retire now? Mostly we just laugh and say no. But how do you know for sure without doing the calculations?"),
                                p("If you look at online forms or when you visit your financial advisor, they will give you several pages of questions and forms for you to answer.Where many of these questions are tedious or difficult to answer."),
                                p("What if, you just want a simple way to find out whether or not you can retire right now."),
                                br(),
                                p("The 4 Basic questions"),
                                p("========================================================="),
                                strong("First question - How much will you need to spend in retirement? ($ per year)"),
                                p(" Calculate how much you currently spend per year then figure out whether or not you will spend more or less when you retire"),
                                strong("Second question - How much do you have saved? (total $)"),
                                p(" Consider what is liquidable and what is not. If you have retirement savings that you can only access when you are 60 but you are only 40, then you shouldn't count it until you are 60"),
                                strong("Third question - Inflation rate in % (fixed, annual)*"),
                                p(" What is the fixed, annual inflation rate. In general, the inflation rate in US has been 3% increase each year and it is set as default. If you don't know for sure, please use 3% as a starting point"),
                                strong("Forth question - Growth rate in % (fixed, annual)*"),
                                p(" What is the fixed, annual growth rate, in another words, what is the investment/interest rate return? "),
                                h6(" *Simplified for a very basic calculation and the interest rate must be greater than the inflation rate."),
                                p("========================================================="),
                                p("Calculation used in the server code"),
                                p("X = Spending/(Growth rate - Inflation rate)"),
                                p("Y = Savings"),
                                p("If X >= Y, then you have enough to live without needing further income. Given that the inflation and the growth rate stays the same"),
                                p("Otherwise, X < Y, you do not have enough saved."),
                                p("========================================================="),
                                p("Please note that this is in no way a full retirement calculation. Many of these factors fluctuate making it difficult to calculate the constant rates."),
                                p("This Shiny app is created just to give people an idea on the possibilities of financial independence "),
                                p("Reference:", a("http://www.mrmoneymustache.com/", href="http://www.mrmoneymustache.com/", style = "color:blue"))
                        ))
        )
)
)