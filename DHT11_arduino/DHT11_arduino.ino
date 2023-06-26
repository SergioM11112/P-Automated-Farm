#include <DHT.h>

#define DHTTYPE DHT11
#define DHTPIN 9

DHT dht(DHTPIN, DHTTYPE);
int frio = 12;
int calor = 11;

float aj_temp;
float THI;

void setup() {
  
  Serial.begin(9600);
  dht.begin();
  pinMode(frio, OUTPUT);
  pinMode(calor, OUTPUT);

}

void loop() {
  
  delay(500); //Esperan 2 seg
  float hum = dht.readHumidity();
  float temp = dht.readTemperature();

  aj_temp = 12*temp/22.5;     //temp actual *temp / marcaje actual
  THI = 0.8*aj_temp + (hum/100)*aj_temp -14.4*(hum/100) +46.4;


  if(isnan(hum) || isnan(temp)){
    Serial.println("ERROR de sensor");
    return;
  }

  if(THI >= 60){
    digitalWrite(calor, HIGH);
  }else{
    digitalWrite(calor, LOW);
  }

  if(THI<= 52){
    digitalWrite(frio, HIGH);
  }else{
    digitalWrite(frio, LOW);
  }

  Serial.print("Humedad: ");
  Serial.print(hum);
  Serial.print("% Temperatura: ");
  Serial.print(aj_temp);
  Serial.println("°C");
  Serial.print(temp);
  Serial.print("THI: ");
  Serial.print(THI);
}
