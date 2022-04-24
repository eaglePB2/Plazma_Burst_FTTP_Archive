_root.frm = 3;
_root.money._visible = true;
_root.stat_money = _root.stat_kills * 150 + _root.stat_headshots * 50;
_root.resu.htmlText = "KILLS: " + _root.stat_kills + "\nHEADSHOTS: " + _root.stat_headshots + "\nSHOTS: " + _root.stat_shots + "\n<font color=\"#FFFFFF\">MONEY FOR COMPLETION THIS LEVEL: +" + _root.stat_money + "</font>";
_root.global_money += _root.stat_money;
_root.money.text = "Your Money:  $" + _root.global_money;
_root.onEnterFrame = function()
{
};
