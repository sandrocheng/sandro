package com.antivirus.e;

import android.os.Bundle;

class d
  implements Runnable
{
  d(b paramb, Bundle paramBundle)
  {
  }

  public void run()
  {
    if (b.a(this.b) != null)
      b.a(this.b).a();
    switch (this.a.getInt("vu_action", -1))
    {
    case 1:
    default:
    case 0:
    }
    while (true)
    {
      return;
      String str = this.a.getString("url");
      int i = this.a.getInt("revision");
      b.a(this.b, new g(b.b(this.b), str, i));
      g localg = b.a(this.b);
      b.a(this.b).a(new e(this, localg));
      new Thread(b.a(this.b)).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.d
 * JD-Core Version:    0.6.2
 */