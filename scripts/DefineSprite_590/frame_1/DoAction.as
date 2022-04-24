this.stop();
this.onEnterFrame = function()
{
   set("aso#87533",0);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
      {
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this))
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]._x > this._x - 30)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]._x < this._x + 30)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")]._x > this._x)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]._x = this._x + 30;
                  }
                  else
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]._x = this._x - 30;
                  }
                  if(Math.abs(_root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"]) > 8)
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
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = (- _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"]) * 0.5;
               }
            }
         }
      }
      eval("aso#87533")++;
   }
};
