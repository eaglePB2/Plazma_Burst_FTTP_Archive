function §aso#38779§(firstrb)
{
   set("aso#06892",0);
   while(eval("aso#06892") < 8)
   {
      if(firstrb)
      {
         if(eval("aso#06892") != 0)
         {
            duplicateMovieClip(_root.lizt.item0,"item" + eval("aso#06892"),16384 + eval("aso#06892"));
         }
      }
      _root.lizt["item" + eval("aso#06892")].onPress = function()
      {
         1;
      };
      _root.lizt["item" + eval("aso#06892")]._y = _root.lizt.item0._y + 22 * eval("aso#06892");
      _root.lizt["item" + eval("aso#06892")].gotoAndStop(1);
      _root.lizt["item" + eval("aso#06892")].l.text = labl[eval("aso#06892")];
      _root.lizt["item" + eval("aso#06892")].r.text = "";
      if(eval("aso#06892") > 5 && my_so.data["weapon" + (eval("aso#06892") + 1)] < 1)
      {
         _root.lizt["item" + eval("aso#06892")].o.text = "Important";
      }
      else
      {
         _root.lizt["item" + eval("aso#06892")].o.text = "";
      }
      if(my_so.data["weapon" + (eval("aso#06892") + 1)] == -1)
      {
         _root.lizt["item" + eval("aso#06892")].l.text += " (none)";
         _root.lizt["item" + eval("aso#06892")].r.text = "Buy ($" + buy[eval("aso#06892")] + ")";
      }
      else
      {
         _root.lizt["item" + eval("aso#06892")].l.text += " (" + (my_so.data["weapon" + (eval("aso#06892") + 1)] + 1) + "/" + (mxlevel[eval("aso#06892")] + 1) + " level)";
         if(my_so.data["weapon" + (eval("aso#06892") + 1)] < mxlevel[eval("aso#06892")])
         {
            _root.lizt["item" + eval("aso#06892")].r.text = "Update to " + (my_so.data["weapon" + (eval("aso#06892") + 1)] + 2) + " level ($" + level[eval("aso#06892")] + ")";
         }
      }
      set("aso#77918",0);
      if(my_so.data["weapon" + (eval("aso#06892") + 1)] == -1)
      {
         set("aso#77918",buy[eval("aso#06892")]);
      }
      else if(my_so.data["weapon" + (eval("aso#06892") + 1)] < mxlevel[eval("aso#06892")])
      {
         set("aso#77918",level[eval("aso#06892")]);
      }
      _root.lizt["item" + eval("aso#06892")]._alpha = 50;
      if(eval("aso#77918") != 0)
      {
         if(_root.global_money - eval("aso#77918") >= 0)
         {
            _root.lizt["item" + eval("aso#06892")]._alpha = 100;
         }
      }
      eval("aso#06892")++;
   }
   _root["aso#61764"].text = "Your Money:  $" + _root.global_money;
}
_root["aso#93101"] = 8;
_root["aso#61764"]._visible = true;
_root.score._visible = true;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
var labl = new Array("Pistol","Rifle","Shot-gun","Rocket Launcher","Plasma Cannon","Electroshock","Helmet","Armor");
var buy = new Array(30,70,120,220,200,10,30,20);
var level = new Array(30,65,70,0,100,10,60,50);
var mxlevel = new Array(2,2,2,0,2,0,1,4);
eval("aso#38779")(true);
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
         set("aso#77918",0);
         if(my_so.data["weapon" + (eval("aso#06892") + 1)] == -1)
         {
            set("aso#77918",buy[eval("aso#06892")]);
         }
         else if(my_so.data["weapon" + (eval("aso#06892") + 1)] < mxlevel[eval("aso#06892")])
         {
            set("aso#77918",level[eval("aso#06892")]);
         }
         if(eval("aso#77918") != 0)
         {
            if(_root.global_money - eval("aso#77918") >= 0)
            {
               my_so.data.mmoney += eval("aso#77918");
               _root.UpdateMoney();
               my_so.data["weapon" + (eval("aso#06892") + 1)] += 1;
               eval("aso#38779")(false);
            }
         }
      }
      eval("aso#06892")++;
   }
};
