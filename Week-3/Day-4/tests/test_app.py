import requests

def test_home():
    r = requests.get("http://web:5000/")
    assert r.status_code == 200
    assert "Hello" in r.text

def test_health():
    r = requests.get("http://web:5000/health")
    assert r.status_code == 200
    assert r.json()["status"] == "healthy"