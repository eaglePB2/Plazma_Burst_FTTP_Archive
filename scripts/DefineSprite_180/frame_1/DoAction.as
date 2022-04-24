if(this + "" != "_level0.game.grenad")
{
   this.masterpoint = _root.CreatePoint(this._x,this._y,this.tox,this.toy);
   this.onEnterFrame = function()
   {
      this._x = _root.ax[this.masterpoint];
      this._y = _root.ay[this.masterpoint];
      this._rotation = this._x;
   };
}
else
{
   this._visible = false;
   this.stop();
}
