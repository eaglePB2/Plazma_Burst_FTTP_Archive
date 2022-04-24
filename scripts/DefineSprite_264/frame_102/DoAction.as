a = 0;
while(a < _root["aso#36416"])
{
   if(_root["aso#64969"][a] == true || _root["aso#64969"][a] == false)
   {
      set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#69566"][a],_root["aso#51599"][a]));
      if(eval("aso#14273") < 100)
      {
         _root["aso#64969"][a] = true;
         _root["aso#88925"][a] -= (this._x - _root["aso#69566"][a]) / eval("aso#14273") * (100 - eval("aso#14273")) * 0.5;
         _root["aso#82936"][a] -= (this._y - _root["aso#51599"][a]) / eval("aso#14273") * (100 - eval("aso#14273")) * 0.5;
      }
   }
   a++;
}
_root["aso#64969"][this["aso#15665"]] = 2;
_root["aso#64969"][this["aso#60372"]] = 2;
set("aso#79310",_root["aso#75555"].colmap.hitTest(_root["aso#69566"][this["aso#15665"]] - 20 + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] + _root["aso#75555"]._y,true));
set("aso#30006",_root["aso#75555"].colmap.hitTest(_root["aso#69566"][this["aso#15665"]] + 20 + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] + _root["aso#75555"]._y,true));
set("aso#56746",_root["aso#75555"].colmap.hitTest(_root["aso#69566"][this["aso#15665"]] + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] - 20 + _root["aso#75555"]._y,true));
set("aso#98669",_root["aso#75555"].colmap.hitTest(_root["aso#69566"][this["aso#15665"]] + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] + 20 + _root["aso#75555"]._y,true));
if(eval("aso#79310") || eval("aso#30006") || eval("aso#98669") || eval("aso#56746"))
{
   set("aso#83907",0);
   set("aso#15244",0);
   if(eval("aso#79310") != eval("aso#30006"))
   {
      set("aso#15244",0);
      if(eval("aso#79310"))
      {
         set("aso#83907",1);
      }
      else
      {
         set("aso#83907",-1);
      }
   }
   else
   {
      set("aso#83907",0);
      if(eval("aso#98669"))
      {
         set("aso#15244",-1);
      }
      else
      {
         set("aso#15244",1);
      }
   }
   k = 0;
   while(k < 5)
   {
      _root["aso#96306"](this._x,this._y,7,10 - Math.random() * 20 + eval("aso#83907") * 10,10 - Math.random() * 20 + eval("aso#15244") * 10);
      k++;
   }
}
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
   {
      set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
      if(eval("aso#14273") < 100)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
         {
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2,15 - Math.random() * 30,15 - Math.random() * 30);
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 1)
         {
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,5,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,5,15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,5,15 - Math.random() * 30,15 - Math.random() * 30);
         }
         pwr = _root["aso#09676"](_root["aso#88925"][this["aso#60372"]],_root["aso#82936"][this["aso#60372"]],0,0);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= 200 + pwr / 37 * 100;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] += _root["aso#88925"][this["aso#60372"]] * 0.5;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] += _root["aso#82936"][this["aso#60372"]] * 0.5;
         _root["aso#75555"]["player" + eval("aso#06892")].hunt = this["aso#49786"];
      }
      if(eval("aso#14273") < 300)
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
      if(_root["aso#09676"](this._x,this._y,_root["aso#75555"]["barrel" + eval("aso#20262")]._x,_root["aso#75555"]["barrel" + eval("aso#20262")]._y) < 100)
      {
         _root["aso#75555"]["barrel" + eval("aso#20262")].gotoAndPlay(4);
      }
   }
   eval("aso#20262")++;
}
