import unittest
from app import app # import Flask app

class FlaskAppTestCase (unittest.TestCase):
    def setUp(self):
        """set up the test client"""
        app.config['TESTING'] =  True
        self.client = app.test_client()

    def test_endpoint(self):
        """ /test endpoint"""
        response =  self.client.get('/test')
        self.assertEqual(response.status_code, 200)

if __name__ == '__main__':
    unittest.main()
    
