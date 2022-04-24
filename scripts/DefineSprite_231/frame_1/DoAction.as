if(this + "" != "_level0.game.rocket")
{
   this.masterpoint = _root.CreatePoint(this._x + this.tox,this._y + this.toy,this.tox,this.toy);
   this.masterpoint2 = _root.CreatePoint(this._x - this.tox,this._y - this.toy,this.tox,this.toy);
   _root.Connect(this.masterpoint,this.masterpoint2,0,20);
   this.lasdis = _root.Dist2D(_root.atoy[this.masterpoint] + _root.atoy[this.masterpoint2],_root.atox[this.masterpoint] + _root.atox[this.masterpoint2],0,0);
   powe = 0;
   this.onEnterFrame = function()
   {
      if(this._currentframe < 102)
      {
         this.dis = _root.Dist2D(_root.atoy[this.masterpoint] + _root.atoy[this.masterpoint2],_root.atox[this.masterpoint] + _root.atox[this.masterpoint2],0,0);
         if(Math.abs(this.dis - this.lasdis) > 15)
         {
            this.gotoAndPlay(102);
         }
         this.lasdis = this.dis;
         this._x = _root.ax[this.masterpoint];
         this._y = _root.ay[this.masterpoint];
         this._rotation = 90 + Math.atan2(_root.ay[this.masterpoint] - _root.ay[this.masterpoint2],_root.ax[this.masterpoint] - _root.ax[this.masterpoint2]) / 3.141592653589793 * 180;
         if(this._currentframe < 40)
         {
            _root.atox[this.masterpoint2] += (_root.ax[this.masterpoint] - _root.ax[this.masterpoint2]) * 0.2;
            _root.atoy[this.masterpoint2] += (_root.ay[this.masterpoint] - _root.ay[this.masterpoint2]) * 0.2;
            if(this._currentframe > 5)
            {
               powe += 1;
               if(powe > 10)
               {
                  powe = 10;
               }
               _root.atox[this.masterpoint] += _root.atox[this.masterpoint] * 10 * 0.001 * powe;
               _root.atoy[this.masterpoint] += _root.atoy[this.masterpoint] * 10 * 0.001 * powe;
            }
         }
         b = 0;
         while(b < _root.barrelstotal)
         {
            if(_root.game["barrel" + b]._currentframe < 4)
            {
               if(_root.game["barrel" + b].hitTest(_root.ax[this.masterpoint] + _root.game._x,_root.ay[this.masterpoint] + _root.game._y,true))
               {
                  _root.atox[this.masterpoint] = 0;
                  _root.atoy[this.masterpoint] = 0;
               }
            }
            b++;
         }
         i = 0;
         while(i < _root.playerstot)
         {
            if(i != this.master)
            {
               if(_root.game["player" + i].hitTest(_root.ax[this.masterpoint] + _root.game._x,_root.ay[this.masterpoint] + _root.game._y,true) || _root.game["player" + i].hitTest(_root.ax[this.masterpoint2] + _root.game._x,_root.ay[this.masterpoint2] + _root.game._y,true) || _root.game["player" + i].hitTest((_root.ax[this.masterpoint2] + _root.ax[this.masterpoint]) / 2 + _root.game._x,(_root.ay[this.masterpoint2] + _root.ay[this.masterpoint]) / 2 + _root.game._y,true))
               {
                  _root.atox[this.masterpoint] = 0;
                  _root.atoy[this.masterpoint] = 0;
               }
            }
            i++;
         }
      }
   };
}
else
{
   this._visible = false;
   this.stop();
}
