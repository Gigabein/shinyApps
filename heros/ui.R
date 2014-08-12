shinyUI(pageWithSidebar(
    headerPanel(""),
    sidebarPanel(
        textInput(inputID = "vLow",
                  label = "Max # low heroes:",
                  value = 7
                  ),
        textInput(inputID = "vMed",
                  label = "Max # med heroes:",
                  value = 25
                  ),
        textInput(inputID = "vHigh",
                  label = "Max # high heroes:",
                  value = 5
                  ),
        sliderInput(inputId = "nLow",
                    label = "Number of low heroes:",
                    min = 0,
                    max = 7,
                    step = 1,
                    value = 0),
        sliderInput(inputId = "nMed",
                    label = "Number of medium heroes:",
                    min = 0,
                    max = 25,
                    step = 1,
                    value = 0),
        sliderInput(inputId = "nHigh",
                    label = "Number of high heroes:",
                    min = 0,
                    max = 5,
                    step = 1,
                    value = 0)),
    mainPanel(
        textOutput("eV"))))
