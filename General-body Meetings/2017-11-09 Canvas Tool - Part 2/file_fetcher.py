"""
A file downloader for Canvas.

Requires Python 3.

Uses ``canvasapi`` and ``requests``.
Install them with::

   pip3 install canvasapi requests --user

"""

from pathlib import Path

import requests
from canvasapi import Canvas
from canvasapi.course import Course
from canvasapi.folder import Folder


class App:
    """
    A container class for the logic of this program.
    """

    def __init__(self, api_url: str, api_key: str):
        """
        Creates an instance of this class.
        :param api_url: The url of the Canvas API
        :param api_key: The token to use with the API
        """
        self.canvas = Canvas(api_url, api_key)

    def ask_user_for_course(self) -> Course:
        """
        Prints the user's courses and asks which he would like to choose.
        :return: The course
        """
        courses = tuple(self.canvas.get_courses())
        print('Choose a course:')
        for number, course in enumerate(courses):
            print('{number}\t{course_name}'.format(number=number, course_name=str(course)))
        selected_course_number = ''
        while type(selected_course_number) != int or not 0 < selected_course_number < len(courses):
            selected_course_number = input('Which course would you like to choose? ')
            try:
                selected_course_number = int(selected_course_number)
            except ValueError:
                pass
        selected_course = courses[selected_course_number]
        return selected_course

    @staticmethod
    def ask_user_for_download_directory(selected_course) -> Path:
        """
        Asks the user where he would like the downloaded files to be placed.
        :return: The directory the user specified or a default location in Downloads
        """
        download_directory = Path.home() / 'Downloads/{course_name}'.format(course_name=str(selected_course))
        user_input = input('In what folder would you like to download the files? Default: {default_path}'.format(
            default_path=download_directory))
        if user_input:
            download_directory = Path(user_input)
        if not download_directory.exists():
            download_directory.mkdir()
        return download_directory

    @staticmethod
    def download_files_from_canvas_folder(canvas_folder: Folder, parent_directory: Path) -> None:
        """
        Takes a Canvas Folder and writes its files in the given directory.
        :param canvas_folder: The Canvas folder
        :param parent_directory: The parent directory
        :return: ``None``
        """
        for canvas_file in :  # TODO: Do something
            file_path
            # TIP: For every file in the Canvas folder, make a responding Path and write it to the filesystem

            web_request = requests.get(canvas_file.url)
            file_content = web_request.content
            file_path.write_bytes(file_content)

    def run(self) -> None:
        """
        Starts the program.
        This program should ask the user which course he would like to download.
        It should also let him specify where he would like them downloaded.
        Then, it should download all the course's files into the user's filesystem
        :return: ``None``
        """
        selected_course = self.ask_user_for_course()
        print('You selected {course_name}'.format(course_name=str(selected_course)))
        download_directory = self.ask_user_for_download_directory(selected_course)
        for folder in selected_course.list_folders():
            pass  # TODO: Do something


if __name__ == '__main__':
    # Login to canvas
    api_url = 'https://miamioh.instructure.com/api/v1/'
    api_key = '(TODO: Add token here)'
    app = App(api_url, api_key)
    app.run()
