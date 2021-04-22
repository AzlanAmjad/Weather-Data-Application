class Date {
  FileIO weather = new FileIO();
  String [] year = weather.dataTable.getStringColumn("Year");
  String [] month = weather.dataTable.getStringColumn("Month"); 
}
