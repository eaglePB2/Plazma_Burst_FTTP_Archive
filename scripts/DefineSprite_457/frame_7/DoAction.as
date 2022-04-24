if(this._currentframe == 7)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music1.start(0,999);
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 3;
      }
      eval("aso#06892")++;
   }
}
