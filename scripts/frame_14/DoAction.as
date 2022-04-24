_root["aso#93101"] = 13;
_root.videos.gotoAndStop(_root["aso#87112"]);
someListener.onMouseDown = function()
{
   if(_root["aso#93101"] == 13)
   {
      if(_root["aso#87112"] == 17)
      {
         gotoAndStop(10);
      }
      else
      {
         gotoAndStop(3);
      }
   }
};
