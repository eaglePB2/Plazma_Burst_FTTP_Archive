if(_root["aso#67753"] == 2)
{
   _root["aso#42405"]._visible = true;
   _root.score._visible = true;
   _root.stat_money = _root.stat_kills * 7 + _root.stat_headshots * 3;
   my_so.data.nht = "KILLS: " + _root.stat_kills + "\nHEADSHOTS: " + _root.stat_headshots + "\nSHOTS: " + _root.stat_shots + "\n<font color=\"#FFFFFF\">MONEY FOR COMPLETION THIS LEVEL: +$" + _root.stat_money + "</font>";
   if(_root.stat_shots < 1)
   {
      _root.stat_shots = 1;
   }
   my_so.data["lvl_score" + my_so.data["aso#51178"]] = Math.round((_root.stat_kills + _root.stat_headshots) / _root.stat_shots * 100 * my_so.data["aso#79731"]);
   _root.global_money += _root.stat_money;
   my_so.data["aso#42405"] = _root.global_money;
   _root["aso#42405"].text = "Your Money:  $" + _root.global_money;
   _root["aso#19420"]();
}
_root["aso#67753"] = 3;
_root.resu.htmlText = my_so.data.nht;
_root.onEnterFrame = function()
{
};
Mouse.show();
_root.gcur._visible = false;
