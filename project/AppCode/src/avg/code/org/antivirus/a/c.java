package org.antivirus.a;

import android.os.Bundle;

public final class c
  implements Runnable
{
  public c(a parama, Bundle paramBundle)
  {
  }

  public final void run()
  {
    if (this.b.a != null)
      this.b.a.a();
    switch (this.a.getInt("action", -1))
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      String str = this.a.getString("url");
      int i = this.a.getInt("revision");
      this.b.a = new h(this.b.c, str, i);
      h localh = this.b.a;
      this.b.a.a = new d(this, localh);
      new Thread(this.b.a).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.a.c
 * JD-Core Version:    0.6.2
 */