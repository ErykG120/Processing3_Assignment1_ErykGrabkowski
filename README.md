# Processing3_Assignment1_ErykGrabkowski

Name: Eryk Grabkowski
Student Number: W20093474
Programme Name: WD155 - Information Technology // Programing Concepts
Description of the animation: Interactive Keypad with mouse and keyboard support and some easter eggs.
Known bugs/problems: 
   The Following Line Of Code:
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
  
  There is an issue with this and I am not sure what it is, essentially
  the other two easter eggs dissapear when you let go of mouse buttons, this is setup as a mousePressed
  instead and for some reason once you press on the "Click Here" box it stays there permanently.
  I think I need to use background(); but I don't know exactly and cannot figure it out, hence why I am writing
  here instead, thank you for reading and I hope you understand.
