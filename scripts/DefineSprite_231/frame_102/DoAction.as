_root.aio[this.masterpoint] = false;
a = 0;
while(a < _root.atotal)
{
   dis = _root.Dist2D(this._x,this._y,_root.ax[a],_root.ay[a]);
   if(dis < 100)
   {
      _root.aio[a] = true;
      _root.atox[a] -= (this._x - _root.ax[a]) / dis * (100 - dis) * 0.5;
      _root.atoy[a] -= (this._y - _root.ay[a]) / dis * (100 - dis) * 0.5;
   }
   a++;
}
i = 0;
while(i < _root.playerstot)
{
   if(_root.game["player" + i].hea > 0)
   {
      dis = _root.Dist2D(this._x,this._y,_root.game["player" + i]._x,_root.game["player" + i]._y - 60);
      if(dis < 100)
      {
         if(_root.game["player" + i].char == 0)
         {
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,2);
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,2);
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,2);
         }
         if(_root.game["player" + i].char == 1)
         {
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,5);
         }
         pwr = _root.Dist2D(_root.atox[this.masterpoint2],_root.atoy[this.masterpoint2],0,0);
         _root.game["player" + i].hea -= 200 + pwr / 37 * 100;
         if(_root.game["player" + i].hea > 0)
         {
            _root.game["player" + i].gotoAndPlay("hurt");
         }
         _root.game["player" + i].tox += _root.atox[this.masterpoint2] * 0.5;
         _root.game["player" + i].toy += _root.atoy[this.masterpoint2] * 0.5;
         _root.game["player" + i].hunt = this.master;
      }
      if(dis < 300)
      {
         _root.game["player" + i].active = true;
      }
   }
   i++;
}
b = 0;
while(b < _root.barrelstotal)
{
   if(_root.game["barrel" + b]._currentframe < 4)
   {
      if(_root.Dist2D(this._x,this._y,_root.game["barrel" + b]._x,_root.game["barrel" + b]._y) < 100)
      {
         _root.game["barrel" + b].gotoAndPlay(4);
      }
   }
   b++;
}
