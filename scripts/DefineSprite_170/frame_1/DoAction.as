this.kill = false;
this.tox = Math.random() * 6 - 3;
this.toy = (- Math.random()) * 2 - 2;
this.rspeed = Math.random() * 30 - 15;
this.gotoAndStop(1);
this.onEnterFrame = function()
{
   if(this.disabled != true)
   {
      if(this._currentframe == 1 && !_root.game.colmap.hitTest(this._x + _root.game._x,this._y + _root.game._y,true) && this._y < 1000)
      {
         this._x += this.tox;
         this._y += this.toy;
         this.toy += _root.gravity;
      }
      else
      {
         this._x += this.tox;
         this._y += this.toy;
         this.toy += _root.gravity;
         if(this._currentframe == 1)
         {
            this.gotoAndPlay(3);
            this._x -= this.tox;
            this._y -= this.toy;
            this.toy = (- this.toy) * 0.5;
         }
      }
      this._rotation += this.rspeed;
   }
};
