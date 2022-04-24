if(this.dead == false)
{
   if(Math.abs(this._x - _root["aso#56196"].player0._x) > 400 && (Math.abs(this._x - _root["aso#56196"].player1._x) > 400 || _root["aso#56196"].player1["aso#12881"] <= 0))
   {
      if(this.run)
      {
         this.gotoAndPlay("run_loop");
      }
      else
      {
         this.gotoAndPlay("idle");
      }
   }
}
else
{
   this.gotoAndPlay("die");
}
