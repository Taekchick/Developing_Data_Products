library(shiny) 
shinyServer( 
        function(input, output){ 
                output$value <- renderText({calculateResult(input$spending, input$savings, input$inflation, input$investment)})                
                output$image <- renderImage({
                        temp <- {calculateResult(input$spending, input$savings, input$inflation, input$investment)}        
                        if (is.null(temp))
                                return(NULL)
                        
                        if (temp == "YES, You Can!") {
                                return(list(
                                        src = "images/retire.jpg",
                                        contentType = "image/jpeg",
                                        alt = "Quit"
                                ))
                        } else if (temp == "NO, Keep your job...") {
                                return(list(
                                        src = "images/work1.jpg",
                                        filetype = "image/jpeg",
                                        alt = "Keep Saving"
                                ))
                        }        
                }, deleteFile = FALSE)
                
                # How much will you need to spend in retirement? A
                # How much do you have saved? B
                # Inflation (fixed, annual) C, 3%
                # Investment return rate (fixed, annual)
                
                # Calculation
                # A/(D-C) <= B  --> YES
                # A/(D-C) > B --> NO
                
                calculateResult <- function (spending, savings, inflation, investment)  
                { 
                        inflation = 0.01 * inflation
                        investment = 0.01 * investment
                        
                        amount1 <- round(spending/(investment-inflation), digits=2) 
                                        
                        amount2 <- savings
                        
                        
                        result <- ifelse(amount1 <= amount2, 
                               "YES, You Can!", 
                               "NO, Keep your job...")
        
                        return(result)
                } 
                                
        })



