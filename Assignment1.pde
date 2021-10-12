// Eryk Grabkowski - Assignment 1 - Commented Version.

// Colours...
color background_color = color(49, 54, 56);
color top_box = color(220, 230, 219);
color entry_text_color = color(7, 16, 47);
color button_color = color(128, 130, 105);
color button_text_color = color(255, 255, 255);
color button_pressed = color(252, 58, 58);
color button_text_color_pressed = color(255, 255, 255);

// Setup.
void setup() // Set-up frame once.
{
  size(300, 400); // The size of the display window. (300 x 400 PX)
  background(background_color); // Change the background colour to grey using the color variable.
  textSize(50); // Sets the text-size to 50px.
  strokeWeight(5); // Sets the outline to be 5px wide.
  textAlign(CENTER); // Sets the text to the left/"center" like an actual calculator.
  smooth(); // Enables anti-aliasing and smooths edges.
  frameRate(60); // Program runs at 60 FPS / 60Hz.
  PFont CourierNew;
  CourierNew = loadFont("CourierNew.vlw");
  textFont(CourierNew);
}                       

// Setup 2.
void draw() // Set-up frame to draw constantly.
{
  println(mouseX, ":", mouseY); // Prints the mouse position in console. Debugging purposes.

  // Variables for numbers #1
  int X1 = 80; // X1.
  int Y1 = 20; // Y1.

  // Keypad.
  fill(top_box); // Change the colour to light blue using the color variable.
  rect(Y1-10, Y1, X1+200, X1-Y1, Y1);
  
  fill(button_color); // Change the colour to yellow using the color variable.
  rect(Y1-10, X1+20, X1, X1, Y1); // 7.
  rect(X1+30, X1+20, X1, X1, Y1); // 8.
  rect(X1+130, X1+20, X1, X1, Y1); // 9.

  rect(Y1-10, X1+120, X1, X1, Y1); // 4.
  rect(X1+30, X1+120, X1, X1, Y1); // 5.
  rect(X1+130, X1+120, X1, X1, Y1); // 6.

  rect(Y1-10, X1+220, X1, X1, Y1); // 1.
  rect(X1+30, X1+220, X1, X1, Y1); // 2.
  rect(X1+130, X1+220, X1, X1, Y1); // 3.

  // Variables for numbers #2
  int X2 = 35; // X2.
  int Y2 = 160; // Y2.

  // Numbers.
  fill(button_text_color); // Change the colour to purple using the color variable.
  text("7", X2, Y2); // 7.
  text("8", X2+100, Y2); // 8. 
  text("9", X2+200, Y2); // 9. 

  text("4", X2, Y2+100); // 4.
  text("5", X2+100, Y2+100); // 5. 
  text("6", X2+200, Y2+100); // 6. 

  text("1", X2, Y2+200); // 1.
  text("2", X2+100, Y2+200); // 2.
  text("3", X2+200, Y2+200); // 3.
  
  // Mouse Controls.

  if (mousePressed == true && mouseX >=10 && mouseX <=90 && mouseY >=300 && mouseY <=390)
  {
    fill(entry_text_color);
    text("ONE", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+220, X1, X1, Y1); // 1.
    fill(button_text_color_pressed);
    text("1", X2, Y2+200); // 1.
  } 
  
  else if (mousePressed == true && mouseX >=110 && mouseX <=190 && mouseY >=300 && mouseY <=390)
  {
    fill(entry_text_color);
    text("TWO", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+220, X1, X1, Y1); // 2.
    fill(button_text_color_pressed);
    text("2", X2+100, Y2+200); // 2.
  } 
  
  else if (mousePressed == true && mouseX >=210 && mouseX <=290 && mouseY >=300 && mouseY <=390)
  {
    fill(entry_text_color);
    text("THREE", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+220, X1, X1, Y1); // 3.
    fill(button_text_color_pressed);
    text("3", X2+200, Y2+200); // 3.
  } 
  
  else if (mousePressed == true && mouseX >=10 && mouseX <=90 && mouseY >=200 && mouseY <=280)
  {
    fill(entry_text_color);
    text("FOUR", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+120, X1, X1, Y1); // 4.
    fill(button_text_color_pressed);
    text("4", X2, Y2+100); // 4.
  } 
  
  else if (mousePressed == true && mouseX >=110 && mouseX <=190 && mouseY >=200 && mouseY <=280)
  {
    fill(entry_text_color);
    text("FIVE", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+120, X1, X1, Y1); // 5.
    fill(button_text_color_pressed);
    text("5", X2+100, Y2+100); // 5.
  } 
  
  else if (mousePressed == true && mouseX >=210 && mouseX <=290 && mouseY >=200 && mouseY <=280)
  {
    fill(entry_text_color);
    text("SIX", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+120, X1, X1, Y1); // 6.
    fill(button_text_color_pressed);
    text("6", X2+200, Y2+100); // 6.
  } 
  
  else if (mousePressed == true && mouseX >=10 && mouseX <=90 && mouseY >=100 && mouseY <=180)
  {
    fill(entry_text_color);
    text("SEVEN", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+20, X1, X1, Y1); // 7.
    fill(button_text_color_pressed);
    text("7", X2, Y2); // 7.
  } 
  
  else if (mousePressed == true && mouseX >=110 && mouseX <=190 && mouseY >=100 && mouseY <=180)
  {
    fill(entry_text_color);
    text("EIGHTH", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+20, X1, X1, Y1); // 8.
    fill(button_text_color_pressed);
    text("8", X2+100, Y2); // 8.
  } 
  
  else if (mousePressed == true && mouseX >=210 && mouseX <=290 && mouseY >=100 && mouseY <=180)
  {
    fill(entry_text_color);
    text("NINE", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+20, X1, X1, Y1); // 9.
    fill(button_text_color_pressed);
    text("9", X2+200, Y2); // 9.
  }

  // Easter Egg.
  if (mouseButton == RIGHT)
  {
    textSize(15); // Sets a small text size for Easter Egg. 
    fill(255, 0, 0);
    text(":)", X2+130, Y2+100); // 5. 
    textSize(50); // Sets the text-size back to 50px.
  } 
  else 
  {
    textSize(15); // Sets a small text size for Easter Egg.
    fill(255);
    text("RIGHT CLICK FOR EASTER EGG", 150, 395);
    textSize(50); // Sets the text-size back to 50px.
  }
  
  if(mouseButton == CENTER)
  {
    textSize(15); 
    fill(255, 0, 0);
    text(":(", X2+130, Y2+80);
    textSize(50);
  }
  else
  {
    textSize(15); // Sets a small text size for Easter Egg.
    fill(255);
    text("MIDDLE CLICK FOR EASTER EGG", 150, 15);
    textSize(50); // Sets the text-size back to 50px.
  }
  
  if(mousePressed == true && mouseX >=0 && mouseX <=300 && mouseY >=80 && mouseY <=100)
  {
    textSize(15); 
    fill(255);
    text("Hello There", 150, 195);
    textSize(50);
  }
  else
  {
    textSize(15); // Sets a small text size for Easter Egg.
    fill(255);
    text("<--------- CLICK HERE --------->", 150, 95);
    textSize(50); // Sets the text-size back to 50px.
  }

  // Keyboard Controls.
  if (keyPressed == true && key == '1')
  {
    fill(entry_text_color);
    text("ONE", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+220, X1, X1, Y1); // 1.
    fill(button_text_color_pressed);
    text("1", X2, Y2+200); // 1.
  } 
  
  else if (keyPressed == true && key == '2')
  {
    fill(entry_text_color);
    text("TWO", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+220, X1, X1, Y1); // 2.
    fill(button_text_color_pressed);
    text("2", X2+100, Y2+200); // 2.
  } 
  
  else if (keyPressed == true && key == '3')
  {
    fill(entry_text_color);
    text("THREE", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+220, X1, X1, Y1); // 3.
    fill(button_text_color_pressed);
    text("3", X2+200, Y2+200); // 3.
  } 
  
  else if (keyPressed == true && key == '4')
  {
    fill(entry_text_color);
    text("FOUR", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+120, X1, X1, Y1); // 4.
    fill(button_text_color_pressed);
    text("4", X2, Y2+100); // 4.
  } 
  
  else if (keyPressed == true && key == '5')
  {
    fill(entry_text_color);
    text("FIVE", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+120, X1, X1, Y1); // 5.
    fill(button_text_color_pressed);
    text("5", X2+100, Y2+100); // 5.
  } 
  
  else if (keyPressed == true && key == '6')
  {
    fill(entry_text_color);
    text("SIX", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+120, X1, X1, Y1); // 6.
    fill(button_text_color_pressed);
    text("6", X2+200, Y2+100); // 6.
  } 
  
  else if (keyPressed == true && key == '7')
  {
    fill(entry_text_color);
    text("SEVEN", 150, 65);
    fill(button_pressed);
    rect(Y1-10, X1+20, X1, X1, Y1); // 7.
    fill(button_text_color_pressed);
    text("7", X2, Y2); // 7.
  } 
  
  else if (keyPressed == true && key == '8')
  {
    fill(entry_text_color);
    text("EIGHTH", 150, 65);
    fill(button_pressed);
    rect(X1+30, X1+20, X1, X1, Y1); // 8.
    fill(button_text_color_pressed);
    text("8", X2+100, Y2); // 8.
  } 
  
  else if (keyPressed == true && key == '9')
  {
    fill(entry_text_color);
    text("NINE", 150, 65);
    fill(button_pressed);
    rect(X1+130, X1+20, X1, X1, Y1); // 9.
    fill(button_text_color_pressed);
    text("9", X2+200, Y2); // 9.
  } 
}
