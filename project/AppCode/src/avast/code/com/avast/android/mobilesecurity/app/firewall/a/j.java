package com.avast.android.mobilesecurity.app.firewall.a;

import android.os.Handler;
import android.os.Message;
import com.avast.android.generic.ui.widget.CheckBoxRow;

class j extends Handler
{
  j(e parame)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      e.a(this.a).b();
      try
      {
        label10: e.b(this.a).b();
        try
        {
          label22: e.c(this.a).a();
          label34: return;
        }
        catch (Exception localException3)
        {
          break label34;
        }
      }
      catch (Exception localException2)
      {
        break label22;
      }
    }
    catch (Exception localException1)
    {
      break label10;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.j
 * JD-Core Version:    0.6.2
 */