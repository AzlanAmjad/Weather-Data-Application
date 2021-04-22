class ScatterPointPlot{
  FileIO weather = new FileIO();
  int totalrows = weather.dataTable.getRowCount();
  TemperatureData tempData = new TemperatureData();
  void drawScatterPlotmax() {
    int y = y_Axis;
    int x = x_Axis;
    int i = 0;
    for ( i= 0; i <totalrows; i++) {
      float s = float(tempData.maxTemp[i]);
      strokeWeight(1);
      stroke(0);
      fill(255, 0, 0);
      ellipse(y + 1.5, x - s*10, 3, 3);
      y += 3;
    }
  }
 void drawScatterPlotmin() {
    int y = y_Axis;
    int x = x_Axis;
    int i=0;
    for ( i= 0; i <totalrows; i++) {
      float s = float(tempData.minTemp[i]);
      strokeWeight(1);
      stroke(0);
      fill(0, 0, 255);
      ellipse(y + 1.5, x - s*10, 3, 3);
      y += 3;
    }
  }
}
