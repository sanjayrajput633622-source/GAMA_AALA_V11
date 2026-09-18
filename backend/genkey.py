#!/usr/bin/env python3
import json
import random
import string
import sys
from datetime import datetime, timedelta

def generate_key(key_type="weekly", count=1):
    with open("keys.json") as f:
        data = json.load(f)
    
    pricing = data["settings"]["pricing"]
    
    if key_type not in pricing:
        print(f"Invalid type. Options: {list(pricing.keys())}")
        return
    
    config = pricing[key_type]
    days = config["days"]
    
    prefix_map = {
        "weekly": "7D",
        "monthly": "30D",
        "halfyearly": "180D",
        "yearly": "365D"
    }
    prefix = prefix_map.get(key_type, key_type.upper())
    
    print(f"\nGenerating {count} {config['label']} key(s)...")
    print(f"Price: Rs.{config['price']} | Duration: {days} days\n")
    
    new_keys = []
    for i in range(count):
        suffix = "".join(random.choices(string.ascii_uppercase + string.digits, k=8))
        key = f"GAMA-{prefix}-{suffix}"
        
        now = datetime.now()
        expires = now + timedelta(days=days)
        
        key_data = {
            "key": key,
            "type": key_type,
            "label": config["label"],
            "price": config["price"],
            "created_at": now.isoformat(),
            "expires_at": expires.isoformat(),
            "days": days,
            "max_devices": 2,
            "used_devices": [],
            "active": True
        }
        
        data["keys"].append(key_data)
        new_keys.append(key)
        print(f"  {key}")
    
    with open("keys.json", "w") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
    
    print(f"\nTotal keys: {len(data['keys'])}")

if __name__ == "__main__":
    key_type = sys.argv[1] if len(sys.argv) > 1 else "weekly"
    count = int(sys.argv[2]) if len(sys.argv) > 2 else 1
    generate_key(key_type, count)
