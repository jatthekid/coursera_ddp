shinyUI(fluidPage(
  titlePanel("European Stock Market Performance 1991-98"),
  h3("Choose a market in the dropdown to see its performance from 1991-1998", style = "color: red;"),
  br(),
  
  sidebarLayout(
    sidebarPanel(
      uiOutput('chooseMarket')        
    ),

    
    mainPanel(
      plotOutput('plotMarket')
    )
  )
))