#include "testApp.h"

using namespace ofxCv;

void testApp::setup() {
	cam.initGrabber(1280, 720);
	tracker.setup();
	ofBackground(0);
	ofEnableSmoothing();

}

void testApp::update() {
	cam.update();
	if(cam.isFrameNew()) {
		tracker.update(toCv(cam));
	}

	jawDraw = tracker.getObjectPoints();

}

void testApp::draw() {

	//SHOW LIVE VIDEO
	//ofSetRectMode(OF_RECTMODE_CORNER);
	//ofSetColor(255,255,255);
	//cam.draw(0,0,1280,720);
	
	ofSetLineWidth(2);
	ofSetRectMode(OF_RECTMODE_CENTER);
	tracker.draw(TRUE);

	
	for(int i = 0; i < 17; i++){
		//cout << jawDraw[i].x << endl;
		ofSetColor(185,195,255,10);
		ofFill();
		ofSetRectMode(OF_RECTMODE_CENTER);
		ofSetLineWidth(5);
		ofRect((jawDraw[i].x*cs*1.2)+640,(jawDraw[i].y*cs)+500,jawDraw[i].x*cs*1,jawDraw[i].y*cs*5);

	}

	ofDrawBitmapString(ofToString((int) ofGetFrameRate()), 10, 10);

}

void testApp::keyPressed(int key) {
	if(key == 'r') {
		tracker.reset();
	}
}