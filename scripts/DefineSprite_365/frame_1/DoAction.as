if(this + "" != "_level0.aso#75555.rock")
{
   this.kill = false;
   if(this["aso#26251"] == undefined)
   {
      this["aso#26251"] = Math.random() * 10 - 5;
      this["aso#94914"] = Math.random() * 10 - 5;
   }
   this.rspeed = Math.random() * 30 - 15;
   this.out = false;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(this.disabled != true)
         {
            this._x += this["aso#26251"];
            this._y += this["aso#94914"];
            this["aso#94914"] += _root["aso#70537"];
            if(this.out)
            {
               if(_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true))
               {
                  this._y -= this["aso#94914"];
                  this["aso#94914"] *= -0.3;
                  this["aso#26251"] *= 0.5;
               }
            }
            else if(!_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true))
            {
               this.out = true;
            }
            this._rotation += this.rspeed;
         }
      }
   };
}
