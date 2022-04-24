k = 0;
while(k < 10)
{
   _root["aso#76947"](this._x,this._y,7,Math.random() * 20 - 10,Math.random() * 10);
   k++;
}
gl = new Array();
set("aso#87533",1);
while(eval("aso#87533") <= 6)
{
   gl[eval("aso#87533")] = _root["aso#70958"](this._x + this["glass" + eval("aso#87533")]._x,this._y + this["glass" + eval("aso#87533")]._y,Math.random() * 20 - 10,Math.random() * 10);
   eval("aso#87533")++;
}
this.onEnterFrame = function()
{
   spok = true;
   set("aso#87533",1);
   while(eval("aso#87533") <= 6)
   {
      if(_root["aso#45610"][gl[eval("aso#87533")]] == 1)
      {
         spok = false;
         this["glass" + eval("aso#87533")]._x = _root["aso#50207"][gl[eval("aso#87533")]] - this._x;
         this["glass" + eval("aso#87533")]._y = _root["aso#32240"][gl[eval("aso#87533")]] - this._y;
         this["glass" + eval("aso#87533")]._rotation = this["glass" + eval("aso#87533")]._x * 3;
         if(_root["aso#45610"][gl[eval("aso#87533")]] != 2)
         {
            set("aso#52991",1);
            while(eval("aso#52991") < _root.playerstot)
            {
               if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#52991")].hitTest(_root["aso#50207"][gl[eval("aso#87533")]] + _root["aso#56196"]._x,_root["aso#32240"][gl[eval("aso#87533")]] + _root["aso#56196"]._y,true))
                  {
                     _root["aso#17057"](_root["aso#50207"][gl[eval("aso#87533")]],_root["aso#32240"][gl[eval("aso#87533")]],_root["aso#56196"]["player" + eval("aso#52991")]["aso#20262"],"glass");
                     _root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] -= 10;
                     if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] > 0)
                     {
                        _root["aso#56196"]["player" + eval("aso#52991")].gotoAndPlay("hurt");
                     }
                     _root["aso#56196"]["player" + eval("aso#52991")]["aso#15665"] = "all";
                     _root["aso#45610"][gl[eval("aso#87533")]] = 2;
                  }
               }
               eval("aso#52991")++;
            }
         }
         if(Math.abs(_root["aso#69566"][gl[eval("aso#87533")]]) < 0.4)
         {
            if(Math.abs(_root["aso#63577"][gl[eval("aso#87533")]]) < 0.4)
            {
               _root["aso#45610"][gl[eval("aso#87533")]] = 2;
            }
         }
      }
      else if(this["glass" + eval("aso#87533")]._alpha > 0)
      {
         this["glass" + eval("aso#87533")]._alpha -= 5;
         spok = false;
      }
      else
      {
         this["glass" + eval("aso#87533")]._visible = false;
      }
      eval("aso#87533")++;
   }
   if(spok)
   {
      this.onEnterFrame = 1;
   }
};
