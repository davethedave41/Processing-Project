class userInput{ 
  
String letters = "";
String b = "Search ";

  void setup() {
    textSize(3);
    //textAlign(CENTER);
  }  
  
  void draw() {
    //textAlign(CENTER);
    fill(255);
    rect(800, 20, 150, 50);
    textSize(15);
    textAlign(CENTER);
    fill(24);
    text(letters, 810, 50); //130, 40);
    //String b = "Search ";
    //textSize(15);
    //fill(24);
    //textAlign(CENTER);
    //text(b, 850, 50);
  }
  
  void keyPressed() {
    textSize(15);
    fill(24);
    textAlign(CENTER);
    text(b, 850, 50);
    if ((key == ENTER) || (key == RETURN) || (key == BACKSPACE)) {
      letters = letters.toLowerCase();
      println(letters);  // Print to console to see input
      letters = "";  // Clear the variable
    } else if ((key > 31) && (key != CODED)) { 
      // If the key is alphanumeric, add it to the String
      letters = letters + key; 
    }
  }
  
}