function flash_start(){
  var fo = new FlashObject("../Client/css/header_v8.swf", "mymovie", "100%", "665", "7", "");
  fo.addParam("quality", "high");
  fo.addParam("scale", "noscale");
  fo.addParam("wmode", "transparent");
  fo.write("flashcontent");
}