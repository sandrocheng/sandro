package com.hoi.netstat;

import android.os.Handler;

abstract class e
{
  private e(NetStatActivity paramNetStatActivity, byte paramByte)
  {
  }

  public abstract void a();

  public final void b()
  {
    try
    {
      a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        NetStatActivity.a(localException.toString());
        NetStatActivity.a(this.b).sendEmptyMessage(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.e
 * JD-Core Version:    0.6.2
 */