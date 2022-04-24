if(this + "" != "_level0.aso#75555.rocket")
{
   this["aso#72350"] = _root["aso#21654"](this._x + this["aso#26251"],this._y + this["aso#94914"],this["aso#26251"] + this["aso#26801"],this["aso#94914"] + this["aso#58138"]);
   this["aso#54383"] = _root["aso#21654"](this._x - this["aso#26251"],this._y - this["aso#94914"],this["aso#26251"] + this["aso#26801"],this["aso#94914"] + this["aso#58138"]);
   _root["aso#08284"](this["aso#72350"],this["aso#54383"],0,20);
   this.lasdis = _root["aso#03687"](_root["aso#51599"][this["aso#72350"]] + _root["aso#51599"][this["aso#54383"]],_root["aso#57588"][this["aso#72350"]] + _root["aso#57588"][this["aso#54383"]],0,0);
   powe = 0;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(this._currentframe < 102)
         {
            this["aso#45610"] = _root["aso#03687"](_root["aso#51599"][this["aso#72350"]] + _root["aso#51599"][this["aso#54383"]],_root["aso#57588"][this["aso#72350"]] + _root["aso#57588"][this["aso#54383"]],0,0);
            if(Math.abs(this["aso#45610"] - this.lasdis) > 15)
            {
               this.gotoAndPlay(102);
            }
            this.lasdis = this["aso#45610"];
            this._x = _root["aso#00903"][this["aso#72350"]];
            this._y = _root["aso#82936"][this["aso#72350"]];
            this._rotation = 90 + Math.atan2(_root["aso#82936"][this["aso#72350"]] - _root["aso#82936"][this["aso#54383"]],_root["aso#00903"][this["aso#72350"]] - _root["aso#00903"][this["aso#54383"]]) / 3.141592653589793 * 180;
            if(this._currentframe < 40)
            {
               _root["aso#57588"][this["aso#54383"]] += (_root["aso#00903"][this["aso#72350"]] - _root["aso#00903"][this["aso#54383"]]) * 0.2;
               _root["aso#51599"][this["aso#54383"]] += (_root["aso#82936"][this["aso#72350"]] - _root["aso#82936"][this["aso#54383"]]) * 0.2;
               _root["aso#57588"][this["aso#72350"]] += (_root["aso#00903"][this["aso#72350"]] - _root["aso#00903"][this["aso#54383"]]) * 0.2;
               _root["aso#51599"][this["aso#72350"]] += (_root["aso#82936"][this["aso#72350"]] - _root["aso#82936"][this["aso#54383"]]) * 0.2;
            }
            set("aso#76947",0);
            while(eval("aso#76947") < _root.barrelstotal)
            {
               if(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe < 4)
               {
                  if(_root["aso#75555"]["barrel" + eval("aso#76947")].hitTest(_root["aso#00903"][this["aso#72350"]] + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] + _root["aso#75555"]._y,true))
                  {
                     _root["aso#57588"][this["aso#72350"]] = 0;
                     _root["aso#51599"][this["aso#72350"]] = 0;
                  }
               }
               eval("aso#76947")++;
            }
            set("aso#06892",0);
            while(eval("aso#06892") < _root.playerstot)
            {
               if(eval("aso#06892") != this["aso#36416"])
               {
                  if(_root["aso#75555"]["player" + this["aso#36416"]]["aso#64969"] == _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] && _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] != 0 && _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] != 3 || _root["aso#75555"]["player" + this["aso#36416"]]["aso#64969"] != _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"])
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#00903"][this["aso#72350"]] + _root["aso#75555"]._x,_root["aso#82936"][this["aso#72350"]] + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#00903"][this["aso#54383"]] + _root["aso#75555"]._x,_root["aso#82936"][this["aso#54383"]] + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest((_root["aso#00903"][this["aso#54383"]] + _root["aso#00903"][this["aso#72350"]]) / 2 + _root["aso#75555"]._x,(_root["aso#82936"][this["aso#54383"]] + _root["aso#82936"][this["aso#72350"]]) / 2 + _root["aso#75555"]._y,true))
                     {
                        _root["aso#57588"][this["aso#72350"]] = 0;
                        _root["aso#51599"][this["aso#72350"]] = 0;
                     }
                  }
               }
               eval("aso#06892")++;
            }
         }
      }
   };
}
else
{
   this._visible = false;
   this.stop();
}
