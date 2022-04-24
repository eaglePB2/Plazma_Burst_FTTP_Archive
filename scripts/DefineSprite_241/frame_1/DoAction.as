if(this + "" != "_level0.game.rock")
{
   this.kill = false;
   this.tox = Math.random() * 6 - 3;
   this.toy = Math.random() * 6 - 3;
   this.rspeed = Math.random() * 30 - 15;
   this.out = false;
   this.onEnterFrame = function()
   {
      if(this.disabled != true)
      {
         this._x += this.tox;
         this._y += this.toy;
         this.toy += _root.gravity;
         if(this.out)
         {
            if(_root.game.colmap.hitTest(this._x + _root.game._x,this._y + _root.game._y,true))
            {
               this._y -= this.toy;
               this.toy *= -0.5;
               this.tox *= 0.5;
            }
         }
         else if(!_root.game.colmap.hitTest(this._x + _root.game._x,this._y + _root.game._y,true))
         {
            this.out = true;
         }
         this._rotation += this.rspeed;
      }
   };
}
