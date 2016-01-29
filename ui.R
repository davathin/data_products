require(shiny)
shinyUI(
  navbarPage("Protein filter optimization",
             tabPanel("Plot",
                      sidebarPanel(
                        sliderInput(inputId="changeout",
                                    label="Change Out",
                                    min=0, 
                                    max=20000, 
                                    step=100,
                                    value=10000),
                        sliderInput(inputId="intercept1",
                                    label="Intercept before changeout",
                                    min=0, 
                                    max=3.9218,
                                    step=0.0001,
                                    value=0.8364),
                        sliderInput(inputId="slope1",
                                    label="Slope before changeout",
                                    min=0.0029, 
                                    max=0.0067, 
                                    step=0.0001,
                                    value=0.0041),
                        sliderInput(inputId="intercept2",
                                    label="Intercept after changeout",
                                    min=0, 
                                    max=27, 
                                    step=1,
                                    value=-7),
                        sliderInput(inputId="slope2",
                                    label="Slope after changeout",
                                    min=0, 
                                    max=.0043, 
                                    step=0.0001,
                                    value=.0015)  
                      ),                  
                      mainPanel(
                        fluidPage(
                          plotOutput("plot1", height = 600, width = 600),
                          h4("The total amount of retention for the current filtration
                             scheme is:"),
                          h4(textOutput("text1")),
                          h5("Remember, lower is better!"),
                          align="center"
                        )
                      )
             ),
             tabPanel("About",
                      mainPanel(
                        h4("This tool is to be used for the optimization of a filtration system
                          used in perfusion based mAB bioprocesses. A % retention greater than
                          40% indicates a failure of the system so the filter must be changed
                          out. "),
                        h4("The point at which the filter is changed can be manipulated with
                          the Change out variable. Since the relationship between cumulative
                          protein and % retention is nearly linear the tool represents each
                           phase as a line. Using the sliders you can manipulate the curves
                           to optimize the total amount of retention displayed below the plot.
                           Since we want to make sure the largest amount of protein passes
                           through the filter we want to MINIMIZE the total amount of retention.
                           "),
                        h4("The x axis of the graph is the cumulative amount of protein that
                          has been produced in the bioreactor."),
                        h4("The y axis of the graph is the percentage of protein retained
                          in the filter."),
                        h4("")
                      )
             )
  )
)

