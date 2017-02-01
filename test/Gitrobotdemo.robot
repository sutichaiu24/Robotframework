Gitrobotdemo
[Documentation]

Three little pig has build there own house one day the wolf is coming

*** Settings ***
Library 		Selenium2Library

*** Test Cases ***
Test first house build by fang
	  use wind 		fang house
	  house should be	still


Test second house build by wood
      use wind 		wood house 
      house should be still

Test third house build by rock
