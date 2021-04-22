class TemperatureData {
  FileIO weather = new FileIO();
  Date date = new Date();
  String [] minTemp = weather.dataTable.getStringColumn("Min Temperature");
  String [] maxTemp = weather.dataTable.getStringColumn("Max Temperature");
  String [] snowFall = weather.dataTable.getStringColumn("Snow Fall");
}
