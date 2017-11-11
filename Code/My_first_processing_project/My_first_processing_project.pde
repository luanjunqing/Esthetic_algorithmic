/*
 * @Author: LUAN Junqing 
 * @Date: 2017-11-03 00:04:25 
 * @Last Modified by:   LUAN Junqing 
 * @Last Modified time: 2017-11-03 00:04:25 
 */
void setup() {
    size(600, 800);
    background(255, 255, 255);
    stroke(166, 165, 161);
    noLoop();
}

void draw() {
    drawTarget(width * 0.9, height * 0.58, 360, 40, 240); //circle on the right;
    drawArc(width * 0.2, height * 0.53, 420, 40, 0.03, 240); //a quarter of circle;
    drawTarget(width * 0.7, height * 0.7, 490, 9, 219); //circle on the middle;
    drawTarget(width * 0.405, height * 0.78, 540, 23, 225); //the biggest circle;
}

//function to draw a circle;
void drawTarget(float xloc, float yloc, int size, int num, int colour) {
    float steps = size / num;
    for (int i = 0; i <= num; i++) {
        ellipse(xloc, yloc, size - i * steps, size - i * steps);
    }
    fill(colour);
}

//function to draw a quarter circle;
void drawArc(float xloc, float yloc, int size, int num, float rac, int colour) {
    float steps = size / num;
    for (int i = 0; i < num; i++) {
        arc(xloc, yloc, size - i * steps, size - i * steps, (0 + rac), (0.5 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 2, size - i * steps * 2, (0.5 + rac), (1.0 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 4, size - i * steps * 4, (1.0 + rac), (1.5 + rac) * PI);
        arc(xloc, yloc, size - i * steps * 8, size - i * steps * 8, (0 + rac), (2.0 + rac) * PI);
    }
    fill(colour);
}