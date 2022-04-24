a = 0;
while(a < _root.atotal)
{
   if(this.masterpoint != a)
   {
      dis = _root.Dist2D(this._x,this._y,_root.ax[a],_root.ay[a]);
      if(dis < 200)
      {
         _root.aio[a] = true;
         _root.atox[a] -= (this._x - _root.ax[a]) / dis * (200 - dis) * 0.3;
         _root.atoy[a] -= (this._y - _root.ay[a]) / dis * (200 - dis) * 0.3;
      }
   }
   a++;
}
_root.aio[this.masterpoint] = false;
i = 0;
while(i < _root.playerstot)
{
   if(_root.game["player" + i].hea > 0)
   {
      dis = _root.Dist2D(this._x,this._y,_root.game["player" + i]._x,_root.game["player" + i]._y - 60);
      if(dis < 200)
      {
         if(_root.game["player" + i].char == 0)
         {
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,2);
         }
         if(_root.game["player" + i].char == 1)
         {
            _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,5);
         }
         _root.game["player" + i].hea -= 160;
         if(_root.game["player" + i].hea > 0)
         {
            _root.game["player" + i].gotoAndPlay("hurt");
         }
         _root.game["player" + i].tox -= (this._x - _root.game["player" + i]._x) / dis * (200 - dis) * 0.3;
         _root.game["player" + i].toy -= (this._y - (_root.game["player" + i]._y - 60)) / dis * (200 - dis) * 0.3;
         _root.game["player" + i].hunt = 0;
      }
      if(dis < 400)
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
      if(_root.Dist2D(this._x,this._y,_root.game["barrel" + b]._x,_root.game["barrel" + b]._y) < 200)
      {
         _root.game["barrel" + b].gotoAndPlay(4);
      }
   }
   b++;
}
