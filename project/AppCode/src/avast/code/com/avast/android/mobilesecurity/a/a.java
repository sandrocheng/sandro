package com.avast.android.mobilesecurity.a;

import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.t;

public class a
  implements com.avast.android.generic.a.a
{
  private static boolean a = false;
  private u b;
  private t c;

  public a(u paramu, t paramt)
  {
    this.b = paramu;
    this.c = paramt;
  }

  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
    if (this.c.o())
      this.b.a(y.z, null, null, null, null, null, null);
  }

  public boolean a()
  {
    if (BaseActivity.f > this.c.aZ())
      a = false;
    return a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.a.a
 * JD-Core Version:    0.6.2
 */