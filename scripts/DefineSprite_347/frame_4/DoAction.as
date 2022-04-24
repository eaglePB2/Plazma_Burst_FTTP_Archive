function rer()
{
   return Math.random() * 6 - 3;
}
set("aso#87112",-2 + Math.random() * 4);
set("aso#18449",-5 + Math.random() * 4);
this.point3 = _root["aso#21654"](this._x - 10,this._y + 18,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point4 = _root["aso#21654"](this._x + 10,this._y + 18,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point5 = _root["aso#21654"](this._x - 10,this._y,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point6 = _root["aso#21654"](this._x + 10,this._y,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
_root["aso#39621"](this.point3,this.point4,0);
_root["aso#39621"](this.point5,this.point6,0);
_root["aso#39621"](this.point3,this.point6,0);
_root["aso#39621"](this.point4,this.point5,0);
_root["aso#39621"](this.point3,this.point5,0);
_root["aso#39621"](this.point4,this.point6,0);
this.point3b = _root["aso#21654"](this._x - 10,this._y - 18,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point4b = _root["aso#21654"](this._x + 10,this._y - 18,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point5b = _root["aso#21654"](this._x - 10,this._y,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
this.point6b = _root["aso#21654"](this._x + 10,this._y,eval("aso#87112") + this.rer(),eval("aso#18449") + this.rer());
_root["aso#39621"](this.point3b,this.point4b,0);
_root["aso#39621"](this.point5b,this.point6b,0);
_root["aso#39621"](this.point3b,this.point6b,0);
_root["aso#39621"](this.point4b,this.point5b,0);
_root["aso#39621"](this.point3b,this.point5b,0);
_root["aso#39621"](this.point4b,this.point6b,0);
_root["aso#39621"](this.point3,this.point3b,1);
_root["aso#39621"](this.point4,this.point4b,1);
gl = new Array();
set("aso#06892",1);
while(eval("aso#06892") <= 6)
{
   gl[eval("aso#06892")] = _root["aso#21654"](this._x + this["glass" + eval("aso#06892")]._x,this._y + this["glass" + eval("aso#06892")]._y,this.rer() * 4,this.rer() * 2);
   eval("aso#06892")++;
}
this.onEnterFrame = function()
{
   spok = true;
   if(_root["aso#64969"][this.point3] == 1 || _root["aso#64969"][this.point4] == 1 || _root["aso#64969"][this.point5] == 1 || _root["aso#64969"][this.point6] == 1)
   {
      spok = false;
      set("aso#55775",(_root["aso#69566"][this.point5] + _root["aso#69566"][this.point6]) / 2);
      set("aso#45189",(_root["aso#51599"][this.point5] + _root["aso#51599"][this.point6]) / 2);
      this["aso#10647"]._x = eval("aso#55775") - this._x;
      this["aso#10647"]._y = eval("aso#45189") - this._y;
      this["aso#10647"]._rotation = (- Math.atan2(_root["aso#69566"][this.point3] - _root["aso#69566"][this.point4],_root["aso#51599"][this.point3] - _root["aso#51599"][this.point4])) / 3.141592653589793 * 180 - 90;
   }
   if(_root["aso#64969"][this.point3b] == 1 || _root["aso#64969"][this.point4b] == 1 || _root["aso#64969"][this.point5b] == 1 || _root["aso#64969"][this.point6b] == 1)
   {
      spok = false;
      set("aso#55775",(_root["aso#69566"][this.point5b] + _root["aso#69566"][this.point6b]) / 2);
      set("aso#45189",(_root["aso#51599"][this.point5b] + _root["aso#51599"][this.point6b]) / 2);
      this["aso#41984"]._x = eval("aso#55775") - this._x;
      this["aso#41984"]._y = eval("aso#45189") - this._y;
      this["aso#41984"]._rotation = (- Math.atan2(_root["aso#69566"][this.point3b] - _root["aso#69566"][this.point4b],_root["aso#51599"][this.point3b] - _root["aso#51599"][this.point4b])) / 3.141592653589793 * 180 + 90;
   }
   set("aso#06892",1);
   while(eval("aso#06892") <= 6)
   {
      if(_root["aso#64969"][gl[eval("aso#06892")]] == 1)
      {
         spok = false;
         this["glass" + eval("aso#06892")]._x = _root["aso#69566"][gl[eval("aso#06892")]] - this._x;
         this["glass" + eval("aso#06892")]._y = _root["aso#51599"][gl[eval("aso#06892")]] - this._y;
         this["glass" + eval("aso#06892")]._rotation = this["glass" + eval("aso#06892")]._x * 3;
         if(Math.abs(_root["aso#88925"][gl[eval("aso#06892")]]) < 0.4)
         {
            if(Math.abs(_root["aso#82936"][gl[eval("aso#06892")]]) < 0.4)
            {
               _root["aso#64969"][gl[eval("aso#06892")]] = 0;
            }
         }
      }
      else if(this["glass" + eval("aso#06892")]._alpha > 0)
      {
         this["glass" + eval("aso#06892")]._alpha -= 5;
         spok = false;
      }
      else
      {
         this["glass" + eval("aso#06892")]._visible = false;
      }
      eval("aso#06892")++;
   }
   if(spok)
   {
      if(!this.cacheAsBitmap)
      {
         this.cacheAsBitmap = true;
      }
      this._alpha -= 5;
      if(this._alpha < 0)
      {
         this._visible = false;
         this.onEnterFrame = 1;
      }
   }
};
a = 0;
while(a < _root["aso#36416"])
{
   if(_root["aso#64969"][a] == true || _root["aso#64969"][a] == false)
   {
      set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#69566"][a],_root["aso#51599"][a]));
      if(eval("aso#14273") < 200)
      {
         _root["aso#64969"][a] = true;
         this.p = 0.3;
         if(a == this.point3 || a == this.point4 || a == this.point5 || a == this.point6 || a == this.point3b || a == this.point4b || a == this.point5b || a == this.point6b)
         {
            this.p = 0.05 + Math.random() * 0.05;
         }
         _root["aso#88925"][a] -= (this._x - _root["aso#69566"][a]) / eval("aso#14273") * (200 - eval("aso#14273")) * this.p;
         _root["aso#82936"][a] -= (this._y - _root["aso#51599"][a]) / eval("aso#14273") * (200 - eval("aso#14273")) * this.p;
      }
   }
   a++;
}
set("aso#69145",0);
while(eval("aso#69145") < _root.barrelstotal)
{
   if(_root["aso#75555"]["barrel" + eval("aso#69145")]._currentframe < 4)
   {
      if(_root["aso#09676"](_root["aso#75555"]["barrel" + eval("aso#69145")]._x,_root["aso#75555"]["barrel" + eval("aso#69145")]._y,this._x,this._y) < 150)
      {
         _root["aso#75555"]["barrel" + eval("aso#69145")].gotoAndPlay(4);
      }
   }
   eval("aso#69145")++;
}
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
   {
      set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
      if(eval("aso#14273") < 200)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
         {
            eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,2);
         }
         else
         {
            eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,5);
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= 200;
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] -= (this._x - _root["aso#75555"]["player" + eval("aso#06892")]._x) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.3;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= (this._y - (_root["aso#75555"]["player" + eval("aso#06892")]._y - 60)) / eval("aso#14273") * (200 - eval("aso#14273")) * 0.3;
      }
   }
   eval("aso#06892")++;
}
