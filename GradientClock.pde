// Gradient Clock
// 10 Nov 2017
// by Sarah Safranski
// A funky and colorful gradient clock that includes options for hour and minute or hour, minute and seconds.
// https://github.com/sarahsafranski/GradientClock

PFont font;

void setup() {
  //size(800, 800);
  fullScreen();

  //String[] fontList = PFont.list();
  //printArray(fontList);

  font = createFont("Braggadocio", 18);
  textFont(font);
  
}

void draw() {
  background(255);

  String ap = "am";
  int h = hour();    // Values from 0 - 23
  int min = minute();  // Values from 0 - 59
  int s = second();  // Values from 0 - 59

  if (h == 0) {
    h = 12;
  }

  if (h > 12) {
    h = h%12;
    ap = "pm";
  }

  String minp;  
  if (min < 10) {
    minp = nf(min, 2);
  } else {
    minp = "" + min;
  }

  //String time = "" +  h + ":" + min + ":" + s + " " + ap; // h_m_s__m_d_y
//String time = h + ":" + minp; // h_m
  String time = h + ":" + min + ":" + s; // h_m_s


//group one

 fill(#F17343);
  textSize(100);
  textAlign(CENTER, BOTTOM);
  text(time, width/5, height/5); 

  fill(#C03210);
  textSize(100);
  textAlign(CENTER, CENTER);
  text(time, width/5, height/5); 
  
   fill(#711106);
  textSize(100);
  textAlign(CENTER, TOP);
  text(time, width/5, height/5); 
  
  //group two
  
  fill(#18C29C);
  textSize(100);
  textAlign(CENTER, BOTTOM);
  text(time, width/2, height/2); 
  
  fill(#0B877D);
  textSize(100);
  textAlign(CENTER, CENTER);
  text(time, width/2, height/2); 
  
   fill(#031727);
  textSize(100);
  textAlign(CENTER, TOP);
  text(time, width/2, height/2); 
  
  //group three
 
   fill(#FBCC00);
  textSize(100);
  textAlign(CENTER, BOTTOM);
  text(time, width/1.25, height/1.25); 
  
  fill(#E4A50B);
  textSize(100);
  textAlign(CENTER, CENTER);
  text(time, width/1.25, height/1.25); 
  
   fill(#DA930A);
  textSize(100);
  textAlign(CENTER, TOP);
  text(time, width/1.25, height/1.25); 

  //println (time);
  
}
