this.kill = false;
set("aso#52570",Math.random() * 0.8 - 0.3);
this["aso#38229"] *= eval("aso#52570");
this["aso#75555"] *= eval("aso#52570");
this["aso#38229"] += Math.random() * 6 - 3;
this["aso#75555"] += Math.random() * 6 - 4;
if(Math.random() > 0.9)
{
   this["aso#38229"] += Math.random() * 16 - 6;
   this["aso#75555"] += Math.random() * 12 - 10;
}
this._xscale = 100 + Math.random() * 50;
this._yscale = this._xscale;
this._rotation = Math.random() * 360;
this.rspeed = Math.random() * 30 - 15;
this.onEnterFrame = function()
{
   if(_root.gunpaused)
   {
      if(!_root["aso#56196"].colmap.hitTest(this._x + _root["aso#56196"]._x,this._y + _root["aso#56196"]._y,true) && this._y < 1000)
      {
         this._x += this["aso#38229"];
         this._y += this["aso#75555"];
         this._rotation += this.rspeed;
         this["aso#75555"] += _root["aso#57167"];
      }
   }
};
if(!_root.my_so.data.blood)
{
   this._visible = false;
}
