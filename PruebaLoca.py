import json


with open("XB.json") as f:
    datos=json.dumps(f)

print(datos.get("valorxb"))
