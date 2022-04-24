a = 0;
while(a < _root["aso#30427"])
{
   if(_root["aso#70958"][a] == true || _root["aso#70958"][a] == false)
   {
      set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#00903"][a],_root["aso#82936"][a]));
      if(eval("aso#45610") < 100)
      {
         _root["aso#70958"][a] = true;
         _root["aso#57588"][a] -= (this._x - _root["aso#00903"][a]) / eval("aso#45610") * (100 - eval("aso#45610")) * 0.5;
         _root["aso#51599"][a] -= (this._y - _root["aso#82936"][a]) / eval("aso#45610") * (100 - eval("aso#45610")) * 0.5;
      }
   }
   a++;
}
_root["aso#70958"][this["aso#72350"]] = 2;
_root["aso#70958"][this["aso#54383"]] = 2;
set("aso#41984",_root["aso#75555"].colmap.hitTest(_root["aso#00903"][this["aso#72350"]] - 20 + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] + _root["aso#75555"]._y,true));
set("aso#86691",_root["aso#75555"].colmap.hitTest(_root["aso#00903"][this["aso#72350"]] + 20 + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] + _root["aso#75555"]._y,true));
set("aso#44768",_root["aso#75555"].colmap.hitTest(_root["aso#00903"][this["aso#72350"]] + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] - 20 + _root["aso#75555"]._y,true));
set("aso#55354",_root["aso#75555"].colmap.hitTest(_root["aso#00903"][this["aso#72350"]] + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] + 20 + _root["aso#75555"]._y,true));
if(eval("aso#41984") || eval("aso#86691") || eval("aso#55354") || eval("aso#44768"))
{
   set("aso#28614",0);
   set("aso#59951",0);
   if(eval("aso#41984") != eval("aso#86691"))
   {
      set("aso#59951",0);
      if(eval("aso#41984"))
      {
         set("aso#28614",1);
      }
      else
      {
         set("aso#28614",-1);
      }
   }
   else
   {
      set("aso#28614",0);
      if(eval("aso#55354"))
      {
         set("aso#59951",-1);
      }
      else
      {
         set("aso#59951",1);
      }
   }
   k = 0;
   while(k < 5)
   {
      _root["aso#52991"](this._x,this._y,7,10 - Math.random() * 20 + eval("aso#28614") * 10,10 - Math.random() * 20 + eval("aso#59951") * 10);
      k++;
   }
}
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
   {
      if(eval("aso#06892") == this["aso#36416"] || _root["aso#75555"]["player" + this["aso#36416"]]["aso#64969"] == _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] && _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] != 0 && _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] != 3 || _root["aso#75555"]["player" + this["aso#36416"]]["aso#64969"] != _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"])
      {
         set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
         if(eval("aso#45610") < 100)
         {
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            pwr = _root["aso#03687"](_root["aso#57588"][this["aso#54383"]],_root["aso#51599"][this["aso#54383"]],0,0);
            if(eval("aso#06892") == 0)
            {
               if(_root.my_so.data["aso#48394"] == 1)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 50 + pwr / 37 * 100;
               }
               if(_root.my_so.data["aso#48394"] == 2)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 100 + pwr / 37 * 100;
               }
               if(_root.my_so.data["aso#48394"] == 3)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 150 + pwr / 37 * 100;
               }
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 200 + pwr / 37 * 100;
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] += _root["aso#57588"][this["aso#54383"]] * 0.5 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] += _root["aso#51599"][this["aso#54383"]] * 0.5 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
            _root["aso#75555"]["player" + eval("aso#06892")].hunt = this["aso#36416"];
         }
         if(eval("aso#45610") < 300)
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
      if(_root["aso#03687"](this._x,this._y,_root["aso#75555"]["barrel" + eval("aso#76947")]._x,_root["aso#75555"]["barrel" + eval("aso#76947")]._y) < 100)
      {
         _root["aso#75555"]["barrel" + eval("aso#76947")].gotoAndPlay(4);
      }
   }
   eval("aso#76947")++;
}
