_root["aso#85720"] = 7;
_root.money._visible = true;
_root.score._visible = true;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
set("aso#87533",1);
while(eval("aso#87533") < 18)
{
   _root["lv" + eval("aso#87533")].numm.text = eval("aso#87533");
   _root["lv" + eval("aso#87533")].gotoAndStop(1);
   if(eval("aso#87533") > my_so.data.lastlevel)
   {
      _root["lv" + eval("aso#87533")]._alpha = 50;
   }
   else
   {
      _root["lv" + eval("aso#87533")].onPress = function()
      {
         1;
      };
   }
   eval("aso#87533")++;
}
fire = false;
_root.onEnterFrame = function()
{
   set("aso#87533",1);
   while(eval("aso#87533") < 18)
   {
      if(eval("aso#87533") <= my_so.data.lastlevel)
      {
         if(_root["lv" + eval("aso#87533")].hitTest(_xmouse,_ymouse,false))
         {
            if(fire)
            {
               _root["lv" + eval("aso#87533")].gotoAndStop(3);
            }
            else
            {
               _root["lv" + eval("aso#87533")].gotoAndStop(2);
            }
         }
         else
         {
            _root["lv" + eval("aso#87533")].gotoAndStop(1);
         }
      }
      eval("aso#87533")++;
   }
};
someListener.onMouseDown = function()
{
   fire = true;
};
someListener.onMouseUp = function()
{
   fire = false;
   set("aso#87533",1);
   while(eval("aso#87533") <= my_so.data.lastlevel)
   {
      if(_root["lv" + eval("aso#87533")].hitTest(_xmouse,_ymouse,false))
      {
         _root["aso#31819"] = eval("aso#87533");
         _root.gotoAndStop(12);
      }
      eval("aso#87533")++;
   }
};
