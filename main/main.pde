//December 4th, 2019
//Azlan and Yahye
//Milestone One

//import GUI library
import controlP5.*; 

ControlP5 cp5; 
//boolean values for Max and Min temps
boolean toggleValueMaxTemp;
boolean toggleValueMinTemp;
boolean barChartToggleFunction;
boolean scatterPlotToggleFunction;
boolean snowfallToggleFunction;
boolean JANUARY;
boolean FEBRUARY;
boolean MARCH;
boolean APRIL;
boolean MAY;
boolean JUNE;
boolean JULY;
boolean AUGUST;
boolean SEPTEMBER;
boolean OCTOBER;
boolean NOVEMBER;
boolean DECEMBER;
//x and y axis allignemnts
int y_Axis = 100;
int x_Axis = 450;
//used to determine what month the function would access
int month;
//toggle temperature buttons (not functioning)
Toggle minTemp;
Toggle maxTemp;
Toggle barChart;
Toggle scatterPlot;
Toggle snowfall;
//toggle month buttons (not functioning)
Toggle jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec;
//creating object axis 
Axis axis = new Axis();

void drawBarGraph() {
  //bar chart class used to create drawing
  BarChart barChart = new BarChart();
  if ((toggleValueMaxTemp == true) && (toggleValueMinTemp == true)) {
      barChart.drawMaxTempChartg();
      barChart.drawMinTempChartg();
      barChart.drawMinTempChartl();
      barChart.drawMaxTempChartl();
      axis.AxisFunc();
    } 
    else if ((toggleValueMaxTemp == true) && (toggleValueMinTemp == false)) {
      background(150);
      axis.AxisFunc();  
      barChart.drawMaxTempChartg();
      barChart.drawMaxTempChartl();
      axis.AxisFunc();
      } 
    else if ((toggleValueMaxTemp == false) && (toggleValueMinTemp == true)) {
        background(150);
        axis.AxisFunc();
        barChart.drawMinTempChartg();
        barChart.drawMinTempChartl();
        axis.AxisFunc();
    }
}

void drawScatterPlot() {
  //constructs the scatter plot class
  ScatterPointPlot sc = new ScatterPointPlot();
  if ((toggleValueMaxTemp == true) && (toggleValueMinTemp ==true)) {
      background(150);
      axis.AxisFunc();
      sc.drawScatterPlotmax();
      sc.drawScatterPlotmin();
      axis.AxisFunc();
    }
    else if ((toggleValueMaxTemp == true) && (toggleValueMinTemp == false)){
      background(150);
      axis.AxisFunc();
      sc.drawScatterPlotmax();
      axis.AxisFunc();
    }
    else if ((toggleValueMaxTemp == false) && (toggleValueMinTemp== true)) {
      background(150);
      axis.AxisFunc();
      sc.drawScatterPlotmin();
      axis.AxisFunc();
    }
}

void setup() {
  //accessing table data
  FileIO weather = new FileIO();
  //printing table data in the console for ease
  int totalRows = weather.dataTable.getRowCount();
  int totalColumns = weather.dataTable.getColumnCount();
  println("Year    " + "Month    " + "Max Temp    " + "Min Temp    " + "Snowfall    ");
  for (int i = 0; i < totalRows; i++) {
    TableRow tempRow = weather.dataTable.getRow(i);
    for (int j = 0; j < totalColumns; j++) {
      print(tempRow.getString((tempRow.getColumnTitle(j))));
      print("       ");
    }
    println();
  }

  //window size and background
  size(1200, 700);
  background(150);
  //use GUI for buttons and toggles
  cp5 = new ControlP5(this);
  //plot toggles
  barChart = cp5.addToggle("barChartToggleFunction").setValue(0).setPosition(130, 10).setSize(70, 60).setCaptionLabel("BAR CHART");
  scatterPlot = cp5.addToggle("scatterPlotToggleFunction").setValue(0).setPosition(210, 10).setSize(70, 60).setCaptionLabel("SCATTER PLOT");
  snowfall = cp5.addToggle("snowfallToggleFunction").setValue(0).setPosition(950, 10).setSize(70, 60).setCaptionLabel("SNOW FALL");
  //temperature buttons
  minTemp = cp5.addToggle("toggleValueMinTemp").setValue(1).setPosition(300, 10).setSize(70, 20).setCaptionLabel("SHOW MIN TEMP");
  maxTemp = cp5.addToggle("toggleValueMaxTemp").setValue(1).setPosition(385, 10).setSize(70, 20).setCaptionLabel("SHOW MAX TEMP");
  //month buttons
  jan = cp5.addToggle("JANUARY").setValue(0).setPosition(500, 10).setSize(65, 20);
  feb = cp5.addToggle("FEBRUARY").setValue(0).setPosition(570, 10).setSize(65, 20);
  mar = cp5.addToggle("MARCH").setValue(0).setPosition(640, 10).setSize(65, 20);
  apr = cp5.addToggle("APRIL").setValue(0).setPosition(710, 10).setSize(65, 20);
  may = cp5.addToggle("MAY").setValue(0).setPosition(780, 10).setSize(65, 20);
  jun = cp5.addToggle("JUNE").setValue(0).setPosition(850, 10).setSize(65, 20);
  jul = cp5.addToggle("JULY").setValue(0).setPosition(500, 50).setSize(65, 20);
  aug = cp5.addToggle("AUGUST").setValue(0).setPosition(570, 50).setSize(65, 20);
  sep = cp5.addToggle("SEPTEMBER").setValue(0).setPosition(640, 50).setSize(65, 20);
  oct = cp5.addToggle("OCTOBER").setValue(0).setPosition(710, 50).setSize(65, 20);
  nov = cp5.addToggle("NOVEMBER").setValue(0).setPosition(780, 50).setSize(65, 20);
  dec = cp5.addToggle("DECEMBER").setValue(0).setPosition(850, 50).setSize(65, 20);
}

void draw() {
  //if statements decide which void functions are called from object barChart
  if (barChartToggleFunction == true && scatterPlotToggleFunction == false) {
    drawBarGraph();
    }
  if (barChartToggleFunction == false && scatterPlotToggleFunction == true) {
    drawScatterPlot();
  }
  if ((barChartToggleFunction == false && scatterPlotToggleFunction == false) || (barChartToggleFunction == true && scatterPlotToggleFunction == true)) {
      background(150);
      axis.AxisFunc();
  }
  Months m = new Months();
  if (JANUARY==true) {
    m.jan();
  }
  if (FEBRUARY==true) {
    m.feb();
  }
  if (MARCH==true) {
    m.mar();
  }
  if (APRIL==true) {
    m.apr();
  }
  if (MAY==true) {
    m.may();
  }
  if (JUNE==true) {
    m.jun();
  }
  if (JULY==true) {
    m.jul();
  }
  if (AUGUST==true) {
    m.aug();
  }
  if (SEPTEMBER==true) {
    m.sep();
  }
  if (OCTOBER==true) {
    m.oct();
  }
  if (NOVEMBER==true) {
    m.nov();
  }
  if (DECEMBER==true) {
    m.dec();
  }
 axis.AxisFunc();
}
