function rer()
{
   return Math.random() * 6 - 3;
}
set("aso#75134",-2 + Math.random() * 4);
set("aso#06471",-5 + Math.random() * 4);
this.point3 = _root["aso#21654"](this._x - 10,this._y + 18,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point4 = _root["aso#21654"](this._x + 10,this._y + 18,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point5 = _root["aso#21654"](this._x - 10,this._y,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point6 = _root["aso#21654"](this._x + 10,this._y,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
set("aso#06892aso#06892",0);
while(eval("aso#06892aso#06892") < 2)
{
   _root["aso#08284"](this.point3,this.point4,0);
   _root["aso#08284"](this.point5,this.point6,0);
   _root["aso#08284"](this.point3,this.point6,0);
   _root["aso#08284"](this.point4,this.point5,0);
   _root["aso#08284"](this.point3,this.point5,0);
   _root["aso#08284"](this.point4,this.point6,0);
   eval("aso#06892aso#06892")++;
}
this.point3b = _root["aso#21654"](this._x - 10,this._y - 18,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point4b = _root["aso#21654"](this._x + 10,this._y - 18,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point5b = _root["aso#21654"](this._x - 10,this._y,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
this.point6b = _root["aso#21654"](this._x + 10,this._y,eval("aso#75134") + this.rer(),eval("aso#06471") + this.rer());
set("aso#06892aso#06892",0);
while(eval("aso#06892aso#06892") < 2)
{
   _root["aso#08284"](this.point3b,this.point4b,0);
   _root["aso#08284"](this.point5b,this.point6b,0);
   _root["aso#08284"](this.point3b,this.point6b,0);
   _root["aso#08284"](this.point4b,this.point5b,0);
   _root["aso#08284"](this.point3b,this.point5b,0);
   _root["aso#08284"](this.point4b,this.point6b,0);
   eval("aso#06892aso#06892")++;
}
_root["aso#08284"](this.point5,this.point5b,4);
_root["aso#08284"](this.point6,this.point6b,4);
_root["aso#08284"](this.point3,this.point3b,1);
_root["aso#08284"](this.point4,this.point4b,1);
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
   if(_root["aso#70958"][this.point3] == 1 || _root["aso#70958"][this.point4] == 1 || _root["aso#70958"][this.point5] == 1 || _root["aso#70958"][this.point6] == 1)
   {
      spok = false;
      set("aso#79731",(_root["aso#00903"][this.point5] + _root["aso#00903"][this.point6]) / 2);
      set("aso#12460",(_root["aso#82936"][this.point5] + _root["aso#82936"][this.point6]) / 2);
      this["aso#04658"]._x = eval("aso#79731") - this._x;
      this["aso#04658"]._y = eval("aso#12460") - this._y;
      this["aso#04658"]._rotation = (- Math.atan2(_root["aso#00903"][this.point3] - _root["aso#00903"][this.point4],_root["aso#82936"][this.point3] - _root["aso#82936"][this.point4])) / 3.141592653589793 * 180 - 90;
   }
   if(_root["aso#70958"][this.point3b] == 1 || _root["aso#70958"][this.point4b] == 1 || _root["aso#70958"][this.point5b] == 1 || _root["aso#70958"][this.point6b] == 1)
   {
      spok = false;
      set("aso#79731",(_root["aso#00903"][this.point5b] + _root["aso#00903"][this.point6b]) / 2);
      set("aso#12460",(_root["aso#82936"][this.point5b] + _root["aso#82936"][this.point6b]) / 2);
      this["aso#35995"]._x = eval("aso#79731") - this._x;
      this["aso#35995"]._y = eval("aso#12460") - this._y;
      this["aso#35995"]._rotation = (- Math.atan2(_root["aso#00903"][this.point3b] - _root["aso#00903"][this.point4b],_root["aso#82936"][this.point3b] - _root["aso#82936"][this.point4b])) / 3.141592653589793 * 180 + 90;
   }
   set("aso#06892",1);
   while(eval("aso#06892") <= 6)
   {
      if(_root["aso#70958"][gl[eval("aso#06892")]] == 1)
      {
         spok = false;
         this["glass" + eval("aso#06892")]._x = _root["aso#00903"][gl[eval("aso#06892")]] - this._x;
         this["glass" + eval("aso#06892")]._y = _root["aso#82936"][gl[eval("aso#06892")]] - this._y;
         this["glass" + eval("aso#06892")]._rotation = this["glass" + eval("aso#06892")]._x * 3;
         if(_root["aso#70958"][gl[eval("aso#06892")]] != 2)
         {
            set("aso#47002",0);
            while(eval("aso#47002") < _root.playerstot)
            {
               if(_root["aso#75555"]["player" + eval("aso#47002")]["aso#69566"] > 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#47002")].hitTest(_root["aso#00903"][gl[eval("aso#06892")]] + _root["aso#75555"]._x,_root["aso#82936"][gl[eval("aso#06892")]] + _root["aso#75555"]._y,true))
                  {
                     _root["aso#66361"](_root["aso#00903"][gl[eval("aso#06892")]],_root["aso#82936"][gl[eval("aso#06892")]],_root["aso#75555"]["player" + eval("aso#47002")]["aso#14273"],"glass");
                     _root["aso#75555"]["player" + eval("aso#47002")]["aso#69566"] -= 10;
                     if(_root["aso#75555"]["player" + eval("aso#47002")]["aso#69566"] > 0)
                     {
                        _root["aso#75555"]["player" + eval("aso#47002")].gotoAndPlay("hurt");
                     }
                     _root["aso#75555"]["player" + eval("aso#47002")]["aso#35024"] = "all";
                     _root["aso#70958"][gl[eval("aso#06892")]] = 2;
                  }
               }
               eval("aso#47002")++;
            }
         }
         if(Math.abs(_root["aso#57588"][gl[eval("aso#06892")]]) < 0.9)
         {
            if(Math.abs(_root["aso#51599"][gl[eval("aso#06892")]]) < 0.9)
            {
               _root["aso#70958"][gl[eval("aso#06892")]] = 2;
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
while(a < _root["aso#30427"])
{
   if(_root["aso#70958"][a] == true || _root["aso#70958"][a] == false)
   {
      set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#00903"][a],_root["aso#82936"][a]));
      if(eval("aso#45610") < 150)
      {
         _root["aso#70958"][a] = true;
         this.p = 0.3;
         if(a == this.point3 || a == this.point4 || a == this.point5 || a == this.point6 || a == this.point3b || a == this.point4b || a == this.point5b || a == this.point6b)
         {
            this.p = 0.05 + Math.random() * 0.05;
         }
         _root["aso#57588"][a] -= (this._x - _root["aso#00903"][a]) / eval("aso#45610") * (150 - eval("aso#45610")) * this.p;
         _root["aso#51599"][a] -= (this._y - _root["aso#82936"][a]) / eval("aso#45610") * (150 - eval("aso#45610")) * this.p;
      }
   }
   a++;
}
set("aso#19841",0);
while(eval("aso#19841") < _root.barrelstotal)
{
   if(_root["aso#75555"]["barrel" + eval("aso#19841")]._currentframe < 4)
   {
      if(_root["aso#03687"](_root["aso#75555"]["barrel" + eval("aso#19841")]._x,_root["aso#75555"]["barrel" + eval("aso#19841")]._y,this._x,this._y) < 150)
      {
         _root["aso#75555"]["barrel" + eval("aso#19841")].gotoAndPlay(4);
      }
   }
   eval("aso#19841")++;
}
set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
   {
      set("aso#45610",_root["aso#03687"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
      if(eval("aso#45610") < 100)
      {
         _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - 80 + Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"barrel");
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 150;
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] -= (this._x - _root["aso#75555"]["player" + eval("aso#06892")]._x) / eval("aso#45610") * (200 - eval("aso#45610")) * 0.15 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= (this._y - (_root["aso#75555"]["player" + eval("aso#06892")]._y - 60)) / eval("aso#45610") * (200 - eval("aso#45610")) * 0.15 * _root["aso#75555"]["player" + eval("aso#06892")].easymove;
      }
   }
   eval("aso#06892")++;
}
