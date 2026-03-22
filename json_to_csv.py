import json
import csv

with open("drivers_9947.json", "r", encoding="utf-8") as f:
    data = json.load(f)

keys = data[0].keys()

with open("drivers_9947.csv", "w", newline="", encoding="utf-8") as f:
    writer = csv.DictWriter(f, fieldnames=keys)
    writer.writeheader()
    writer.writerows(data)

print("Transformation successfull")