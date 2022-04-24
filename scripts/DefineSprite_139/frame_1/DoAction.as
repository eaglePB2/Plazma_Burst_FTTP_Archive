if(this._currentframe == 1)
{
   this.stop();
}
if(this._parent._parent["w_upg" + this._parent._currentframe] >= 1)
{
   this.upg1._visible = true;
}
else
{
   this.upg1._visible = false;
}
if(this._parent._parent["w_upg" + this._parent._currentframe] >= 2)
{
   this.upg2._visible = true;
}
else
{
   this.upg2._visible = false;
}
