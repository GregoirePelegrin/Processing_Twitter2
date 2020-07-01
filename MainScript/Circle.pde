class Circle{
  boolean moving;
  Circle precedent;
  Circle next;
  float radius;
 
  Circle(){
    this.moving = false;
    this.radius = initRadius;
  }
  
  void setFirst(){
    this.moving = true;
  }
  
  void setLast(){
    this.moving = false;
    this.radius = initRadius;
  }
  
  void setPrecedent(Circle c){
    this.precedent = c;
  }
  
  void setNext(Circle c){
    this.next = c;
  }
  
  void update(){
    if(!this.moving && this.next.radius <= this.radius - 20){
      this.moving = true;
    }
    if(this.moving){
      this.radius -= 1;
    }
    if(this.radius <= 0){
      this.moving = false;
      this.radius = initRadius;
    }
  }
  
  void display(){
    ellipse(0, 0, 2*this.radius, 2*this.radius);
  }
}
