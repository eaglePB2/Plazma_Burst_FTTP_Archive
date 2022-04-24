this.kill = false;
this["aso#57588"] = Math.random() * 6 - 3;
this["aso#94914"] = (- Math.random()) * 2 - 2;
this.rspeed = Math.random() * 30 - 15;
this.gotoAndStop(1);
this.onEnterFrame = function()
{
   if(this.disabled != true)
   {
      if(this._currentframe == 1 && !_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true) && this._y < 1000)
      {
         this._x += this["aso#57588"];
         this._y += this["aso#94914"];
         this["aso#94914"] += _root["aso#33211"];
      }
      else
      {
         this._x += this["aso#57588"];
         this._y += this["aso#94914"];
         this["aso#94914"] += _root["aso#33211"];
         if(this._currentframe == 1)
         {
            this.gotoAndPlay(3);
            this._x -= this["aso#57588"];
            this._y -= this["aso#94914"];
            this["aso#94914"] = (- this["aso#94914"]) * 0.5;
         }
      }
      this._rotation += this.rspeed;
   }
};
