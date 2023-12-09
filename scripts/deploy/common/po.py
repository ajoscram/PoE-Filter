import time, os

from abc import ABC, abstractclassmethod
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

class PO(ABC):
    def __init__(self):
        self.driver = webdriver.Firefox()

    def close(self):
        self.driver.close()

    @abstractclassmethod
    def login(self, email, password):
        pass

    def _click(self, selector):
        element = self.__get_element(selector)
        element.click()

    def _write(self, selector, text):
        element = self.__get_element(selector)
        element.send_keys(text)

    def _read(self, selector):
        element = self.__get_element(selector)
        return element.text
    
    def _wait_for(self, selector, attempts: int = 5):
        self.__get_element(selector, attempts)

    def __get_element(self, selector, attempts: int = 5):
        while True:
            try:
                return self.driver.find_element_by_css_selector(selector)
            except NoSuchElementException as e:
                attempts -= 1
                print(f"Failed to find '{selector}', attempts remaining: {attempts}")
                time.sleep(2)
                if attempts == 0:
                    raise e