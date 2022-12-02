# This is a small learning test in progress for rendering messages that have not yet been loaded by the browser.

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service

driver_service = Service(
    executable_path=r"C:\Users\hYourLocalStorage\Downloads\chromedriver\chromedriver.exe")

chromeOptions = Options()
chromeOptions.headless = False
driver = webdriver.Chrome(service=driver_service, options=chromeOptions)


def initialize_Browser():
    driver.get('https://qz.com/africa/latest/')

    print('Starting Server')


initialize_Browser()

# close browser window
driver.quit()
