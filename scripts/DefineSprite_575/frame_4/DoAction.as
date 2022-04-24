this._xscale = 100;
this._yscale = 100;
gl = new Array();
set("aso#06892",1);
while(eval("aso#06892") <= 14)
{
   gl[eval("aso#06892")] = _root["aso#21654"](this._x + this["glass" + eval("aso#06892")]._x,this._y + this["glass" + eval("aso#06892")]._y,Math.random() * 20 - 10,Math.random() * 10);
   this["glass" + eval("aso#06892")].ori = this["glass" + eval("aso#06892")]._rotation;
   eval("aso#06892")++;
}
this.onEnterFrame = function()
{
   spok = true;
   set("aso#06892",1);
   while(eval("aso#06892") <= 14)
   {
      if(_root["aso#70958"][gl[eval("aso#06892")]] == 1)
      {
         spok = false;
         this["glass" + eval("aso#06892")]._x = _root["aso#00903"][gl[eval("aso#06892")]] - this._x;
         this["glass" + eval("aso#06892")]._y = _root["aso#82936"][gl[eval("aso#06892")]] - this._y;
         this["glass" + eval("aso#06892")]._rotation = this["glass" + eval("aso#06892")]._x * 3 + this["glass" + eval("aso#06892")].ori;
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
                     _root["aso#75555"]["player" + eval("aso#47002")]["aso#69566"] -= 20;
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
         if(Math.abs(_root["aso#57588"][gl[eval("aso#06892")]]) < 0.4)
         {
            if(Math.abs(_root["aso#51599"][gl[eval("aso#06892")]]) < 0.4)
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
      this.onEnterFrame = 1;
   }
};
