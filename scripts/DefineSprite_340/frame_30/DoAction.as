set("aso#87533",0);
while(eval("aso#87533") < _root.playerstot)
{
   if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
   {
      if(eval("aso#87533") != 0)
      {
         set("aso#94914",_root["aso#90317"](this._x,this._y,_root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]["player" + eval("aso#87533")]._y - 60));
         if(eval("aso#94914") < 300)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = true;
            if(_root["aso#56196"]["player" + eval("aso#87533")]._x > this._x)
            {
               _root["aso#56196"]["player" + eval("aso#87533")].botaction = 1;
            }
            else
            {
               _root["aso#56196"]["player" + eval("aso#87533")].botaction = 2;
            }
         }
      }
   }
   eval("aso#87533")++;
}
