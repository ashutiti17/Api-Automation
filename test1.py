from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
import time

# Setup Chrome options (optional: headless mode, etc.)
options = Options()
# options.add_argument('--headless')  # Uncomment to run headless

# Start the WebDriver
service = Service()
driver = webdriver.Chrome(service=service, options=options)

try:
    # Open Google
    driver.get("https://www.google.com")

    # Accept cookies if the prompt appears (Google in EU, etc.)
    try:
        accept_button = driver.find_element(By.XPATH, '//button[.="Accept all"]')
        accept_button.click()
    except:
        pass  # Ignore if the button isn't found

    # Locate the search box and input text
    search_box = driver.find_element(By.NAME, "q")
    search_box.send_keys("robotframework")

    # Wait for autocomplete suggestions to appear
    time.sleep(2)

    # Find suggestion elements
    suggestions = driver.find_elements(By.XPATH, '//ul[@role="listbox"]//li//span')

    # Extract text of first 5 suggestions
    top_five = [s.text for s in suggestions[:5]]
    print("Top 5 suggestions:")
    for suggestion in top_five:
        print("-", suggestion)

finally:
    # Close the browser
    driver.quit()
