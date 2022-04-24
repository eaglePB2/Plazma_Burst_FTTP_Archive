this.kill = false;
set("aso#28614",Math.random() * 0.8 - 0.3);
this["aso#57588"] *= eval("aso#28614");
this["aso#94914"] *= eval("aso#28614");
this["aso#57588"] += Math.random() * 6 - 3;
this["aso#94914"] += Math.random() * 6 - 4;
this._xscale = 100 + Math.random() * 50;
this._yscale = this._xscale;
this._rotation = Math.random() * 360;
this.rspeed = Math.random() * 30 - 15;
this.onEnterFrame = function()
{
   if(!_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true) && this._y < 1000)
   {
      this._x += this["aso#57588"];
      this._y += this["aso#94914"];
      this._rotation += this.rspeed;
      this["aso#94914"] += _root["aso#33211"] * 2;
   }
};
