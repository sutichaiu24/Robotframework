Gitrobotdemo
[Documentation]

ลูกหมูสามตัวสร้างบ้นสามหลัง ทำจาก ฟาง ไม้ และ อิฐ

*** Settings ***
Library 		Selenium2Library

*** Test Cases ***
Test first house build by fang
	  use wind 		fang house
	  house should be	still


Test second house build by wood
      use wind 		wood house 
      house should be 	still

Test third house build by rock
      use wind 		rock 
      house should be still	sd
