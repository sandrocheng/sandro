package com.avg.tuneup.taskkiller;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avg.a.e;
import com.avg.a.g;
import com.avg.ui.general.a.a;
import java.util.ArrayList;

class i
  implements Runnable
{
  i(h paramh)
  {
  }

  public void run()
  {
    this.a.b.removeAllViews();
    ((ProgressBar)this.a.c.findViewById(e.apps_progress_bar)).setVisibility(8);
    ((TextView)this.a.c.findViewById(e.tv_loading)).setVisibility(8);
    synchronized (d.g(this.a.e))
    {
      if (!d.h(this.a.e))
      {
        if (d.f(this.a.e).size() <= 0)
          break label228;
        this.a.e.a(this.a.c);
        this.a.c.findViewById(e.ll_bottom_panel).setVisibility(this.a.e.a());
        if (d.i(this.a.e).o())
          d.a(this.a.e, d.j(this.a.e).getString(g.title_task_killer_preference) + " (" + d.f(this.a.e).size() + ")", this.a.c);
      }
      return;
      label228: this.a.c.findViewById(e.tv_no_running_tasks).setVisibility(this.a.e.G());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.i
 * JD-Core Version:    0.6.2
 */