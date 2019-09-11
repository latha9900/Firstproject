echo "Hello World"
cd C:/Selenium
ls -lrt 
nohup java -jar selenium-server-standalone-3.141.59.jar -role hub -port 8900 &
echo " Hub started and is proceeding ..."
echo "trying to start node ...."
nohup java -Dwebdriver.chrome.driver="C:/Selenium_new/chromedriver.exe" -jar C:/Selenium_new/selenium-server-standalone-3.141.59.jar -role webdriver -hub http://10.137.34.136:8900/grid/register -port 5066 &
echo "Node created successfully ..."