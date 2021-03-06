shinyUI(bootstrapPage(
        tags$head(
		tags$link(rel = "stylesheet", type = "text/css",
			href = "https://dl.dropboxusercontent.com/u/11690/jessica/stylesheets/base.css")
		),
	headerPanel("Power With Independent and Paired Sample T-Tests"),
	sidebarPanel(
	sliderInput(inputId = "iter",
				label = "Number of iterations per point (bigger is smoother but slower):",
				min = 50,
				max = 1000,
				value = 100,
				step = 10),
	sliderInput(inputId = "maxN",
				label = "Maximum per group sample size:",
				min = 10,
				max = 1000,
				value = 100,
				step = 10),
	sliderInput(inputId = "d", 
		        label = "Expected |difference| in means:",
		        min = 0,
		        max = 50,
		        step = 1,
		        value = 10),
	sliderInput(inputId = "sigma",
		        label = "Expected standard deviation between (OF THE BETAS):",
		        min = 0,
		        max = 50,
		        step = 1,
		        value = 10),
    sliderInput(inputId = "sigmaWith",
		        label = "Expected standard deviation within (OF THE BETAS):",
		        min = 0,
		        max = 50,
		        step = 1,
		        value = 10)),
	mainPanel(
	  plotOutput(outputId = "main_plot"))))
