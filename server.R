library(UsingR)
library(ggplot2)
data(EuStockMarkets)



shinyServer(function(input, output)
{

  output$chooseMarket = renderUI({
    selectInput("market", "Choose Market", marketlist, )
  })
  
  output$plotMarket = renderPlot({
      if (!is.null(input$market)  && input$market != '') 
{
       
        market <- input$market
        minVal = min(d[market])
        maxVal = max(d[market])
        gain = round((maxVal/minVal*100)-100, digits=2)
      
      if (market=='DAX') { 
        ggplot(data=d,aes(x=seq(1,length(d[,1])),y=DAX))+geom_line(size=1, color='red')+xlab('Day')+
          ylab(paste('Closing Price, gain = ', gain, '%'))+
          theme(axis.title = element_text(face="bold", colour="black"),
          axis.text=element_text(face="bold", colour="black"))
      } else if (market=='SMI') {
        ggplot(data=d,aes(x=seq(1,length(d[,1])),y=SMI))+geom_line(size=1,color='red')+xlab('Day')+
          ylab(paste('Closing Price, gain = ', gain, '%'))+
          theme(axis.title = element_text(face="bold", colour="black"),
                axis.text=element_text(face="bold", colour="black"))
      } else if (market=='CAC') {
        ggplot(data=d,aes(x=seq(1,length(d[,1])),y=CAC))+geom_line(size=1,color='red')+xlab('Day')+
          ylab(paste('Closing Price, gain = ', gain, '%'))+
          theme(axis.title = element_text(face="bold", colour="black"),
                axis.text=element_text(face="bold", colour="black"))
      } else if (market=='FTSE') {
        ggplot(data=d,aes(x=seq(1,length(d[,1])),y=FTSE))+geom_line(size=1,color='red')+xlab('Day')+
          ylab(paste('Closing Price, gain = ', gain, '%'))+
          theme(axis.title = element_text(face="bold", colour="black"),
                axis.text=element_text(face="bold", colour="black"))
      }

  }  
  })
  
})
