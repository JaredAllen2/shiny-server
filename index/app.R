## app.R ##
library(shiny)
library(shinydashboard)

ip_address <- "http://shinyserver:3838/"

ui <- dashboardPage(
  dashboardHeader(disable = TRUE
  ),
                 
  dashboardSidebar(
    sidebarMenu(
      menuItem("dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("info", tabName = "info", icon = icon("info"))
    )
  ),
  dashboardBody(
    
    # First tab content
    tabItem(tabName = "dashboard",
      fluidRow(
        valueBox(value = "SampleManagementR",
                 subtitle = "SampleManagementR supports the sample delivery and sample registration process.",
                 icon = icon("database"),
                 color = "yellow",
                 href = paste(ip_address,"SampleManagementR/SampleManagement_Shiny", sep = "")
        )
      ),
      fluidRow(
        valueBox(value = "BeadStockR",
                 subtitle = "BeadStockR is a Shiny web app to support stocking of Luminex beads. Separate stocks can be managed
                 and amount of respective bead colors are tracked.",
                 icon = icon("database"),
                 color = "purple",
                 href = paste(ip_address,"BeadStockR/BeadStock_Shiny", sep = "")
        ),
        valueBox(value = "BeadSetR",
                   subtitle = "BeadSetR is a Shiny web app to support creation of new bead sets.",
                   icon = icon("cogs"),
                   color = "green",
                   href = paste(ip_address,"BeadSetR/BeadSet_Shiny", sep = "")
        ),
        valueBox(value = "KKTCheckR",
                 subtitle = "KKT CheckR is a Shiny web app for quality control of Luminex Bead Coupling Control data.
                It uses Luminex Raw files containing measured MFI and Beadcount Data to calculate quality control values.
                As result, the user optains a pdf report. Furthermore the app can be used to browse and vizualize this qc data.",
                 icon = icon("check-circle-o"),
                 color = "aqua",
                 href = paste(ip_address,"KKTCheckR/KKTCheck_Shiny", sep = "")
        )
      ),
      fluidRow(
        valueBox(value = "CherryPickingR",
                 subtitle = "CherryPickingR supports the cherry picking process",
                 icon = icon("cogs"),
                 color = "red",
                 href = paste(ip_address,"CherryPickingR/CherryPicking_Shiny", sep = "")
        ),
        valueBox(value = "HamiltonLogCheckR",
                 subtitle = "HamiltonLogCheckR veryfies the Hamilton Cherry Picking",
                 icon = icon("cogs"),
                 color = "purple",
                 href = paste(ip_address,"HamiltonLogCheckR/Shiny", sep = "")
        ),
        valueBox(value = "LuminexInputCheckR",
                 subtitle = "Validate luminex import files !before! loading them into the Luminex device.",
                 icon = icon("check-circle-o"),
                 color = "yellow",
                 href = paste(ip_address, "LuminexInputCheckR/LuminexInputCheck_Shiny", sep = "")
        ),  
        valueBox(value = "LuminexParseR",
                 subtitle = "LuminexParseR is a Shiny web app for parsing Luminex raw text file data.
                 It extracts instrument and run information as well as the various datatypes such as MFI or bead count.
                 Furthermore the parser combines multiple measurement plates into a single dataset.",
                 icon = icon("cogs"),
                 color = "maroon",
                 href = paste(ip_address, "LuminexParseR/LuminexParse_Shiny", sep = "")
        )
      )
    )
  )
)


server <- function(input, output) {
  
}

shinyApp(ui, server)
