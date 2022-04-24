if(this + "" != "_level0.aso#56196.rocket")
{
   this["aso#96306"] = _root["aso#70958"](this._x + this["aso#38229"],this._y + this["aso#75555"],this["aso#38229"] + this["aso#94072"],this["aso#75555"] + this["aso#25409"]);
   this["aso#72350"] = _root["aso#70958"](this._x - this["aso#38229"],this._y - this["aso#75555"],this["aso#38229"] + this["aso#94072"],this["aso#75555"] + this["aso#25409"]);
   _root["aso#88925"](this["aso#96306"],this["aso#72350"],0,20);
   this.lasdis = _root["aso#90317"](_root["aso#63577"][this["aso#96306"]] + _root["aso#63577"][this["aso#72350"]],_root["aso#69566"][this["aso#96306"]] + _root["aso#69566"][this["aso#72350"]],0,0);
   powe = 0;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(this._currentframe < 102)
         {
            this["aso#94914"] = _root["aso#90317"](_root["aso#63577"][this["aso#96306"]] + _root["aso#63577"][this["aso#72350"]],_root["aso#69566"][this["aso#96306"]] + _root["aso#69566"][this["aso#72350"]],0,0);
            if(Math.abs(this["aso#94914"] - this.lasdis) > 15)
            {
               this.gotoAndPlay(102);
            }
            this.lasdis = this["aso#94914"];
            this._x = _root["aso#50207"][this["aso#96306"]];
            this._y = _root["aso#32240"][this["aso#96306"]];
            this._rotation = 90 + Math.atan2(_root["aso#32240"][this["aso#96306"]] - _root["aso#32240"][this["aso#72350"]],_root["aso#50207"][this["aso#96306"]] - _root["aso#50207"][this["aso#72350"]]) / 3.141592653589793 * 180;
            if(this._currentframe < 40)
            {
               _root["aso#69566"][this["aso#72350"]] += (_root["aso#50207"][this["aso#96306"]] - _root["aso#50207"][this["aso#72350"]]) * 0.2;
               _root["aso#63577"][this["aso#72350"]] += (_root["aso#32240"][this["aso#96306"]] - _root["aso#32240"][this["aso#72350"]]) * 0.2;
               _root["aso#69566"][this["aso#96306"]] += (_root["aso#50207"][this["aso#96306"]] - _root["aso#50207"][this["aso#72350"]]) * 0.2;
               _root["aso#63577"][this["aso#96306"]] += (_root["aso#32240"][this["aso#96306"]] - _root["aso#32240"][this["aso#72350"]]) * 0.2;
            }
            set("aso#00903",0);
            while(eval("aso#00903") < _root.barrelstotal)
            {
               if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe < 4)
               {
                  if(_root["aso#56196"]["barrel" + eval("aso#00903")].hitTest(_root["aso#50207"][this["aso#96306"]] + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] + _root["aso#56196"]._y,true))
                  {
                     _root["aso#69566"][this["aso#96306"]] = 0;
                     _root["aso#63577"][this["aso#96306"]] = 0;
                  }
               }
               eval("aso#00903")++;
            }
            set("aso#87533",0);
            while(eval("aso#87533") < _root.playerstot)
            {
               if(eval("aso#87533") != this["aso#99090"])
               {
                  if(_root["aso#56196"]["player" + this["aso#99090"]]["aso#33632"] == _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] && _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] != 0 && _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] != 3 || _root["aso#56196"]["player" + this["aso#99090"]]["aso#33632"] != _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"])
                  {
                     if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#50207"][this["aso#96306"]] + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] + _root["aso#56196"]._y,true) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#50207"][this["aso#72350"]] + _root["aso#56196"]._x,_root["aso#32240"][this["aso#72350"]] + _root["aso#56196"]._y,true) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest((_root["aso#50207"][this["aso#72350"]] + _root["aso#50207"][this["aso#96306"]]) / 2 + _root["aso#56196"]._x,(_root["aso#32240"][this["aso#72350"]] + _root["aso#32240"][this["aso#96306"]]) / 2 + _root["aso#56196"]._y,true))
                     {
                        _root["aso#69566"][this["aso#96306"]] = 0;
                        _root["aso#63577"][this["aso#96306"]] = 0;
                     }
                  }
               }
               eval("aso#87533")++;
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
