i = 0;
while(i < _root.playerstot)
{
   if(_root.game["player" + i].hea > 0)
   {
      if(_root.game["player" + i].active == true)
      {
         dis = _root.Dist2D(this._x,this._y,_root.game["player" + i]._x,_root.game["player" + i]._y - 60);
         if(dis < 300)
         {
            _root.game["player" + i].active = true;
         }
      }
   }
   i++;
}
