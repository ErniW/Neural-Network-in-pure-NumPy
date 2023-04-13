boolean whichTeam = false;

Table table = new Table();

void setup(){
  size(600,400);
  background(255);
  strokeWeight(10);
  
  table.addColumn("x");
  table.addColumn("y");
  table.addColumn("prediction");
  
  stroke(0,0,255);
}

void draw(){
  
}

void mousePressed(){
  int x = mouseX;
  int y = mouseY;
  point(x,y); 
  
  TableRow tRow = table.addRow();
  tRow.setInt("x", x);
  tRow.setInt("y", y);
  tRow.setInt("prediction", int(whichTeam));
  
  saveTable(table, "data.csv");
}

void keyPressed(){
  whichTeam = !whichTeam;
  
  if(whichTeam) stroke(255,0,0);
  else stroke(0,0,255);
}
