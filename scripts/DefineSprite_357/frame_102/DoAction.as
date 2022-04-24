a = 0;
while(a < _root["aso#54383"])
{
   if(_root["aso#45610"][a] == true || _root["aso#45610"][a] == false)
   {
      set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#50207"][a],_root["aso#32240"][a]));
      if(eval("aso#94914") < 100)
      {
         _root["aso#45610"][a] = true;
         _root["aso#69566"][a] -= (this._x - _root["aso#50207"][a]) / eval("aso#94914") * (100 - eval("aso#94914")) * 0.5;
         _root["aso#63577"][a] -= (this._y - _root["aso#32240"][a]) / eval("aso#94914") * (100 - eval("aso#94914")) * 0.5;
      }
   }
   a++;
}
_root["aso#45610"][this["aso#96306"]] = 2;
_root["aso#45610"][this["aso#72350"]] = 2;
set("aso#71929",_root["aso#56196"].colmap.hitTest(_root["aso#50207"][this["aso#96306"]] - 20 + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] + _root["aso#56196"]._y,true));
set("aso#53962",_root["aso#56196"].colmap.hitTest(_root["aso#50207"][this["aso#96306"]] + 20 + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] + _root["aso#56196"]._y,true));
set("aso#49365",_root["aso#56196"].colmap.hitTest(_root["aso#50207"][this["aso#96306"]] + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] - 20 + _root["aso#56196"]._y,true));
set("aso#22625",_root["aso#56196"].colmap.hitTest(_root["aso#50207"][this["aso#96306"]] + _root["aso#56196"]._x,_root["aso#32240"][this["aso#96306"]] + 20 + _root["aso#56196"]._y,true));
if(eval("aso#71929") || eval("aso#53962") || eval("aso#22625") || eval("aso#49365"))
{
   set("aso#07863",0);
   set("aso#39200",0);
   if(eval("aso#71929") != eval("aso#53962"))
   {
      set("aso#39200",0);
      if(eval("aso#71929"))
      {
         set("aso#07863",1);
      }
      else
      {
         set("aso#07863",-1);
      }
   }
   else
   {
      set("aso#07863",0);
      if(eval("aso#22625"))
      {
         set("aso#39200",-1);
      }
      else
      {
         set("aso#39200",1);
      }
   }
   k = 0;
   while(k < 5)
   {
      _root["aso#76947"](this._x,this._y,7,10 - Math.random() * 20 + eval("aso#07863") * 10,10 - Math.random() * 20 + eval("aso#39200") * 10);
      k++;
   }
}
set("aso#87533",0);
while(eval("aso#87533") < _root.playerstot)
{
   if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
   {
      if(eval("aso#87533") == this["aso#99090"] || _root["aso#56196"]["player" + this["aso#99090"]]["aso#33632"] == _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] && _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] != 0 && _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] != 3 || _root["aso#56196"]["player" + this["aso#99090"]]["aso#33632"] != _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"])
      {
         set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]["player" + eval("aso#87533")]._y - 60));
         if(eval("aso#94914") < 100)
         {
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - 80 + Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"rocket",15 - Math.random() * 30,15 - Math.random() * 30);
            pwr = _root["aso#90317"](_root["aso#69566"][this["aso#72350"]],_root["aso#63577"][this["aso#72350"]],0,0);
            if(eval("aso#87533") == 0)
            {
               if(_root.my_so.data.opt_bot == 1)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 50 + pwr / 37 * 100;
               }
               if(_root.my_so.data.opt_bot == 2)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 100 + pwr / 37 * 100;
               }
               if(_root.my_so.data.opt_bot == 3)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 150 + pwr / 37 * 100;
               }
            }
            else
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 200 + pwr / 37 * 100;
            }
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "all";
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
            {
               _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay("hurt");
            }
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] += _root["aso#69566"][this["aso#72350"]] * 0.5 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] += _root["aso#63577"][this["aso#72350"]] * 0.5 * _root["aso#56196"]["player" + eval("aso#87533")].easymove;
            _root["aso#56196"]["player" + eval("aso#87533")].hunt = this["aso#99090"];
         }
         if(eval("aso#94914") < 300)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = true;
         }
      }
   }
   eval("aso#87533")++;
}
set("aso#00903",0);
while(eval("aso#00903") < _root.barrelstotal)
{
   if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe < 4)
   {
      if(_root["aso#90317"](this._x,this._y,_root["aso#56196"]["barrel" + eval("aso#00903")]._x,_root["aso#56196"]["barrel" + eval("aso#00903")]._y) < 100)
      {
         _root["aso#56196"]["barrel" + eval("aso#00903")].gotoAndPlay(4);
      }
   }
   eval("aso#00903")++;
}
