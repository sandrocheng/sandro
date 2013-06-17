package com.avg.tuneup.traffic;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avg.a.e;
import com.avg.tuneup.b;

class ag
  implements Runnable
{
  ag(y paramy)
  {
  }

  public void run()
  {
    if (y.A(this.a).getAdapter() == null)
    {
      y.a(this.a, new b(y.B(this.a), 1, y.a(this.a)));
      y.A(this.a).setAdapter(y.b(this.a));
    }
    while (true)
    {
      y.b(this.a).notifyDataSetChanged();
      ((ProgressBar)y.q(this.a).findViewById(e.apps_progress_bar)).setVisibility(8);
      ((TextView)y.q(this.a).findViewById(e.tv_loading)).setVisibility(8);
      return;
      y.b(this.a).a(y.a(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.ag
 * JD-Core Version:    0.6.2
 */