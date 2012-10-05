#include <Servo.h> 
 
Servo myservo;
 
void setup() {
  Serial.begin(9600);
  myservo.attach(9);
  myservo.write(150);
}


void loop() {
  if (Serial.available() > 0) {
    char inByte = Serial.read();
    if(inByte=='1') {
      cookieOut();
    }
  }
}

void moveServo(int from, int to) {
  int dir = 1;
  if(to<from) {
    dir = -1;
  }
  int pos = from;
  while(pos!=to) {
    myservo.write(pos);
    pos = pos+dir;
    delay(20);
  }
  
}

void cookieOut() {
  moveServo(140, 10);
  delay(100);
  moveServo(10, 140);
  delay(500);
}
