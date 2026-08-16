#!/usr/bin/env python3
import urllib.request
import time

def fetch_baidu():
    try:
        response = urllib.request.urlopen('http://www.baidu.com', timeout=10)
        print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Request successful, status: {response.status}")

        import os
        log_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'successlog')
        os.makedirs(log_dir, exist_ok=True)
        filename = os.path.join(log_dir, f"success{time.strftime('%Y%m%d')}.txt")
        with open(filename, 'a') as f:
            f.write(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Request successful, status: {response.status}\n")

        return True
    except Exception as e:
        print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Request failed: {e}")

        import os
        log_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'failedlog')
        os.makedirs(log_dir, exist_ok=True)
        filename = os.path.join(log_dir, f"failed{time.strftime('%Y%m%d')}.txt")
        with open(filename, 'a') as f:
            f.write(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Request failed: {e}\n")

        return False

if __name__ == '__main__':
    print("Starting to fetch www.baidu.com every 3 seconds...")
    while True:
        fetch_baidu()
        time.sleep(3)
