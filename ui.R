palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

library(shiny)

ui <- fluidPage(
        headerPanel('Iris k-means clustering'),
        sidebarPanel(
                selectInput('xcol', 'X Variable', names(iris)),
                selectInput('ycol', 'Y Variable', names(iris),
                            selected = names(iris)[[2]]),
                numericInput('clusters', 'Cluster count', 3,
                             min = 1, max = 9)
        ),
        mainPanel(
                plotOutput('plot1')
        )
)

