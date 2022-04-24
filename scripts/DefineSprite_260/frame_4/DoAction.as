function rer()
{
   return Math.random() * 6 - 3;
}
globspeedx = -2 + Math.random() * 4;
globspeedy = -5 + Math.random() * 4;
this.point3 = _root.CreatePoint(this._x - 10,this._y + 18,globspeedx + this.rer(),globspeedy + this.rer());
this.point4 = _root.CreatePoint(this._x + 10,this._y + 18,globspeedx + this.rer(),globspeedy + this.rer());
this.point5 = _root.CreatePoint(this._x - 10,this._y,globspeedx + this.rer(),globspeedy + this.rer());
this.point6 = _root.CreatePoint(this._x + 10,this._y,globspeedx + this.rer(),globspeedy + this.rer());
_root.Connect(this.point3,this.point4,0);
_root.Connect(this.point5,this.point6,0);
_root.Connect(this.point3,this.point6,0);
_root.Connect(this.point4,this.point5,0);
_root.Connect(this.point3,this.point5,0);
_root.Connect(this.point4,this.point6,0);
this.point3b = _root.CreatePoint(this._x - 10,this._y - 18,globspeedx + this.rer(),globspeedy + this.rer());
this.point4b = _root.CreatePoint(this._x + 10,this._y - 18,globspeedx + this.rer(),globspeedy + this.rer());
this.point5b = _root.CreatePoint(this._x - 10,this._y,globspeedx + this.rer(),globspeedy + this.rer());
this.point6b = _root.CreatePoint(this._x + 10,this._y,globspeedx + this.rer(),globspeedy + this.rer());
_root.Connect(this.point3b,this.point4b,0);
_root.Connect(this.point5b,this.point6b,0);
_root.Connect(this.point3b,this.point6b,0);
_root.Connect(this.point4b,this.point5b,0);
_root.Connect(this.point3b,this.point5b,0);
_root.Connect(this.point4b,this.point6b,0);
_root.Connect(this.point5,this.point5b,4);
_root.Connect(this.point6,this.point6b,4);
_root.Connect(this.point3,this.point3b,1);
_root.Connect(this.point4,this.point4b,1);
gl = new Array();
i = 1;
while(i <= 6)
{
   gl[i] = _root.CreatePoint(this._x + this["glass" + i]._x,this._y + this["glass" + i]._y,this.rer() * 4,this.rer() * 2);
   i++;
}
this.onEnterFrame = function()
{
   spok = true;
   if(_root.aio[this.point3] == 1 || _root.aio[this.point4] == 1 || _root.aio[this.point5] == 1 || _root.aio[this.point6] == 1)
   {
      spok = false;
      cx = (_root.ax[this.point5] + _root.ax[this.point6]) / 2;
      cy = (_root.ay[this.point5] + _root.ay[this.point6]) / 2;
      this.b1._x = cx - this._x;
      this.b1._y = cy - this._y;
      this.b1._rotation = (- Math.atan2(_root.ax[this.point3] - _root.ax[this.point4],_root.ay[this.point3] - _root.ay[this.point4])) / 3.141592653589793 * 180 - 90;
   }
   if(_root.aio[this.point3b] == 1 || _root.aio[this.point4b] == 1 || _root.aio[this.point5b] == 1 || _root.aio[this.point6b] == 1)
   {
      spok = false;
      cx = (_root.ax[this.point5b] + _root.ax[this.point6b]) / 2;
      cy = (_root.ay[this.point5b] + _root.ay[this.point6b]) / 2;
      this.b2._x = cx - this._x;
      this.b2._y = cy - this._y;
      this.b2._rotation = (- Math.atan2(_root.ax[this.point3b] - _root.ax[this.point4b],_root.ay[this.point3b] - _root.ay[this.point4b])) / 3.141592653589793 * 180 + 90;
   }
   i = 1;
   while(i <= 6)
   {
      if(_root.aio[gl[i]] == 1)
      {
         spok = false;
         this["glass" + i]._x = _root.ax[gl[i]] - this._x;
         this["glass" + i]._y = _root.ay[gl[i]] - this._y;
         this["glass" + i]._rotation = this["glass" + i]._x * 3;
         if(Math.abs(_root.atox[gl[i]]) < 0.4)
         {
            if(Math.abs(_root.atoy[gl[i]]) < 0.4)
            {
               _root.aio[gl[i]] = 0;
            }
         }
      }
      else if(this["glass" + i]._alpha > 0)
      {
         this["glass" + i]._alpha -= 5;
         spok = false;
      }
      else
      {
         this["glass" + i]._visible = false;
      }
      i++;
   }
   if(spok)
   {
      this.cacheAsBitmap = true;
      this.onEnterFrame = 1;
   }
};
a = 0;
while(a < _root.atotal)
{
   dis = _root.Dist2D(this._x,this._y,_root.ax[a],_root.ay[a]);
   if(dis < 150)
   {
      _root.aio[a] = true;
      this.p = 0.4;
      if(a == this.point3 || a == this.point4 || a == this.point5 || a == this.point6 || a == this.point3b || a == this.point4b || a == this.point5b || a == this.point6b)
      {
         this.p = 0.1 + Math.random() * 0.1;
      }
      _root.atox[a] -= (this._x - _root.ax[a]) / dis * (150 - dis) * this.p;
      _root.atoy[a] -= (this._y - _root.ay[a]) / dis * (150 - dis) * this.p;
   }
   a++;
}
b22 = 0;
while(b22 < _root.barrelstotal)
{
   if(_root.game["barrel" + b22]._currentframe < 4)
   {
      if(_root.Dist2D(_root.game["barrel" + b22]._x,_root.game["barrel" + b22]._y,this._x,this._y) < 150)
      {
         _root.game["barrel" + b22].gotoAndPlay(4);
      }
   }
   b22++;
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
            Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,2);
         }
         else
         {
            Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - 80 + Math.random() * 80,5);
         }
         _root.game["player" + i].hea -= 150;
         _root.game["player" + i].tox -= (this._x - _root.game["player" + i]._x) / dis * (150 - dis) * 0.4;
         _root.game["player" + i].toy -= (this._y - (_root.game["player" + i]._y - 60)) / dis * (150 - dis) * 0.4;
      }
   }
   i++;
}
