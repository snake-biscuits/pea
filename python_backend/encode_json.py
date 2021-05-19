"""functions for sharing data in json form"""
import json


def credentials() -> str:
    username = "admin"
    password = "drowssap123456"
    user_object = {"username": username, "password": password,
                   "secrets": ["credit_card", "house_keys"],
                   "subscriptions": ["Local News"]}
    return json.JSONEncoder().encode(user_object)
