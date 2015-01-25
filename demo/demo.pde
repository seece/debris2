import moonlander.library.*;

import ddf.minim.*;

int CANVAS_WIDTH = 480;
int CANVAS_HEIGHT = 360;

Moonlander moonlander;

void setup() {
  // Set up the drawing area size and renderer (P2D / P3D).
  size(CANVAS_WIDTH, CANVAS_HEIGHT, P2D);
  frameRate(60);

  // Parameters: 
  // - PApplet
  // - soundtrack filename (relative to sketch's folder)
  // - beats per minute in the song
  // - how many rows in Rocket correspond to one beat
  moonlander = Moonlander.initWithSoundtrack(this, "m2m.mp3", 120, 8);

  // Last thing in setup; start Moonlander. This either
  // connects to Rocket (development mode) or loads data 
  // from 'syncdata.rocket' (player mode).
  // Also, in player mode the music playback starts immediately.
  moonlander.start();
}

void draw() {
  double a = moonlander.getValue("eka");
  // moonlander.getIntValue("track_name")
  rect(50, 50, 30 + (int)a, 40);
}


