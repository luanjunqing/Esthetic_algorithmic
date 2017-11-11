/*
 * @Author: LUAN Junqing 
 * @Date: 2017-11-02 02:33:38 
 * @Last Modified by:   LUAN Junqing 
 * @Last Modified time: 2017-11-02 02:33:38 
 */

float speed1, speed2, offset, arcEnd, position_x, position_y;

void setup() {
    size(600, 800);
    noStroke();
    smooth();
    frameRate(25);
}

void draw() {
    background(255, 255, 255);
    //background(random(255), random(255), random(255));  //draw the background randomly;
    //translate(width / 2, height / 2);  //exchange the coordinate system;
    drawArc(width * 0.9, height * 0.58, 20, 20); //circle on the right;
    drawSpecialArc(width * 0.2, height * 0.53, 20, 20); //a quarter of circle;
    drawArc(width * 0.7, height * 0.7, 25, 20); //circle on the middle;
    drawArc(width * 0.405, height * 0.78, 29, 20); //the biggest circle;
}


void drawArc(float xloc, float yloc, int numOfArc, float step) {
    for (int i = 1; i < numOfArc; i++) {
        offset = TWO_PI / numOfArc * i;
        arcEnd = map(sin(offset + speed1), -1, 1, PI, 2 * TWO_PI);
        arc(xloc, yloc, i * step, i * step, PI, arcEnd, PIE); //CHORD, PIE, OPEN;
        fill(random(55, 255), random(55, 255), random(55, 255), 120);
    }
    speed1 += .005;
}

void drawSpecialArc(float xloc, float yloc, int numOfArc, float step) {
    for (int i = 1; i < numOfArc; i++) {
        offset = TWO_PI / numOfArc * i;
        arcEnd = map(sin(offset + speed2), -1, 1, PI, 2 * TWO_PI);
        arc(xloc, yloc, i * step, i * step, PI, arcEnd, OPEN); //CHORD, PIE, OPEN;
        fill(random(255), random(255), random(255), 60);
    }
    speed2 += .005;

}