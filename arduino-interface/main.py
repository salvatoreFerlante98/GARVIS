from fastapi import FastAPI
import requests  # Per inviare comandi ad Arduino via HTTP

app = FastAPI()

# Endpoint per interfacciarsi con Arduino
@app.post("/control")
async def control_device(command: str):
    # Invia un comando all'Arduino (es: accendere una luce)
    arduino_ip = "http://192.168.1.10"  # IP dell'Arduino con Ethernet Shield
    response = requests.post(f"{arduino_ip}/command", data={"command": command})
    return {"status": response.status_code, "data": response.text}

# Esempio di endpoint per gestire altre operazioni
@app.get("/status")
async def get_status():
    # Ottiene lo stato dall'Arduino
    arduino_ip = "http://192.168.1.10/status"
    response = requests.get(arduino_ip)
    return {"status": response.status_code, "data": response.text}
