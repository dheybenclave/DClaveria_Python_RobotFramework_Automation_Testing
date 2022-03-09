from __future__ import absolute_import

import os
import webbrowser
from datetime import timedelta
import functools

import SeleniumLibrary
import selenium
import webdriver_manager.driver
from selenium import webdriver
from selenium.webdriver.common.by import By

from robot.api import logger
from robot.api.deco import keyword, library
from robot.version import get_version

import random
import string
import time


def my_logger(message):
    message = f'Logs : {message}'
    logger.debug(message)



def validate_verify_element_error_message( parent_selector, error_message):
    try:
        my_logger("PERFORMING : Validate Verify Element Error Message")



        element = parent_selector.get_dom_attribute("class")

        my_logger(f'{error_message} | {element}')

        element_error_selector = {
            "textbox": "",
            "dropdown": "",
            "button": "",
            "table": "",

        }

    except ValueError:
        my_logger(ValueError)


class CommonGlobal:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = get_version()

    def __init__(self, parent, id_):
        self._parent = parent
        self._id = id_

    @keyword
    def my_logger(message):
        message = f'Logs : {message}'
        logger.console(message, stream='STDOUT')

    @keyword
    def check_file_exist(self, filepath):
        return True if os.path.exists(str(filepath)) else False

    def read_in_files(self, file_name_path):
        self = file_name_path
        self.my_logger(f'**FILE NAME : {file_name_path}**')

        try:
            if self.check_file_exist(file_name_path):
                file_name = open(file_name_path, "r")
                list_get_row_file = []
                if file_name.readable():
                    for rows in file_name.readlines():
                        list_get_row_file.append(rows.strip())

                file_name.close()
                self.my_logger(f'READ FILE : {list_get_row_file}')
                return list_get_row_file
            else:
                self.my_logger(f'{file_name_path} is not exist or can''t find')

        except ValueError:
            self.my_logger(ValueError)

    @keyword(types=None)
    def get_random_name(self, name):
        name = len(name)
        letters = string.ascii_lowercase + string.ascii_uppercase + string.digits
        return ''.join(random.choice(letters) for i in range(name))

    @keyword(types=None)
    def generate_random_emails(self, append_email):
        domains = ["mailinator.com"]  # ["hotmail.com", "gmail.com", "aol.com","mail.com", "mail.kz", "yahoo.com"]
        email_length = round(len(append_email) / (len(append_email) / 2))
        return str(f'{self.get_random_name(email_length)}_{append_email}@{random.choice(domains)}')

    @keyword
    def split_string_return_by_index(self, string_to_split, separator=None, return_index=0):
        separator = None if separator == '' else separator
        ret_val = string_to_split.split(str(separator))[return_index]
        self.my_logger(f'split_string_return_by_index :  {ret_val}')
        return str(ret_val)

    @keyword(types=None)
    def generate_screenshot_filename(self):
        time_object = time.localtime()
        local_time = time.strftime("%m_%d_%Y_%H%M%S", time_object)
        self.my_logger(f'generate_screenshot_filename {local_time}')
        return local_time

    @keyword(types=None)
    def string_contain(self):
        time_object = time.localtime()
        local_time = time.strftime("%m_%d_%Y_%H%M%S", time_object)
        self.my_logger(f'generate_screenshot_filename {local_time}')
        return local_time

    @keyword
    def validate_verify_element_error_message(self, parent_selector, error_message):

        try:
            self.my_logger("PERFORMING : Validate Verify Element Error Message")

            selector_el = self.driver.find_element(By.XPATH, parent_selector)
            element = selector_el.get_dom_attribute("class")
            self.my_logger(f'{error_message} | {element}')

            element_error_selector = {
                "textbox": "",
                "dropdown": "",
                "button": "",
                "table": "",

            }

        except ValueError:
            self.my_logger(ValueError)
