if(this + "" != "_level0.aso#75555.grenad")
{
   this["aso#72350"] = _root["aso#21654"](this._x,this._y,this["aso#26251"],this["aso#94914"],0,true);
   around[this["aso#72350"]] = true;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         this._x = _root["aso#00903"][this["aso#72350"]];
         this._y = _root["aso#82936"][this["aso#72350"]];
         this._rotation = this._x;
      }
   };
}
else
{
   this._visible = false;
   this.stop();
}
