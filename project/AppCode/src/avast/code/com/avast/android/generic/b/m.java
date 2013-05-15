package com.avast.android.generic.b;

import android.os.Looper;

class m
  implements Runnable
{
  m(l paraml)
  {
  }

  public void run()
  {
    Looper.prepare();
    l.a(this.a, new n(this));
    l.a(this.a, true);
    Looper.loop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.m
 * JD-Core Version:    0.6.2
 */