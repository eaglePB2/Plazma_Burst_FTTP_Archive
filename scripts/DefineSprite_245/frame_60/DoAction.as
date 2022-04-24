a = 0;
while(a < _root["aso#36416"])
{
   if(this["aso#15665"] != a)
   {
      if(_root["aso#64969"][a] == true || _root["aso#64969"][a] == false)
      {
         set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#69566"][a],_root["aso#51599"][a]));
         if(eval("aso#14273") < 200)
         {
            _root["aso#64969"][a] = true;
            _root["aso#88925"][a] -= (this._x - _root["aso#69566"][a]) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.3;
            _root["aso#82936"][a] -= (this._y - _root["aso#51599"][a]) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.3;
         }
      }
   }
   a++;
}
_root["aso#64969"][this["aso#15665"]] = 2;
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
   {
      set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
      if(eval("aso#14273") < 200)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
         {
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2);
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 1)
         {
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,5);
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= 160;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] -= (this._x - _root["aso#75555"]["player" + eval("aso#06892")]._x) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= (this._y - (_root["aso#75555"]["player" + eval("aso#06892")]._y - 60)) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.1;
         _root["aso#75555"]["player" + eval("aso#06892")].hunt = 0;
      }
      if(eval("aso#14273") < 400)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = true;
      }
   }
   eval("aso#06892")++;
}
set("aso#20262",0);
while(eval("aso#20262") < _root.barrelstotal)
{
   if(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe < 4)
   {
      if(_root["aso#09676"](this._x,this._y,_root["aso#75555"]["barrel" + eval("aso#20262")]._x,_root["aso#75555"]["barrel" + eval("aso#20262")]._y) < 200)
      {
         _root["aso#75555"]["barrel" + eval("aso#20262")].gotoAndPlay(4);
      }
   }
   eval("aso#20262")++;
}
