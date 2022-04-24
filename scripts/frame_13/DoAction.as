_root["aso#67753"] = 12;
_root["aso#42405"]._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
_root.visarea._visible = false;
_root.screenarea._visible = false;
_root.glow._alpha = 0;
_root.stop();
_root.onEnterFrame = function()
{
};
Mouse.show();
var scoresCallback = function(result)
{
   if(!result.success)
   {
      gotoAndStop(2);
   }
   else
   {
      var _loc2_ = 0;
      while(_loc2_ < result.list.length && _loc2_ < 12)
      {
         var _loc4_ = _loc2_ + 1;
         if(_loc2_ != 0)
         {
            duplicateMovieClip(_root.lizt2.item0,"item" + _loc2_,16384 + _loc2_);
         }
         _root.lizt2["item" + _loc2_]._y = 17 + _loc2_ * 16;
         _root.lizt2["item" + _loc2_].l.text = result.list[_loc2_].username;
         _root.lizt2["item" + _loc2_].r.text = result.list[_loc2_].score;
         if(_loc2_ == 11)
         {
            _root.lizt2["item" + _loc2_].l.text = "...";
            _root.lizt2["item" + _loc2_].r.text = "";
         }
         _loc2_ = _loc2_ + 1;
      }
   }
};
_root.kongregateScores.requestList(scoresCallback,this);
