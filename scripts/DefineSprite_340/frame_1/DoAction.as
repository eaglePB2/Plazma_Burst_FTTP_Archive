if(this + "" != "_level0.aso#56196.grenad")
{
   this["aso#96306"] = _root["aso#70958"](this._x,this._y,this["aso#38229"],this["aso#75555"],0,true);
   around[this["aso#96306"]] = true;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         this._x = _root["aso#50207"][this["aso#96306"]];
         this._y = _root["aso#32240"][this["aso#96306"]];
         this._rotation = this._x;
      }
   };
}
else
{
   this._visible = false;
   this.stop();
}
