if(this.dead == false)
{
   if(Math.abs(this._x - _root["aso#56196"].player0._x) > 400 && (Math.abs(this._x - _root["aso#56196"].player1._x) > 400 || _root["aso#56196"].player1["aso#12881"] <= 0))
   {
      this.gotoAndPlay("run_loop");
   }
   else
   {
      this.gotoAndPlay("fire");
   }
}
else
{
   this.gotoAndPlay("die");
}
