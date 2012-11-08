#include <Servo.h> 
 
Servo myservo;
int myTime;
 
void setup() {
  Serial.begin(9600);
  myservo.attach(9);
  myservo.write(141);
  myTime = 0;
}


void loop() {
  if (Serial.available() > 0) {
    char inByte = Serial.read();
    if(inByte=='1') {
      cookieOut();
    }
  }
  if((millis()-myTime)>(1*3600*1000)) {
    cookieOut();
    myTime = millis();
  }
  delay(1000);
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
    delay(15);
  }
  
}

void cookieOut() {
  moveServo(141, 5);
  delay(100);
  moveServo(5, 141);
  delay(500);
}
