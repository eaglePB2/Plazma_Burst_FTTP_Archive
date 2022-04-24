if(this + "" != "_level0.aso#75555.grenad")
{
   this["aso#15665"] = _root["aso#21654"](this._x,this._y,this["aso#57588"],this["aso#94914"]);
   this.onEnterFrame = function()
   {
      this._x = _root["aso#69566"][this["aso#15665"]];
      this._y = _root["aso#51599"][this["aso#15665"]];
      this._rotation = this._x;
   };
}
else
{
   this._visible = false;
   this.stop();
}
