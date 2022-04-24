a = 0;
while(a < _root["aso#54383"])
{
   if(this["aso#96306"] != a)
   {
      if(_root["aso#45610"][a] == true || _root["aso#45610"][a] == false)
      {
         set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#50207"][a],_root["aso#32240"][a]));
         if(eval("aso#94914") < 200)
         {
            _root["aso#45610"][a] = true;
            _root["aso#69566"][a] -= (this._x - _root["aso#50207"][a]) / eval("aso#94914") * (200 - eval("aso#94914")) * 0.5;
            _root["aso#63577"][a] -= (this._y - _root["aso#32240"][a]) / eval("aso#94914") * (200 - eval("aso#94914")) * 0.5;
         }
      }
   }
   a++;
}
_root["aso#45610"][this["aso#96306"]] = 2;
set("aso#87533",0);
while(eval("aso#87533") < _root.playerstot)
{
   if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] != 0 || eval("aso#87533") == 0)
      {
         set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]["player" + eval("aso#87533")]._y - 60));
         if(eval("aso#94914") < 200)
         {
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"barrel");
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 260;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "all";
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
            {
               _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay("hurt");
            }
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] -= (this._x - _root["aso#56196"]["player" + eval("aso#87533")]._x) / eval("aso#94914") * (250 - eval("aso#94914")) * 0.2 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= (this._y - (_root["aso#56196"]["player" + eval("aso#87533")]._y - 60)) / eval("aso#94914") * (250 - eval("aso#94914")) * 0.2 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
            _root["aso#56196"]["player" + eval("aso#87533")].hunt = 0;
         }
         if(eval("aso#94914") < 400)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = true;
         }
      }
   }
   eval("aso#87533")++;
}
set("aso#00903",0);
while(eval("aso#00903") < _root.barrelstotal)
{
   if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe < 4)
   {
      if(_root["aso#90317"](this._x,this._y,_root["aso#56196"]["barrel" + eval("aso#00903")]._x,_root["aso#56196"]["barrel" + eval("aso#00903")]._y) < 200)
      {
         _root["aso#56196"]["barrel" + eval("aso#00903")].gotoAndPlay(4);
      }
   }
   eval("aso#00903")++;
}
