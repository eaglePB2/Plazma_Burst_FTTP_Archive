if(this + "" != "_level0.aso#56196.rock")
{
   this.kill = false;
   if(this["aso#38229"] == undefined)
   {
      this["aso#38229"] = Math.random() * 10 - 5;
      this["aso#75555"] = Math.random() * 10 - 5;
   }
   this.rspeed = Math.random() * 30 - 15;
   this.out = false;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(this.disabled != true)
         {
            this._x += this["aso#38229"];
            this._y += this["aso#75555"];
            this["aso#75555"] += _root["aso#57167"];
            if(this.out)
            {
               if(_root["aso#56196"].colmap.hitTest(this._x + _root["aso#56196"]._x,this._y + _root["aso#56196"]._y,true))
               {
                  this._y -= this["aso#75555"];
                  this["aso#75555"] *= -0.3;
                  this["aso#38229"] *= 0.5;
               }
            }
            else if(!_root["aso#56196"].colmap.hitTest(this._x + _root["aso#56196"]._x,this._y + _root["aso#56196"]._y,true))
            {
               this.out = true;
            }
            this._rotation += this.rspeed;
         }
      }
   };
}
