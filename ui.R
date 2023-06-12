# ui.R
# Author: bhautik a. mangukiya
# Date: 29/03/2023
# Description: Shiny UI, Coursera Data Science Capstone Final Project


library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
  navbarPage("Next Word Predict", #title
             theme = shinytheme("spacelab"),
             tabPanel("Home", #tab title
                      fluidPage(
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("userInput",
                                      "Enter a word or phrase:",
                                      value =  "",
                                      placeholder = "Enter text here"), 
                            br(),
                            sliderInput("numPredictions", "Number of Predictions:",
                                        value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                          ),
                          mainPanel(
                            h4("Input text"),
                            verbatimTextOutput("userSentence"),
                            br(),
                            h4("Predicted words"),
                            verbatimTextOutput("prediction1"),
                            verbatimTextOutput("prediction2"),
                            verbatimTextOutput("prediction3")
                               )
                        )
                      )
             ),
             tabPanel("About",
                      h3("About Next Word Predict"),
                      br(),
                      div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                          br(),
                          br(),
                          "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                          br(),
                          br(),
                          "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                          br(),
                          br(),
                    
                      br(),
                      h3("About Me"),
                      br(),
                      div("My name is Bhautik A. Mangukiya and I am a
                            student of M.Sc. Applied Statistics. Finding Career in Data Science Field.",
                          br(),
                          "Detail - oriented and result driven person who is 
                          familiar with data collection, process, analyze and 
                          interpret results to make better decisions. Passionate
                          about building models that fix problems with relevant
                          skills like statistics, machine learning, problem
                          solving and creative thinking."
                          
                        )
                      )
          )
    )
)