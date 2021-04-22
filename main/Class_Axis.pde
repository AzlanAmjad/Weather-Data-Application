class Axis {
  void AxisFunc() {
    //axis 
    strokeWeight(1);
    line(y_Axis, 0, y_Axis, 700);
    line(y_Axis, x_Axis, 1200, x_Axis);
    //positive y labels
    fill(255);
    textAlign(RIGHT);
    text("0", y_Axis - 5, x_Axis);
    text("5", y_Axis - 5, x_Axis - 50);
    text("10", y_Axis - 5, x_Axis - 100);
    text("15", y_Axis - 5, x_Axis - 150);
    text("20", y_Axis - 5, x_Axis - 200);
    text("25", y_Axis - 5, x_Axis - 250);
    //negative y labels
    textAlign(RIGHT);
    text("-5", y_Axis - 5, x_Axis + 50);
    text("-10", y_Axis - 5, x_Axis + 100);
    text("-15", y_Axis - 5, x_Axis + 150);
    text("-20", y_Axis - 5, x_Axis + 200);
    //x labels 
    textAlign(CENTER, BOTTOM);
    int labelPosition = y_Axis + 36;
    for (int i = 1991; i < 2020; i+=2) {
      text(i, labelPosition, x_Axis + 25);
      labelPosition += 72;
  }
 }
}
