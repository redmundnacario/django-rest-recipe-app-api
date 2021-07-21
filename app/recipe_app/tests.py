from django.test import TestCase

from recipe_app.calc import addNumbers


class CalcTests(TestCase):
    def test_add_numbers(self):
        """ Tests add numbers"""
        self.assertEqual(addNumbers(3,4), 7)