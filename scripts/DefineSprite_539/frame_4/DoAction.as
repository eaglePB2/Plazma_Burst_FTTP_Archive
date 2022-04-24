function rer()
{
   return Math.random() * 6 - 3;
}
set("aso#36416",-2 + Math.random() * 4);
set("aso#67753",-5 + Math.random() * 4);
this.point3 = _root["aso#70958"](this._x - 10,this._y + 18,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point4 = _root["aso#70958"](this._x + 10,this._y + 18,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point5 = _root["aso#70958"](this._x - 10,this._y,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point6 = _root["aso#70958"](this._x + 10,this._y,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
set("aso#87533aso#87533",0);
while(eval("aso#87533aso#87533") < 2)
{
   _root["aso#88925"](this.point3,this.point4,0);
   _root["aso#88925"](this.point5,this.point6,0);
   _root["aso#88925"](this.point3,this.point6,0);
   _root["aso#88925"](this.point4,this.point5,0);
   _root["aso#88925"](this.point3,this.point5,0);
   _root["aso#88925"](this.point4,this.point6,0);
   eval("aso#87533aso#87533")++;
}
this.point3b = _root["aso#70958"](this._x - 10,this._y - 18,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point4b = _root["aso#70958"](this._x + 10,this._y - 18,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point5b = _root["aso#70958"](this._x - 10,this._y,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
this.point6b = _root["aso#70958"](this._x + 10,this._y,eval("aso#36416") + this.rer(),eval("aso#67753") + this.rer());
set("aso#87533aso#87533",0);
while(eval("aso#87533aso#87533") < 2)
{
   _root["aso#88925"](this.point3b,this.point4b,0);
   _root["aso#88925"](this.point5b,this.point6b,0);
   _root["aso#88925"](this.point3b,this.point6b,0);
   _root["aso#88925"](this.point4b,this.point5b,0);
   _root["aso#88925"](this.point3b,this.point5b,0);
   _root["aso#88925"](this.point4b,this.point6b,0);
   eval("aso#87533aso#87533")++;
}
_root["aso#88925"](this.point5,this.point5b,4);
_root["aso#88925"](this.point6,this.point6b,4);
_root["aso#88925"](this.point3,this.point3b,1);
_root["aso#88925"](this.point4,this.point4b,1);
gl = new Array();
set("aso#87533",1);
while(eval("aso#87533") <= 6)
{
   gl[eval("aso#87533")] = _root["aso#70958"](this._x + this["glass" + eval("aso#87533")]._x,this._y + this["glass" + eval("aso#87533")]._y,this.rer() * 4,this.rer() * 2);
   eval("aso#87533")++;
}
this.onEnterFrame = function()
{
   spok = true;
   if(_root["aso#45610"][this.point3] == 1 || _root["aso#45610"][this.point4] == 1 || _root["aso#45610"][this.point5] == 1 || _root["aso#45610"][this.point6] == 1)
   {
      spok = false;
      set("aso#05079",(_root["aso#50207"][this.point5] + _root["aso#50207"][this.point6]) / 2);
      set("aso#00482",(_root["aso#32240"][this.point5] + _root["aso#32240"][this.point6]) / 2);
      this["aso#03266"]._x = eval("aso#05079") - this._x;
      this["aso#03266"]._y = eval("aso#00482") - this._y;
      this["aso#03266"]._rotation = (- Math.atan2(_root["aso#50207"][this.point3] - _root["aso#50207"][this.point4],_root["aso#32240"][this.point3] - _root["aso#32240"][this.point4])) / 3.141592653589793 * 180 - 90;
   }
   if(_root["aso#45610"][this.point3b] == 1 || _root["aso#45610"][this.point4b] == 1 || _root["aso#45610"][this.point5b] == 1 || _root["aso#45610"][this.point6b] == 1)
   {
      spok = false;
      set("aso#05079",(_root["aso#50207"][this.point5b] + _root["aso#50207"][this.point6b]) / 2);
      set("aso#00482",(_root["aso#32240"][this.point5b] + _root["aso#32240"][this.point6b]) / 2);
      this["aso#34603"]._x = eval("aso#05079") - this._x;
      this["aso#34603"]._y = eval("aso#00482") - this._y;
      this["aso#34603"]._rotation = (- Math.atan2(_root["aso#50207"][this.point3b] - _root["aso#50207"][this.point4b],_root["aso#32240"][this.point3b] - _root["aso#32240"][this.point4b])) / 3.141592653589793 * 180 + 90;
   }
   set("aso#87533",1);
   while(eval("aso#87533") <= 6)
   {
      if(_root["aso#45610"][gl[eval("aso#87533")]] == 1)
      {
         spok = false;
         this["glass" + eval("aso#87533")]._x = _root["aso#50207"][gl[eval("aso#87533")]] - this._x;
         this["glass" + eval("aso#87533")]._y = _root["aso#32240"][gl[eval("aso#87533")]] - this._y;
         this["glass" + eval("aso#87533")]._rotation = this["glass" + eval("aso#87533")]._x * 3;
         if(_root["aso#45610"][gl[eval("aso#87533")]] != 2)
         {
            set("aso#52991",1);
            while(eval("aso#52991") < _root.playerstot)
            {
               if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#52991")].hitTest(_root["aso#50207"][gl[eval("aso#87533")]] + _root["aso#56196"]._x,_root["aso#32240"][gl[eval("aso#87533")]] + _root["aso#56196"]._y,true))
                  {
                     _root["aso#17057"](_root["aso#50207"][gl[eval("aso#87533")]],_root["aso#32240"][gl[eval("aso#87533")]],_root["aso#56196"]["player" + eval("aso#52991")]["aso#20262"],"glass");
                     _root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] -= 10;
                     if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] > 0)
                     {
                        _root["aso#56196"]["player" + eval("aso#52991")].gotoAndPlay("hurt");
                     }
                     _root["aso#56196"]["player" + eval("aso#52991")]["aso#15665"] = "all";
                     _root["aso#45610"][gl[eval("aso#87533")]] = 2;
                  }
               }
               eval("aso#52991")++;
            }
         }
         if(Math.abs(_root["aso#69566"][gl[eval("aso#87533")]]) < 0.9)
         {
            if(Math.abs(_root["aso#63577"][gl[eval("aso#87533")]]) < 0.9)
            {
               _root["aso#45610"][gl[eval("aso#87533")]] = 2;
            }
         }
      }
      else if(this["glass" + eval("aso#87533")]._alpha > 0)
      {
         this["glass" + eval("aso#87533")]._alpha -= 5;
         spok = false;
      }
      else
      {
         this["glass" + eval("aso#87533")]._visible = false;
      }
      eval("aso#87533")++;
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
while(a < _root["aso#54383"])
{
   if(_root["aso#45610"][a] == true || _root["aso#45610"][a] == false)
   {
      set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#50207"][a],_root["aso#32240"][a]));
      if(eval("aso#94914") < 150)
      {
         _root["aso#45610"][a] = true;
         this.p = 0.3;
         if(a == this.point3 || a == this.point4 || a == this.point5 || a == this.point6 || a == this.point3b || a == this.point4b || a == this.point5b || a == this.point6b)
         {
            this.p = 0.05 + Math.random() * 0.05;
         }
         _root["aso#69566"][a] -= (this._x - _root["aso#50207"][a]) / eval("aso#94914") * (150 - eval("aso#94914")) * this.p;
         _root["aso#63577"][a] -= (this._y - _root["aso#32240"][a]) / eval("aso#94914") * (150 - eval("aso#94914")) * this.p;
      }
   }
   a++;
}
set("aso#18449",0);
while(eval("aso#18449") < _root.barrelstotal)
{
   if(_root["aso#56196"]["barrel" + eval("aso#18449")]._currentframe < 4)
   {
      if(_root["aso#90317"](_root["aso#56196"]["barrel" + eval("aso#18449")]._x,_root["aso#56196"]["barrel" + eval("aso#18449")]._y,this._x,this._y) < 150)
      {
         _root["aso#56196"]["barrel" + eval("aso#18449")].gotoAndPlay(4);
      }
   }
   eval("aso#18449")++;
}
set("aso#87533",0);
while(eval("aso#87533") < _root.playerstot)
{
   if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
   {
      set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]["player" + eval("aso#87533")]._y - 60));
      if(eval("aso#94914") < 100)
      {
         _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"barrel");
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 150;
         if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
         {
            _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay("hurt");
         }
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "all";
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] -= (this._x - _root["aso#56196"]["player" + eval("aso#87533")]._x) / eval("aso#94914") * (200 - eval("aso#94914")) * 0.15 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= (this._y - (_root["aso#56196"]["player" + eval("aso#87533")]._y - 60)) / eval("aso#94914") * (200 - eval("aso#94914")) * 0.15 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
      }
   }
   eval("aso#87533")++;
}
