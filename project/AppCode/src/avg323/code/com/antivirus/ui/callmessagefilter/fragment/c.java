package com.antivirus.ui.callmessagefilter.fragment;

import android.widget.ListView;
import com.antivirus.ui.callmessagefilter.d;
import com.antivirus.ui.callmessagefilter.w;

class c
  implements Runnable
{
  c(a parama, int paramInt, d paramd)
  {
  }

  public void run()
  {
    if (this.a >= 0)
      this.c.c.a(this.a, this.b);
    while (true)
    {
      if ((this.c.c.getCount() >= this.c.d) || (this.c.h))
      {
        this.c.c.notifyDataSetChanged();
        if ((this.c.l()) && (this.c.n()) && (!this.c.N().isShown()))
        {
          this.c.a(true);
          this.c.c(this.c.b.a());
        }
      }
      return;
      this.c.c.a(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.c
 * JD-Core Version:    0.6.2
 */