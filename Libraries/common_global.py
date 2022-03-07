from __future__ import absolute_import

import os

from robot.api import logger
from robot.api.deco import keyword, library
from robot.version import get_version

import random
import string
import time

def my_logger(message):
    message = f'Logs : {message}'
    logger.debug(message)


@library
class CommonGlobal:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = get_version()

    @keyword
    def my_logger(message):
        message = f'Logs : {message}'
        logger.console(message, stream='STDOUT')

    @keyword
    def check_file_exist(self, filepath):
        return True if os.path.exists(str(filepath)) else False

    def read_in_files(self,file_name_path):
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

    @keyword
    def string_contain(self):
        time_object = time.localtime()
        local_time = time.strftime("%m_%d_%Y_%H%M%S", time_object)
        self.my_logger(f'generate_screenshot_filename {local_time}')
        return local_time


