this.kill = false;
del = Math.random() * 0.8 - 0.3;
this.tox *= del;
this.toy *= del;
this.tox += Math.random() * 6 - 3;
this.toy += Math.random() * 6 - 4;
this._xscale = 100 + Math.random() * 50;
this._yscale = this._xscale;
this._rotation = Math.random() * 360;
this.rspeed = Math.random() * 30 - 15;
this.onEnterFrame = function()
{
   if(!_root.game.colmap.hitTest(this._x + _root.game._x,this._y + _root.game._y,true) && this._y < 1000)
   {
      this._x += this.tox;
      this._y += this.toy;
      this._rotation += this.rspeed;
      this.toy += _root.gravity * 2;
   }
};
