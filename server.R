require(shiny)

function(input,output){
  output$plot1<-renderPlot({
    x<-seq(from=0,to=20000,by=100)
    y<-array(0,c(1,201))
    for(i in 0:length(x)){
      if((i*100<=input$changeout) && (max(y)<=40)) {
        y[i]<-i*100*input$slope1+input$intercept1
      } else if ((i*100<=input$changeout) && (max(y)>40)){
        y[i]<-i*100*input$slope2+input$intercept2
      } else if ((i*100>input$changeout) && (max(y)<=40)){
        y[i]<-i*100*input$slope2+input$intercept2
      } else if ((i*100>input$changeout) && (max(y)>40)){
        y[i]<-i*100*input$slope2+input$intercept2
      }
    }
    plot(x,y,ylim=c(0,40),
         main="Filter retention as a function of cumulative protein",
         xlab="Cumulative protein",
         ylab="Retention %")
  })
  output$text1 <- renderText({ 
    x<-seq(from=0,to=20000,by=100)
    y<-array(0,c(1,201))
    for(i in 0:length(x)){
      if((i*100<=input$changeout) && (max(y)<=40)) {
        y[i]<-i*100*input$slope1+input$intercept1
      } else if ((i*100<=input$changeout) && (max(y)>40)){
        y[i]<-i*100*input$slope2+input$intercept2
      } else if ((i*100>input$changeout) && (max(y)<=40)){
        y[i]<-i*100*input$slope2+input$intercept2
      } else if ((i*100>input$changeout) && (max(y)>40)){
        y[i]<-i*100*input$slope2+input$intercept2
      }
    }
    ret_total<-0
    for (a in 2:(length(x))) {
      ret_total<-ret_total+(y[a]*100+y[a-1]*100)/2
    }
    text1<-ret_total
  })
}