/*
 * @Author: LUAN Junqing 
 * @Date: 2017-11-03 00:03:28 
 * @Last Modified by:   LUAN Junqing 
 * @Last Modified time: 2017-11-03 00:03:28 
 */
float position_x;
float position_y;
float speed_x;
float speed_y;
int d;

void setup() {
    size(600, 800);
    noStroke();
    //stroke(166,165,161);
    frameRate(30);
    smooth();
    //noLoop();
}

//the main function;
void draw() {
    background(random(255), random(255), random(255));
    drawTarget(width * 0.9, height * 0.58, 360, 40); //circle on the right;
    drawArc(width * 0.2, height * 0.53, 420, 40, 0.03); //a quarter of circle;
    drawTarget(width * 0.7, height * 0.7, 490, 9); //circle on the middle;
    drawTarget(width * 0.405, height * 0.78, 540, 23); //the biggest circle;
}

//function to draw a circle;
void drawTarget(float xloc, float yloc, int size, int num) {
    float steps = size / num;
    for (int i = 0; i <= num; i++) {
        ellipse(xloc, yloc, size - i * steps, size - i * steps);
        fill(random(255), random(255), random(255));
    }
}

//function to draw a quarter circle;
void drawArc(float xloc, float yloc, int size, int num, float rac) {
    float steps = size / num;
    for (int i = 0; i <= num; i++) {
        arc(xloc, yloc, size - i * steps, size - i * steps, (0 + rac), (0.5 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 2, size - i * steps * 2, (0.5 + rac), (1.0 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 4, size - i * steps * 4, (1.0 + rac), (1.5 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 8, size - i * steps * 8, (0 + rac), (2.0 + rac) * PI);
        fill(random(255), random(255), random(255));
    }
}