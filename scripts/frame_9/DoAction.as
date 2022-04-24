function §aso#64127§(firstrb)
{
   set("aso#87533",0);
   while(eval("aso#87533") < 8)
   {
      if(firstrb)
      {
         if(eval("aso#87533") != 0)
         {
            duplicateMovieClip(_root.lizt.item0,"item" + eval("aso#87533"),16384 + eval("aso#87533"));
         }
      }
      _root.lizt["item" + eval("aso#87533")].onPress = function()
      {
         1;
      };
      _root.lizt["item" + eval("aso#87533")]._y = _root.lizt.item0._y + 22 * eval("aso#87533");
      _root.lizt["item" + eval("aso#87533")].gotoAndStop(1);
      _root.lizt["item" + eval("aso#87533")].l.text = labl[eval("aso#87533")];
      _root.lizt["item" + eval("aso#87533")].r.text = "";
      if(eval("aso#87533") > 5 && my_so.data["weapon" + (eval("aso#87533") + 1)] < 1)
      {
         _root.lizt["item" + eval("aso#87533")].o.text = "Important";
      }
      else
      {
         _root.lizt["item" + eval("aso#87533")].o.text = "";
      }
      if(my_so.data["weapon" + (eval("aso#87533") + 1)] == -1)
      {
         _root.lizt["item" + eval("aso#87533")].l.text += " (none)";
         _root.lizt["item" + eval("aso#87533")].r.text = "Buy ($" + buy[eval("aso#87533")] + ")";
      }
      else
      {
         _root.lizt["item" + eval("aso#87533")].l.text += " (" + (my_so.data["weapon" + (eval("aso#87533") + 1)] + 1) + "/" + (mxlevel[eval("aso#87533")] + 1) + " level)";
         if(my_so.data["weapon" + (eval("aso#87533") + 1)] < mxlevel[eval("aso#87533")])
         {
            _root.lizt["item" + eval("aso#87533")].r.text = "Update to " + (my_so.data["weapon" + (eval("aso#87533") + 1)] + 2) + " level ($" + level[eval("aso#87533")] + ")";
         }
      }
      set("aso#15244",0);
      if(my_so.data["weapon" + (eval("aso#87533") + 1)] == -1)
      {
         set("aso#15244",buy[eval("aso#87533")]);
      }
      else if(my_so.data["weapon" + (eval("aso#87533") + 1)] < mxlevel[eval("aso#87533")])
      {
         set("aso#15244",level[eval("aso#87533")]);
      }
      _root.lizt["item" + eval("aso#87533")]._alpha = 50;
      if(eval("aso#15244") != 0)
      {
         if(_root.global_money - eval("aso#15244") >= 0)
         {
            _root.lizt["item" + eval("aso#87533")]._alpha = 100;
         }
      }
      eval("aso#87533")++;
   }
   _root.money.text = "Your Money:  $" + _root.global_money;
}
_root["aso#85720"] = 8;
_root.money._visible = true;
_root.score._visible = true;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
var labl = new Array("Pistol","Rifle","Shot-gun","Rocket Launcher","Plasma Cannon","Electroshock","Helmet","Armor");
var buy = new Array(30,70,120,220,200,10,20,20);
var level = new Array(30,65,70,0,100,10,40,40);
var mxlevel = new Array(2,2,2,0,2,0,1,4);
eval("aso#64127")(true);
fire = false;
_root.onEnterFrame = function()
{
   set("aso#87533",0);
   while(eval("aso#87533") < 8)
   {
      if(_root.lizt["item" + eval("aso#87533")].hitTest(_xmouse,_ymouse,false))
      {
         if(fire)
         {
            _root.lizt["item" + eval("aso#87533")].gotoAndStop(3);
         }
         else
         {
            _root.lizt["item" + eval("aso#87533")].gotoAndStop(2);
         }
      }
      else
      {
         _root.lizt["item" + eval("aso#87533")].gotoAndStop(1);
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
   set("aso#87533",0);
   while(eval("aso#87533") < 8)
   {
      if(_root.lizt["item" + eval("aso#87533")].hitTest(_xmouse,_ymouse,false))
      {
         set("aso#15244",0);
         if(my_so.data["weapon" + (eval("aso#87533") + 1)] == -1)
         {
            set("aso#15244",buy[eval("aso#87533")]);
         }
         else if(my_so.data["weapon" + (eval("aso#87533") + 1)] < mxlevel[eval("aso#87533")])
         {
            set("aso#15244",level[eval("aso#87533")]);
         }
         if(eval("aso#15244") != 0)
         {
            if(_root.global_money - eval("aso#15244") >= 0)
            {
               my_so.data.mmoney += eval("aso#15244");
               _root.UpdateMoney();
               my_so.data["weapon" + (eval("aso#87533") + 1)] += 1;
               eval("aso#64127")(false);
            }
         }
      }
      eval("aso#87533")++;
   }
};
