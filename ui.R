shinyUI(pageWithSidebar(
    headerPanel("Hyperspectral Viewer"),
    
    sidebarPanel(
        h3('Band Selection:'),
        sliderInput('red', 'Red Band:', value = 44, min = 1, max = 244, step = 1),
        sliderInput('green', 'Green Band:', value = 26, min = 1, max = 244, step = 1),
        sliderInput('blue', 'Blue Band:', value = 6, min = 1, max = 244, step = 1)
    ),
    
    mainPanel(
        p("This image is future german hyperspectral satellite EnMAP simulated data."),
        p("More information about this satellite at: www.enmap.org"),
        h3('Result raster:'),
        plotOutput('newPlot'),
        p("Red Band:"),
        verbatimTextOutput("redband"),
        p("Green Band:"),
        verbatimTextOutput("greenband"),
        p("Blue Band:"),
        verbatimTextOutput("blueband")
    )
))