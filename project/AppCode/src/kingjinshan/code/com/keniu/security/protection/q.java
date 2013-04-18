package com.keniu.security.protection;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import com.keniu.security.monitor.a;
import com.keniu.security.monitor.b;

public final class q
  implements b
{
  private static final String a = "PreventTheftSmsSentMonitor";
  private static final int b = 10;
  private static boolean c = false;
  private static q d;
  private Context e;
  private Handler f = new r(this);

  public static void a()
  {
    try
    {
      boolean bool = c;
      if (bool);
      while (true)
      {
        return;
        c = true;
        if (d == null)
        {
          d = new q();
          a.a().a(a.w, d, 0);
        }
      }
    }
    finally
    {
    }
  }

  private void a(x paramx)
  {
    this.e = paramx.a.getApplicationContext();
    if (paramx.g == -1)
      if (paramx.f)
        Toast.makeText(this.e, 2131429326, 1).show();
    while (true)
    {
      return;
      if ((paramx.c != null) && (paramx.d != null))
      {
        int i = 1 + paramx.e;
        if ((i > 0) && (i <= 10))
          new s(this, i, paramx).start();
        else if ((i > 10) && (paramx.f))
          Toast.makeText(this.e, 2131429327, 1).show();
      }
    }
  }

  private void b(x paramx)
  {
    if (paramx.g == -1)
      if (paramx.f)
        Toast.makeText(this.e, 2131429326, 1).show();
    while (true)
    {
      return;
      if ((paramx.c != null) && (paramx.d != null))
      {
        int i = 1 + paramx.e;
        if ((i > 0) && (i <= 10))
          new s(this, i, paramx).start();
        else if ((i > 10) && (paramx.f))
          Toast.makeText(this.e, 2131429327, 1).show();
      }
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    x localx;
    if (paramInt == a.w)
    {
      Log.d("PreventTheftSmsSentMonitor", "monitor sent");
      localx = (x)paramObject1;
      this.e = localx.a.getApplicationContext();
      if (localx.g != -1)
        break label65;
      if (localx.f)
        Toast.makeText(this.e, 2131429326, 1).show();
    }
    while (true)
    {
      return 0;
      label65: if ((localx.c != null) && (localx.d != null))
      {
        int i = 1 + localx.e;
        if ((i > 0) && (i <= 10))
          new s(this, i, localx).start();
        else if ((i > 10) && (localx.f))
          Toast.makeText(this.e, 2131429327, 1).show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.q
 * JD-Core Version:    0.6.2
 */