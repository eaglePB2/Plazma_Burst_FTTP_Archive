function §aso#31398§()
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
}
function UpdateMoney()
{
   _root.global_money = 0;
   lvl = 1;
   while(lvl <= 32)
   {
      if(my_so.data["lvl_money" + lvl] != undefined && !isNaN(my_so.data["lvl_money" + lvl]))
      {
         _root.global_money += my_so.data["lvl_money" + lvl];
         trace(lvl + ": " + my_so.data["lvl_money" + lvl]);
      }
      lvl++;
   }
   trace(my_so.data.mmoney);
   trace("----------");
   _root.global_money -= my_so.data.mmoney;
   _root["aso#61764"].text = "Your Money:  $" + _root.global_money;
}
function clickmenu(obj, item)
{
}
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
var my_so = SharedObject.getLocal("plazma_burst20");
if(undefined == my_so.data.uid || isNaN(my_so.data.uid))
{
   my_so.data.uid = Math.random() * 1000;
}
if(undefined == my_so.data.myname)
{
   my_so.data.myname = "Your Name Here";
}
_root["aso#18028"] = my_so.data.myname;
if(undefined == my_so.data["aso#37808"] || isNaN(my_so.data["aso#37808"]))
{
   my_so.data["aso#37808"] = 1;
}
if(undefined == my_so.data["aso#61764"] || isNaN(my_so.data["aso#61764"]))
{
   my_so.data["aso#61764"] = 0;
}
if(undefined == my_so.data.mmoney || isNaN(my_so.data.mmoney))
{
   my_so.data.mmoney = 0;
}
if(undefined == my_so.data["aso#94493"] || isNaN(my_so.data["aso#94493"]))
{
   my_so.data["aso#94493"] = 1;
}
if(undefined == my_so.data["aso#48394"] || isNaN(my_so.data["aso#48394"]))
{
   my_so.data["aso#48394"] = 2;
}
if(undefined == my_so.data["aso#01874"] || isNaN(my_so.data["aso#01874"]))
{
   my_so.data["aso#01874"] = 2;
}
if(undefined == my_so.data["aso#22625"] || isNaN(my_so.data["aso#22625"]))
{
   my_so.data["aso#22625"] = 3;
}
if(my_so.data.bg_sou == undefined || isNaN(my_so.data.bg_sou))
{
   my_so.data.bg_sou = true;
}
_root["aso#94493"] = my_so.data["aso#94493"];
_root["aso#48394"] = my_so.data["aso#48394"];
_root["aso#01874"] = my_so.data["aso#01874"];
_root["aso#22625"] = my_so.data["aso#22625"];
_root.kongregateServices.connect();
if(my_so.data.lwea == undefined || isNaN(my_so.data.lwea))
{
   my_so.data.lwea = 1;
}
if(my_so.data.breaking == undefined || isNaN(my_so.data.breaking))
{
   my_so.data.breaking = true;
}
if(my_so.data.blood == undefined || isNaN(my_so.data.blood))
{
   my_so.data.blood = true;
}
if(my_so.data.weapon1 == undefined || isNaN(my_so.data.weapon1))
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
_root["aso#87112"] = my_so.data["aso#37808"];
_root.global_money = my_so.data["aso#61764"];
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
var main_music1 = new Sound();
_root.main_music1.onSoundComplete = function()
{
   _root.main_music1.start(0,1);
};
