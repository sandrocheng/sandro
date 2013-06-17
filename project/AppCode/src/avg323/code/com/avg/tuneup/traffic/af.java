package com.avg.tuneup.traffic;

import android.text.format.Formatter;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TableLayout;
import android.widget.TextView;
import com.avg.a.e;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.ui.general.a.a;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

class af
  implements Runnable
{
  af(ae paramae, double[] paramArrayOfDouble)
  {
  }

  public void run()
  {
    y.l(this.b.c).setVisibility(0);
    ProgressBar localProgressBar;
    label264: int i;
    String str;
    TextView localTextView;
    label401: long l1;
    if ((y.a(this.b.c) != null) && (y.a(this.b.c).size() == 0))
    {
      y.l(this.b.c).setText(y.m(this.b.c).getString(g.traffic_no_values));
      if ((this.b.a) && (this.a != null))
      {
        y.q(this.b.c).findViewById(e.bottom_traffic_bar).setVisibility(0);
        this.b.b.setVisibility(0);
        ((TextView)y.q(this.b.c).findViewById(e.tv_traffic_stats)).setText(y.r(this.b.c).getString(g.used) + Formatter.formatFileSize(y.s(this.b.c).getApplicationContext(), ()this.a[1]));
        localProgressBar = (ProgressBar)y.q(this.b.c).findViewById(e.pb_traffic_green);
        if ((this.a[0] <= j.j()) || (this.a[0] >= 100.0D))
          break label605;
        localProgressBar = (ProgressBar)y.q(this.b.c).findViewById(e.pb_traffic_orange);
        localProgressBar.setMax(100);
        localProgressBar.setProgress((int)this.a[0]);
        localProgressBar.setVisibility(0);
        Calendar localCalendar = s.a(y.t(this.b.c).getApplicationContext()).f();
        i = s.a(y.u(this.b.c).getApplicationContext()).g();
        str = DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(localCalendar.getTimeInMillis()));
        localTextView = (TextView)y.q(this.b.c).findViewById(e.tv_time_until);
        localTextView.setVisibility(0);
        if (i > 0)
          break label641;
        localTextView.setText(y.v(this.b.c).getString(g.till_midnight));
        l1 = j.c() - ()this.a[1];
        if (l1 >= 0L)
          break label713;
      }
    }
    label641: label713: for (long l2 = 0L; ; l2 = l1)
    {
      ((TextView)y.q(this.b.c).findViewById(e.tv_traffic_total)).setText(y.x(this.b.c).getString(g.free) + Formatter.formatFileSize(y.y(this.b.c).getApplicationContext(), l2));
      return;
      if (!this.b.a)
      {
        if (s.b(y.n(this.b.c)))
        {
          y.l(this.b.c).setText(y.o(this.b.c).getString(g.traffic_data_since_reboot));
          break;
        }
        y.l(this.b.c).setText(y.p(this.b.c).getString(g.traffic_data_wifi_since_reboot));
        break;
      }
      y.l(this.b.c).setVisibility(8);
      break;
      label605: if (this.a[0] < 100.0D)
        break label264;
      localProgressBar = (ProgressBar)y.q(this.b.c).findViewById(e.pb_traffic_red);
      break label264;
      localTextView.setText(y.w(this.b.c).getString(g.until).replace("[number]", new StringBuilder().append(i).append("").toString()) + " " + str);
      break label401;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.af
 * JD-Core Version:    0.6.2
 */