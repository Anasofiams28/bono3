int numBubbles = 20;

float[] xPositions;
float[] yPositions;

float[] xSpeeds;
float[] ySpeeds;

int[]xDirections;
int[] yDirections;

void setup() {
  size(500, 500);
  noStroke();
  
  xPositions = new float [numBubbles];
  yPositions = new float [numBubbles];
  
  xSpeeds = new float [numBubbles];
  ySpeeds = new float [numBubbles];
  
  xDirections = new int [numBubbles];
  yDirections = new int [numBubbles];
  
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
    xSpeeds[i] = random(5);
    ySpeeds[i] = random(5);
    xDirections[i] = (random(1) > 0.5) ? 1 : -1;
    yDirections[i] = (random(1) > 0.5) ? 1 : -1;
  }
}
    
void draw () {
  background(100, 200, 300);
  
  for (int i = 0; i < numBubbles; i++) {
    xPositions[i] = xPositions[i] + xSpeeds[i] * xDirections[i];
    yPositions[i] = yPositions[i] + ySpeeds[i] * yDirections[i];
    
    if (xPositions[i] >= width || xPositions[i] < 0) {
      xDirections[i] = xDirections[i] * -1;
    }
    
    if (yPositions[i] >= height || yPositions[i] < 0) {
      yDirections[i] = yDirections[i] * -1;
    }
    fill(0);
    ellipse(xPositions[i], yPositions[i], 50, 50);
  }
}
  
  
  
