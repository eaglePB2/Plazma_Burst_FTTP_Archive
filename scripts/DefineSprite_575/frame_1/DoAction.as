this.stop();
this.onEnterFrame = function()
{
   set("aso#06892",0);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this))
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]._x > this._x - 30)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x < this._x + 30)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")]._x > this._x)
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]._x = this._x + 30;
                  }
                  else
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]._x = this._x - 30;
                  }
                  if(Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"]) > 8)
                  {
                     if(this._currentframe < 3)
                     {
                        this.gotoAndStop(this._currentframe + 1);
                     }
                     else if(this._currentframe == 3)
                     {
                        this.gotoAndPlay(4);
                     }
                  }
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = (- _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"]) * 0.5;
               }
            }
         }
      }
      eval("aso#06892")++;
   }
};
