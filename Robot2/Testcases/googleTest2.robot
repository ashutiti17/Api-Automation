from selenium.webdriver.common.by import By

def get_first_five_google_suggestions(driver):
    suggestions_xpath = '//ul[@role="listbox"]//li//span'
    suggestions_elements = driver.find_elements(By.XPATH, suggestions_xpath)
    first_five = [elem.text for elem in suggestions_elements[:5]]
    return first_five
