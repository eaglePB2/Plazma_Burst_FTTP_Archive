set("aso#06892",0);
while(eval("aso#06892") < _root.playerstot)
{
   if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
      {
         if(eval("aso#06892") != 0)
         {
            set("aso#14273",_root["aso#09676"](this._x,this._y,_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 60));
            if(eval("aso#14273") < 300)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = true;
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x > this._x)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
               }
               else
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
               }
            }
         }
      }
   }
   eval("aso#06892")++;
}
