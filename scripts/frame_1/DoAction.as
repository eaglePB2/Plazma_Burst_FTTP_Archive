function §aso#19420§()
{
   _root.my_score = 0;
   lvl = 1;
   while(lvl <= 32)
   {
      if(my_so.data["lvl_score" + lvl] != undefined && !isNaN(my_so.data["lvl_score" + lvl]))
      {
         _root.my_score += my_so.data["lvl_score" + lvl];
      }
      lvl++;
   }
   _root.score.text = "Score: " + _root.my_score;
   _root.kongregateScores.submit(_root.my_score);
   my_xml2.load(_root.score_server + "?cmd=update&id=" + my_so.data.uid + "&name=" + _root["aso#61343"] + "&num=" + _root.my_score);
}
function clickmenu(obj, item)
{
}
var main_music1 = new Sound();
var main_music2 = new Sound();
var main_music3 = new Sound();
var main_music4 = new Sound();
var main_music5 = new Sound();
var main_music = new Sound();
_root.score_server = "scores.php";
var my_xml2 = new XML();
System.useCodepage = true;
my_xml2.ignoreWhite = true;
my_xml2.onLoad = function(success)
{
   if(success)
   {
      if(my_xml2.childNodes[0].attributes.place > 0)
      {
         _root.score.text = "Score: " + _root.my_score + "  // " + my_xml2.childNodes[0].attributes.place + " place";
      }
      else
      {
         _root.score.text = "Score: " + _root.my_score;
      }
   }
   else
   {
      _root.score.text = "Score: " + _root.my_score;
   }
};
var my_so = SharedObject.getLocal("plazma_burst16");
if(undefined == my_so.data.uid)
{
   my_so.data.uid = Math.random() * 1000;
}
if(undefined == my_so.data.myname)
{
   my_so.data.myname = "Your Name Here";
}
_root["aso#61343"] = my_so.data.myname;
if(undefined == my_so.data["aso#51178"])
{
   my_so.data["aso#51178"] = 1;
}
if(undefined == my_so.data["aso#42405"])
{
   my_so.data["aso#42405"] = 0;
}
if(undefined == my_so.data["aso#13852"])
{
   my_so.data["aso#13852"] = 1;
}
if(undefined == my_so.data["aso#79731"])
{
   my_so.data["aso#79731"] = 2;
}
if(undefined == my_so.data["aso#70537"])
{
   my_so.data["aso#70537"] = 1;
}
if(undefined == my_so.data["aso#91288"])
{
   my_so.data["aso#91288"] = 3;
}
_root["aso#13852"] = my_so.data["aso#13852"];
_root["aso#79731"] = my_so.data["aso#79731"];
_root["aso#70537"] = my_so.data["aso#70537"];
_root["aso#91288"] = my_so.data["aso#91288"];
_root.kongregateServices.connect();
if(my_so.data.lwea == undefined)
{
   my_so.data.lwea = 1;
}
if(my_so.data.weapon1 == undefined)
{
   my_so.data.weapon1 = 0;
   my_so.data.weapon2 = -1;
   my_so.data.weapon3 = -1;
   my_so.data.weapon4 = -1;
   my_so.data.weapon5 = -1;
   my_so.data.weapon6 = 0;
   my_so.data.weapon7 = -1;
   my_so.data.weapon8 = -1;
   my_so.data.weapon9 = -1;
}
_root["aso#25830"] = my_so.data["aso#51178"];
_root.global_money = my_so.data["aso#42405"];
var my_cmi = new ContextMenu();
var my_cm = new ContextMenu();
my_cm.customItems.push(new ContextMenuItem("Game By .:Eric Gurt:.",clickmenu,true));
my_cm.builtInItems.print = false;
my_cm.builtInItems.zoom = false;
my_cm.builtInItems.play = false;
my_cm.builtInItems.loop = false;
my_cm.builtInItems.rewind = false;
my_cm.builtInItems.forward_back = false;
this.menu = my_cm;
