import requests
import json

# Replace these with your actual credentials from the WHO developer portal
CLIENT_ID = "fa413ebd-69f4-4ff7-b409-24262b8d729b_8830a292-01e8-4436-aea7-d1e11b0722a7"
CLIENT_SECRET = "bwMkvZf078SJfI2w3cR/RztuyMcRLw2xyWfaLswcXWk="

def get_access_token():
    """
    Retrieves a session token from the WHO ICD-API.
    This token is valid for 1 hour.
    """
    token_url = "https://icdaccessmanagement.who.int/connect/token"
    payload = {
        "grant_type": "client_credentials",
        "client_id": CLIENT_ID,
        "client_secret": CLIENT_SECRET,
        "scope": "icdapi_access"
    }
    
    response = requests.post(token_url, data=payload)
    response.raise_for_status() # Raise an exception for bad status codes
    return response.json()["access_token"]

# Get the token once and use it for all subsequent requests
token = get_access_token()
print("Access Token acquired.", token)