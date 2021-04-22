class BarChart {
  FileIO weather = new FileIO();
  //variable will be used to find data 
  int totalRows = weather.dataTable.getRowCount();
  //variables in order to manipulate
  int a = y_Axis;
  int b = y_Axis;
  int c = y_Axis;
  int t; //temp var to store temp from data point  
  int d; //date var to store date form data point 
  TemperatureData tempData = new TemperatureData();
  void drawMaxTempChartg() {
    a = y_Axis;
    for (int i = 0; i < totalRows; i++) {
       t = int(tempData.maxTemp[i]);
       d = int(tempData.date.year[i]);
       fill(255, 0, 0);
       strokeWeight(1);
       if (t > 0) {
         rectMode(CORNERS); //modifying rectangle corners
         rect(a, x_Axis, a+3, (x_Axis - t*10));
         a += 3;
        } 
        else 
          a += 3;
     }
  }
  void drawMaxTempChartl() {
    a = y_Axis;
    for (int i = 0; i < totalRows; i++) {
       t = int(tempData.maxTemp[i]);
       d = int(tempData.date.year[i]);
       fill(255, 0, 0);
       strokeWeight(1);
       if (t < 0) {
         rectMode(CORNERS);
         rect(a, x_Axis, a+3, (x_Axis + (-t*10)));
         a += 3;
        } 
        else 
          a += 3;
     }
  }
  void drawMinTempChartg() {
    b = y_Axis;
    for (int i = 0; i < totalRows; i++) {
       t = int(tempData.minTemp[i]);
       d = int(tempData.date.year[i]);
       fill(0, 0, 255);
       strokeWeight(1);
       if (t > 0) {
         rectMode(CORNERS);
         rect(b, x_Axis, b+3, (x_Axis - t*10));
         b += 3;
        } 
        else 
          b += 3;
     }
  }
  void drawMinTempChartl() {
    b = y_Axis; 
    for (int i = 0; i < totalRows; i++) {
       t = int(tempData.minTemp[i]);
       d = int(tempData.date.year[i]);
       fill(0, 0, 255);
       strokeWeight(1);
       if (t < 0) {
         rectMode(CORNERS);
         rect(b, x_Axis, b+3, (x_Axis + (-t*10)));
         b += 3;
        } 
        else 
          b += 3;
     }
  }
  void drawSnowFallChart() {
    for (int i = 0; i < totalRows; i++) {
       t = int(tempData.snowFall[i]);
       d = int(tempData.date.year[i]);
       fill(255);
       strokeWeight(0.5);
       if (t > 0) {
         rectMode(CORNERS);
         rect(c, x_Axis, c+3, (x_Axis - t*10));
         c += 3;
       } 
       else if (t < 0) {
         rectMode(CORNERS);
         rect(c, x_Axis, c+3, (x_Axis + (-t*10)));
         c += 3;
       }
     }
  }
}
