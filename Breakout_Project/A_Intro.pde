void intro() {
  //music 
  intro.play(); 
 
  //design
  image(gif[f], 0, 0, width, height);
  if (frameCount % 4 == 0) f++;
  if (f==numPages) f = 0;
  fill(0);
  textFont(goodnight);
  textSize(55);
  text("goodnight punpun.", 280, 100);
  fill(50);
  text("goodnight punpun.",283,97);
  
  //play button
  strokeWeight(10);
  stroke(0);
  fill(255);
  rect(400,500,200,100);
  fill(0);
  textSize(35);
  text("play",465,555);
}

void introClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 500 && mouseY < 600) mode = INSTRUCTIONS;
}
