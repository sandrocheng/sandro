package com.keniu.security.protection;

import android.media.MediaPlayer;

final class b
  implements Runnable
{
  b(a parama)
  {
  }

  public final void run()
  {
    if ((a.a(this.a) != null) && (!a.b(this.a)))
    {
      a.a(this.a).stop();
      a.c(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.b
 * JD-Core Version:    0.6.2
 */