if(_root["aso#85720"] == 2)
{
   _root.money._visible = true;
   _root.score._visible = true;
   _root.stat_money = _root.stat_kills * 7 + _root.stat_headshots * 3;
   my_so.data.nht = "KILLS: " + _root.stat_kills + "\nHEADSHOTS: " + _root.stat_headshots + "\nSHOTS: " + _root.stat_shots + "\n<font color=\"#FFFFFF\">MONEY FOR COMPLETION THIS LEVEL: +$" + _root.stat_money + "</font>";
   if(_root.stat_shots < 1)
   {
      _root.stat_shots = 1;
   }
   my_so.data["lvl_score" + my_so.data.lastlevel] = Math.round((_root.stat_kills + _root.stat_headshots) * 100 * my_so.data.opt_bot);
   if(my_so.data["lvl_money" + my_so.data.lastlevel] == undefined)
   {
      my_so.data["lvl_money" + my_so.data.lastlevel] = _root.stat_money;
   }
   else if(my_so.data["lvl_money" + my_so.data.lastlevel] < _root.stat_money)
   {
      my_so.data["lvl_money" + my_so.data.lastlevel] = _root.stat_money;
   }
   _root.UpdateMoney();
   _root["aso#12039"]();
}
_root["aso#85720"] = 3;
_root.resu.htmlText = my_so.data.nht;
_root.onEnterFrame = function()
{
};
Mouse.show();
_root.gcur._visible = false;
if(_root.auto_buy == true)
{
   _root.auto_buy = false;
   _root.fromshop = 4;
   _root.gotoAndStop(9);
}
