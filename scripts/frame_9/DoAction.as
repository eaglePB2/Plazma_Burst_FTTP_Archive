_root["aso#67753"] = 8;
_root["aso#42405"]._visible = true;
_root.score._visible = true;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
var labl = new Array("Pistol","Rifle","Shot-gun","Rocket Launcher","Plasma Cannon","Electroshock","Helmet","Armor");
var buy = new Array(20,70,100,140,160,10,60,20);
var level = new Array(50,40,30,0,0,10,0,50);
var mxlevel = new Array(2,2,2,0,0,0,0,4);
set("aso#06892",0);
while(eval("aso#06892") < 8)
{
   if(eval("aso#06892") != 0)
   {
      duplicateMovieClip(_root.lizt.item0,"item" + eval("aso#06892"),16384 + eval("aso#06892"));
   }
   _root.lizt["item" + eval("aso#06892")].onPress = function()
   {
      1;
   };
   _root.lizt["item" + eval("aso#06892")]._y = _root.lizt.item0._y + 22 * eval("aso#06892");
   _root.lizt["item" + eval("aso#06892")].gotoAndStop(1);
   _root.lizt["item" + eval("aso#06892")].l.text = labl[eval("aso#06892")];
   _root.lizt["item" + eval("aso#06892")].r.text = "";
   if(my_so.data["weapon" + (eval("aso#06892") + 1)] == -1)
   {
      _root.lizt["item" + eval("aso#06892")].l.text += " (none)";
      _root.lizt["item" + eval("aso#06892")]._alpha = 50;
      _root.lizt["item" + eval("aso#06892")].r.text = "Buy ($" + buy[eval("aso#06892")] + ")";
   }
   else
   {
      _root.lizt["item" + eval("aso#06892")].l.text += " (" + (my_so.data["weapon" + (eval("aso#06892") + 1)] + 1) + "/" + (mxlevel[eval("aso#06892")] + 1) + " level)";
      if(my_so.data["weapon" + (eval("aso#06892") + 1)] < mxlevel[eval("aso#06892")])
      {
         _root.lizt["item" + eval("aso#06892")].r.text = "Update to " + (my_so.data["weapon" + (eval("aso#06892") + 1)] + 2) + " level ($" + level[eval("aso#06892")] + ")";
      }
      _root.lizt["item" + eval("aso#06892")]._alpha = 100;
   }
   eval("aso#06892")++;
}
fire = false;
_root.onEnterFrame = function()
{
   set("aso#06892",0);
   while(eval("aso#06892") < 8)
   {
      if(_root.lizt["item" + eval("aso#06892")].hitTest(_xmouse,_ymouse,false))
      {
         if(fire)
         {
            _root.lizt["item" + eval("aso#06892")].gotoAndStop(3);
         }
         else
         {
            _root.lizt["item" + eval("aso#06892")].gotoAndStop(2);
         }
      }
      else
      {
         _root.lizt["item" + eval("aso#06892")].gotoAndStop(1);
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
   set("aso#06892",0);
   while(eval("aso#06892") < 8)
   {
      if(_root.lizt["item" + eval("aso#06892")].hitTest(_xmouse,_ymouse,false))
      {
         set("aso#22625",0);
         if(my_so.data["weapon" + (eval("aso#06892") + 1)] == -1)
         {
            set("aso#22625",buy[eval("aso#06892")]);
         }
         else if(my_so.data["weapon" + (eval("aso#06892") + 1)] < mxlevel[eval("aso#06892")])
         {
            set("aso#22625",level[eval("aso#06892")]);
         }
         if(eval("aso#22625") != 0)
         {
            if(_root.global_money >= eval("aso#22625"))
            {
               _root.global_money -= eval("aso#22625");
               my_so.data["aso#42405"] = _root.global_money;
               my_so.data["weapon" + (eval("aso#06892") + 1)] += 1;
               _root.gotoAndStop(2);
               _root.gotoAndStop(9);
            }
         }
      }
      eval("aso#06892")++;
   }
};
