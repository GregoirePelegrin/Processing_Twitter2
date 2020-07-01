ArrayList<Circle> circles;

int initRadius;
int nbrCircles;

void setup(){
  size(600, 600);
  frameRate(10);
  noFill();
  stroke(255);
  
  initRadius = 250;
  nbrCircles = 20;
  
  circles = new ArrayList<Circle>();
  Circle circle = new Circle();
  circle.setFirst();
  circles.add(circle);
  for(int i=1; i<nbrCircles; i++){
    circle = new Circle();
    circle.setPrecedent(circles.get(i-1));
    circles.get(i-1).setNext(circle);
    circles.add(circle);
  }
  circles.get(nbrCircles-1).setNext(circles.get(0));
  circles.get(0).setPrecedent(circles.get(nbrCircles-1));
}

void draw(){
  background(0);
  translate(width/2, height/2);
  
  for(Circle circle : circles){
    circle.update();
    circle.display();
  }
}
