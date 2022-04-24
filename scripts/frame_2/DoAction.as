_root.UpdateMoney();
_root["aso#93101"] = 1;
_root["aso#61764"]._visible = true;
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
_root.nick2.text = _root["aso#18028"];
_root["aso#61764"].text = "Your Money:  $" + _root.global_money;
