_root["aso#93101"] = 7;
_root["aso#61764"]._visible = true;
_root.score._visible = true;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
set("aso#06892",1);
while(eval("aso#06892") < 18)
{
   _root["lv" + eval("aso#06892")].numm.text = eval("aso#06892");
   _root["lv" + eval("aso#06892")].gotoAndStop(1);
   if(eval("aso#06892") > my_so.data["aso#37808"])
   {
      _root["lv" + eval("aso#06892")]._alpha = 50;
   }
   else
   {
      _root["lv" + eval("aso#06892")].onPress = function()
      {
         1;
      };
   }
   eval("aso#06892")++;
}
fire = false;
_root.onEnterFrame = function()
{
   set("aso#06892",1);
   while(eval("aso#06892") < 18)
   {
      if(eval("aso#06892") <= my_so.data["aso#37808"])
      {
         if(_root["lv" + eval("aso#06892")].hitTest(_xmouse,_ymouse,false))
         {
            if(fire)
            {
               _root["lv" + eval("aso#06892")].gotoAndStop(3);
            }
            else
            {
               _root["lv" + eval("aso#06892")].gotoAndStop(2);
            }
         }
         else
         {
            _root["lv" + eval("aso#06892")].gotoAndStop(1);
         }
      }
      eval("aso#06892")++;
   }
};
someListener.onMouseDown = function()
{
   fire = true;
};
someListener.onMouseUp = function()
{
   fire = false;
   set("aso#06892",1);
   while(eval("aso#06892") <= my_so.data["aso#37808"])
   {
      if(_root["lv" + eval("aso#06892")].hitTest(_xmouse,_ymouse,false))
      {
         _root["aso#87112"] = eval("aso#06892");
         _root.gotoAndStop(12);
      }
      eval("aso#06892")++;
   }
};
