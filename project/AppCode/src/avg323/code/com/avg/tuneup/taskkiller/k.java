package com.avg.tuneup.taskkiller;

import android.view.View;
import android.widget.LinearLayout;
import com.avg.a.e;
import com.avg.a.g;
import com.avg.ui.general.a.a;
import java.util.ArrayList;

class k
  implements Runnable
{
  k(j paramj, b paramb)
  {
  }

  public void run()
  {
    this.b.b.b.removeView(this.b.a);
    d.f(this.b.b.e).remove(this.a);
    if (d.f(this.b.b.e).isEmpty())
    {
      this.b.b.c.findViewById(e.tv_no_running_tasks).setVisibility(this.b.b.e.G());
      this.b.b.c.findViewById(e.ll_bottom_panel).setVisibility(8);
    }
    if (d.m(this.b.b.e).o())
      d.b(this.b.b.e, d.n(this.b.b.e).getString(g.title_task_killer_preference) + " (" + this.b.b.b.getChildCount() + ")", this.b.b.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.k
 * JD-Core Version:    0.6.2
 */