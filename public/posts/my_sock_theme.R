
library(showtext)
showtext_auto()
file <- sysfonts::font_files()

font_add("Lato", "Lato-Regular.ttf")
font_add("Open Sans Light", "OpenSans-Light.ttf")
font_add("Open Sans Light Italic", "OpenSans-LightItalic.ttf")
font_add("PT Sans", "PTSans-Regular.ttf")
font_add("PT Serif", "PTSerif-Regular.ttf")


## font sizes --------------------------------------------
size_header <- 14
size_axis_title <- 12
size_legend_title <- 12
size_axis_text <- 8
size_legend_text <- 8
size_caption <- 6

## font classes -----------------------------------------
font_title <- "Lato"
font_legend <- "Open Sans Light"


## color -------------------------------------------------
background_color <- "white"

my_colors <- c(
  "#9BABBF",
  "#8C694A",
  "#6C733C",
  "#D9B991"
)
## theme function -----------------------------------------
my_theme <- function(...) {
  theme_minimal() +
    theme(
      ### plot and panel-----------------------------------
      plot.background = element_rect(
        fill = background_color,
        linetype = 0,
        colour = NA
      ),
      panel.background = element_rect(
        fill = background_color,
        linetype = 0,
        color = NA
      ),
      # panel.grid = element_blank(),
      # plot.margin = unit(c(.5, .5, .2, .5), "cm"),
      panel.border = element_blank(),
      ### title and caption -------------------------------
      title = element_text(family = font_title,
                           size = size_header),
      plot.caption = element_text(size = size_caption),
      ### axis and strip text ------------------------------
      # strip.text = element_blank(),
      axis.title = element_text(size = size_axis_title),
      axis.text = element_text(size = size_axis_text),
      ## legend text ----------------------------------------
      legend.position = "right",
      legend.text = element_text(
        family = font_legend,
        size = size_legend_text
      )
    )
}