if(this + "" != "_level0.aso#75555.rocket")
{
   this["aso#15665"] = _root["aso#21654"](this._x + this["aso#57588"],this._y + this["aso#94914"],this["aso#57588"] + this["aso#32790"],this["aso#94914"] + this["aso#64127"]);
   this["aso#60372"] = _root["aso#21654"](this._x - this["aso#57588"],this._y - this["aso#94914"],this["aso#57588"] + this["aso#32790"],this["aso#94914"] + this["aso#64127"]);
   _root["aso#39621"](this["aso#15665"],this["aso#60372"],0,20);
   this.lasdis = _root["aso#09676"](_root["aso#82936"][this["aso#15665"]] + _root["aso#82936"][this["aso#60372"]],_root["aso#88925"][this["aso#15665"]] + _root["aso#88925"][this["aso#60372"]],0,0);
   powe = 0;
   this.onEnterFrame = function()
   {
      if(this._currentframe < 102)
      {
         this["aso#14273"] = _root["aso#09676"](_root["aso#82936"][this["aso#15665"]] + _root["aso#82936"][this["aso#60372"]],_root["aso#88925"][this["aso#15665"]] + _root["aso#88925"][this["aso#60372"]],0,0);
         if(Math.abs(this["aso#14273"] - this.lasdis) > 15)
         {
            this.gotoAndPlay(102);
         }
         this.lasdis = this["aso#14273"];
         this._x = _root["aso#69566"][this["aso#15665"]];
         this._y = _root["aso#51599"][this["aso#15665"]];
         this._rotation = 90 + Math.atan2(_root["aso#51599"][this["aso#15665"]] - _root["aso#51599"][this["aso#60372"]],_root["aso#69566"][this["aso#15665"]] - _root["aso#69566"][this["aso#60372"]]) / 3.141592653589793 * 180;
         if(this._currentframe < 40)
         {
            _root["aso#88925"][this["aso#60372"]] += (_root["aso#69566"][this["aso#15665"]] - _root["aso#69566"][this["aso#60372"]]) * 0.2;
            _root["aso#82936"][this["aso#60372"]] += (_root["aso#51599"][this["aso#15665"]] - _root["aso#51599"][this["aso#60372"]]) * 0.2;
            _root["aso#88925"][this["aso#15665"]] += (_root["aso#69566"][this["aso#15665"]] - _root["aso#69566"][this["aso#60372"]]) * 0.2;
            _root["aso#82936"][this["aso#15665"]] += (_root["aso#51599"][this["aso#15665"]] - _root["aso#51599"][this["aso#60372"]]) * 0.2;
         }
         set("aso#20262",0);
         while(eval("aso#20262") < _root.barrelstotal)
         {
            if(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe < 4)
            {
               if(_root["aso#75555"]["barrel" + eval("aso#20262")].hitTest(_root["aso#69566"][this["aso#15665"]] + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] + _root["aso#75555"]._y,true))
               {
                  _root["aso#88925"][this["aso#15665"]] = 0;
                  _root["aso#82936"][this["aso#15665"]] = 0;
               }
            }
            eval("aso#20262")++;
         }
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(eval("aso#06892") != this["aso#49786"])
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#69566"][this["aso#15665"]] + _root["aso#75555"]._x,_root["aso#51599"][this["aso#15665"]] + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#69566"][this["aso#60372"]] + _root["aso#75555"]._x,_root["aso#51599"][this["aso#60372"]] + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest((_root["aso#69566"][this["aso#60372"]] + _root["aso#69566"][this["aso#15665"]]) / 2 + _root["aso#75555"]._x,(_root["aso#51599"][this["aso#60372"]] + _root["aso#51599"][this["aso#15665"]]) / 2 + _root["aso#75555"]._y,true))
               {
                  _root["aso#88925"][this["aso#15665"]] = 0;
                  _root["aso#82936"][this["aso#15665"]] = 0;
               }
            }
            eval("aso#06892")++;
         }
      }
   };
}
else
{
   this._visible = false;
   this.stop();
}
