on(release){
   if(Key.isDown(17))
   {
      if(my_so.data.low_q)
      {
         my_so.data.low_q = false;
         _root._quality = "MEDIUM";
      }
      else
      {
         my_so.data.low_q = true;
         _root._quality = "LOW";
      }
   }
   else
   {
      _root["aso#19841"]("<font color=\"#FFFF00\">Hold CTRL when You press this button</font>");
   }
}
