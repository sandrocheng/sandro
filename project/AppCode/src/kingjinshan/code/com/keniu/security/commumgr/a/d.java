package com.keniu.security.commumgr.a;

import android.os.Message;
import com.keniu.security.util.b;

public abstract class d
  implements b
{
  private static void a(p paramp)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = 3;
      localMessage.setData(paramp.a());
      e.u.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public abstract void a();

  public final void b()
  {
    try
    {
      a();
      return;
    }
    catch (p localp)
    {
      while (true)
        a(localp);
    }
    catch (Exception localException)
    {
      while (true)
      {
        q localq = q.a;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localException.toString();
        a(new p(localq, arrayOfString));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.d
 * JD-Core Version:    0.6.2
 */