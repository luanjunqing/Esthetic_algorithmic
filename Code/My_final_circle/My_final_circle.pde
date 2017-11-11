/*
 * @Author: LUAN Junqing 
 * @Date: 2017-11-02 23:50:57 
 * @Last Modified by:   LUAN Junqing 
 * @Last Modified time: 2017-11-02 23:50:57 
 */

float goldenRatio = (1 + sqrt(5) / 2);
ArrayList < Ball0 > balls0;
ArrayList < Ball1 > balls1;
ArrayList < Ball2 > balls2;
ArrayList < Ball3 > balls3;
static final float BALL_SIZE0 = 11, BALL_SIZE1 = 12, BALL_SIZE2 = 14, BALL_SIZE3 = 16;
int counter0 = 0, counter1 = 0, counter2 = 0, counter3 = 0;

void setup() {
    size(600, 800);
    noStroke();

    balls0 = new ArrayList < Ball0 > ();
    balls0.add(new Ball0(BALL_SIZE0, 0));

    balls1 = new ArrayList < Ball1 > ();
    balls1.add(new Ball1(BALL_SIZE1, 0));

    balls2 = new ArrayList < Ball2 > ();
    balls2.add(new Ball2(BALL_SIZE2, 0));

    balls3 = new ArrayList < Ball3 > ();
    balls3.add(new Ball3(BALL_SIZE3, 0));
}

void draw() {
    background(255, 255, 255);

    for (int i = balls0.size() - 1; i >= 0; i--) {
        balls0.get(i).shift(i, balls0);
        balls0.get(i).show(i);

        if (balls0.get(i).hasGoneTooFar()) {
            balls0.remove(i);
        }
    }

    for (int i = balls1.size() - 1; i >= 0; i--) {
        balls1.get(i).shift(i, balls1);
        balls1.get(i).show(i);

        if (balls1.get(i).hasGoneTooFar()) {
            balls1.remove(i);
        }
    }

    for (int i = balls2.size() - 1; i >= 0; i--) {
        balls2.get(i).shift(i, balls2);
        balls2.get(i).show(i);

        if (balls2.get(i).hasGoneTooFar()) {
            balls2.remove(i);
        }
    }

    for (int i = balls3.size() - 1; i >= 0; i--) {
        balls3.get(i).shift(i, balls3);
        balls3.get(i).show(i);

        if (balls3.get(i).hasGoneTooFar()) {
            balls3.remove(i);
        }
    }

    counter0++;
    counter1++;
    counter2++;
    counter3++;

    balls0.add(new Ball0(BALL_SIZE0 - (counter0 % 300) / 40, counter0 * radians(127.5)));
    balls1.add(new Ball1(BALL_SIZE1 - (counter1 % 300) / 40, counter1 * radians(127.5)));
    balls2.add(new Ball2(BALL_SIZE2 - (counter2 % 400) / 40, counter2 * radians(137.5)));
    balls3.add(new Ball3(BALL_SIZE3 - (counter3 % 300) / 30, counter3 * goldenRatio * PI));
}


class Ball0 {

    PVector worldCenter, ballPosition, direction;
    float size;

    Ball0(float diam, float angle) {
        this.size = diam;

        worldCenter = new PVector(width * 0.9, height * 0.58);
        ballPosition = worldCenter.copy();
        direction = new PVector(cos(angle), sin(angle));
    }


    void show(int index) {
        fill(map(index, 0, 255, 250, 90), 255, 0, 150);
        ellipse(ballPosition.x, ballPosition.y, size, size); //rect
    }

    void shift(int index, ArrayList < Ball0 > balls0) {
        for (int i = index + 1; i < balls0.size() - 1; i++) {
            if (PVector.dist(ballPosition, balls0.get(i).ballPosition) < 14) {
                ballPosition.add(direction);
            }
        }
    }

    boolean hasGoneTooFar() {
        if (PVector.dist(ballPosition, worldCenter) > width * 0.33) {
            return true;
        }
        return false;
    }
}

class Ball1 {

    PVector worldCenter, ballPosition, direction;
    float size;

    Ball1(float diam, float angle) {
        this.size = diam;

        worldCenter = new PVector(width * 0.7, height * 0.7);
        ballPosition = worldCenter.copy();
        direction = new PVector(cos(angle), sin(angle));
    }


    void show(int index) {
        fill(map(index, 200, 255, 250, 100), 100, 100, 255);
        ellipse(ballPosition.x, ballPosition.y, size, size);
    }

    void shift(int index, ArrayList < Ball1 > balls1) {
        for (int i = index + 1; i < balls1.size() - 1; i++) {
            if (PVector.dist(ballPosition, balls1.get(i).ballPosition) < 14) {
                ballPosition.add(direction);
            }
        }
    }

    boolean hasGoneTooFar() {
        if (PVector.dist(ballPosition, worldCenter) > width * 0.33) {
            return true;
        }
        return false;
    }
}



class Ball2 {

    PVector worldCenter, ballPosition, direction;
    float size;

    Ball2(float diam, float angle) {
        this.size = diam;
        worldCenter = new PVector(width * 0.405, height * 0.78);
        ballPosition = worldCenter.copy();
        direction = new PVector(cos(angle), sin(angle));
    }


    void show(int index) {
        fill(map(index, 60, 255, 250, 200), 20, 116, 255);
        ellipse(ballPosition.x, ballPosition.y, size, size);
    }

    void shift(int index, ArrayList < Ball2 > balls2) {
        for (int i = index + 1; i < balls2.size() - 1; i++) {
            if (PVector.dist(ballPosition, balls2.get(i).ballPosition) < 14) {
                ballPosition.add(direction);
            }
        }
    }

    boolean hasGoneTooFar() {
        if (PVector.dist(ballPosition, worldCenter) > width * 0.4) {
            return true;
        }
        return false;
    }
}

class Ball3 {

    PVector worldCenter, ballPosition, direction;
    float size;

    Ball3(float diam, float angle) {
        this.size = diam;
        worldCenter = new PVector(width * 0.2, height * 0.53);
        ballPosition = worldCenter.copy();
        direction = new PVector(cos(angle), sin(angle));
    }


    void show(int index) {
        fill(map(index, 0, 255, 20, 255), 255, 116, 100);
        ellipse(ballPosition.x, ballPosition.y, size, size);
    }

    void shift(int index, ArrayList < Ball3 > balls3) {
        for (int i = index + 1; i < balls3.size() - 1; i++) {
            if (PVector.dist(ballPosition, balls3.get(i).ballPosition) < 14) {
                ballPosition.add(direction);
            }
        }
    }

    boolean hasGoneTooFar() {
        if (PVector.dist(ballPosition, worldCenter) > width * 0.3) {
            return true;
        }
        return false;
    }
}