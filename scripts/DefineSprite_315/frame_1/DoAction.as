this.kill = false;
this["aso#38229"] = Math.random() * 6 - 3;
this["aso#75555"] = (- Math.random()) * 2 - 2;
this.rspeed = Math.random() * 30 - 15;
this.gotoAndStop(1);
this.onEnterFrame = function()
{
   if(_root.gunpaused)
   {
      if(this.disabled != true)
      {
         if(this._currentframe == 1 && !_root["aso#56196"].colmap.hitTest(this._x + _root["aso#56196"]._x,this._y + _root["aso#56196"]._y,true) && this._y < 1000)
         {
            this._x += this["aso#38229"];
            this._y += this["aso#75555"];
            this["aso#75555"] += 0.5;
         }
         else
         {
            this._x += this["aso#38229"];
            this._y += this["aso#75555"];
            this["aso#75555"] += 0.5;
            if(this._currentframe == 1)
            {
               this._x -= this["aso#38229"];
               this._y -= this["aso#75555"];
               this.gotoAndPlay(3);
               this["aso#75555"] = (- this["aso#75555"]) * 0.25;
            }
         }
         this._rotation += this.rspeed;
      }
   }
};
