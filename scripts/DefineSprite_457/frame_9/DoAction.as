if(this._currentframe == 9)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music3.start(0,999);
   _root["aso#75555"].speedup1._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 2;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 800;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 5;
      }
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
      set("aso#06892",0);
      while(eval("aso#06892") < _root.playerstot)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0._x + _root["aso#75555"]._x,this.kill_reg0._y + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg1._x + _root["aso#75555"]._x,this.kill_reg1._y + _root["aso#75555"]._y,true))
               {
                  if(!_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].hitTest(this.kill_reg0._x + _root["aso#75555"]._x,this.kill_reg0._y + _root["aso#75555"]._y,true) && !_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].hitTest(this.kill_reg1._x + _root["aso#75555"]._x,this.kill_reg1._y + _root["aso#75555"]._y,true))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = -100;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                  }
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg2))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = -100;
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
               }
            }
         }
         eval("aso#06892")++;
      }
      set("aso#06892",0);
      if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 2.5;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
      }
   };
}
