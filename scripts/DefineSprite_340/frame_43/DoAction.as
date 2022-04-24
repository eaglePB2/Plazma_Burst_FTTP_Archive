a = 0;
while(a < _root["aso#30427"])
{
   if(this["aso#72350"] != a)
   {
      if(_root["aso#70958"][a] == true || _root["aso#70958"][a] == false)
      {
         set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#00903"][a],_root["aso#82936"][a]));
         if(eval("aso#45610") < 200)
         {
            _root["aso#70958"][a] = true;
            _root["aso#57588"][a] -= (this._x - _root["aso#00903"][a]) / eval("aso#45610") * (200 - eval("aso#45610")) * 0.3;
            _root["aso#51599"][a] -= (this._y - _root["aso#82936"][a]) / eval("aso#45610") * (200 - eval("aso#45610")) * 0.3;
         }
      }
   }
   a++;
}
_root["aso#70958"][this["aso#72350"]] = 2;
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] != 0 || eval("aso#06892") == 0)
      {
         set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
         if(eval("aso#45610") < 200)
         {
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"barrel");
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 160;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] -= (this._x - _root["aso#75555"]["player" + eval("aso#06892")]._x) / eval("aso#45610") * (250 - eval("aso#45610")) * 0.1 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= (this._y - (_root["aso#75555"]["player" + eval("aso#06892")]._y - 60)) / eval("aso#45610") * (250 - eval("aso#45610")) * 0.1 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
            _root["aso#75555"]["player" + eval("aso#06892")].hunt = 0;
         }
         if(eval("aso#45610") < 400)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] = true;
         }
      }
   }
   eval("aso#06892")++;
}
set("aso#76947",0);
while(eval("aso#76947") < _root.barrelstotal)
{
   if(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe < 4)
   {
      if(_root["aso#03687"](this._x,this._y,_root["aso#75555"]["barrel" + eval("aso#76947")]._x,_root["aso#75555"]["barrel" + eval("aso#76947")]._y) < 200)
      {
         _root["aso#75555"]["barrel" + eval("aso#76947")].gotoAndPlay(4);
      }
   }
   eval("aso#76947")++;
}
