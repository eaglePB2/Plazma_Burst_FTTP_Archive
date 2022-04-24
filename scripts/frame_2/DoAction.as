if(!loadfinished)
{
   _root.gotoAndStop(15);
}
_root.UpdateMoney();
_root["aso#85720"] = 1;
_root.money._visible = true;
_root.score._visible = true;
_root.visarea._visible = false;
_root.screenarea._visible = false;
_root.glow._alpha = 0;
_root.stop();
_root.onEnterFrame = function()
{
};
Mouse.show();
_root.gcur._visible = false;
_root.nick2.text = _root["aso#85299"];
_root.money.text = "Your Money:  $" + _root.global_money;
