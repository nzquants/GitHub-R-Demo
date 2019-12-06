library(shiny)
library(esquisse)
library(rio)
library(rvg)
library(officer)

ui <- navbarPage(
  title = "Easy Chart Maker",
  tabPanel(
    title = "Main",
    esquisserUI(
      id = "esquisse", 
      header = FALSE,
      container = esquisseContainer(
        fixed = c(50, 0, 0, 0)
      )
    )
  )
)

server <- function(input, output, session) {
  
  callModule(module = esquisserServer, id = "esquisse",session = session, dataModule = c("ImportFile"))
  
}

shinyApp(ui, server)

