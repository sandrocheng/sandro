package com.antivirus.wipe;

import android.view.LayoutInflater;

class t
  implements Runnable
{
  t(b paramb, a parama, LayoutInflater paramLayoutInflater)
  {
  }

  public void run()
  {
    b.b(this.c, ak.a(this.a.b));
    b.t(this.c).runOnUiThread(new u(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.t
 * JD-Core Version:    0.6.2
 */