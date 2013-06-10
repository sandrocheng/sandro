package org.antivirus.tuneup;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.format.Formatter;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TableLayout;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.antivirus.AVSettings;
import org.antivirus.Strings;

final class bi
  implements Runnable
{
  bi(bh parambh, double[] paramArrayOfDouble)
  {
  }

  public final void run()
  {
    TrafficMeterActivity.d(this.b.c).setVisibility(0);
    ProgressBar localProgressBar;
    label223: int i;
    String str;
    TextView localTextView;
    label343: long l1;
    if ((TrafficMeterActivity.e(this.b.c) != null) && (TrafficMeterActivity.e(this.b.c).size() == 0))
    {
      TrafficMeterActivity.d(this.b.c).setText(Strings.getString(2131296510));
      if ((this.b.a) && (this.a != null))
      {
        this.b.c.findViewById(2131230958).setVisibility(0);
        this.b.b.setVisibility(0);
        ((TextView)this.b.c.findViewById(2131230965)).setText(Strings.getString(2131296601) + Formatter.formatFileSize(this.b.c.getApplicationContext(), ()this.a[1]));
        localProgressBar = (ProgressBar)this.b.c.findViewById(2131230962);
        if ((this.a[0] <= AVSettings.getDataPlanNotificationThreshold()) || (this.a[0] >= 100.0D))
          break label512;
        localProgressBar = (ProgressBar)this.b.c.findViewById(2131230963);
        localProgressBar.setMax(100);
        localProgressBar.setProgress((int)this.a[0]);
        localProgressBar.setVisibility(0);
        ba.a(this.b.c.getApplicationContext());
        Calendar localCalendar = ba.e();
        ba.a(this.b.c.getApplicationContext());
        i = ba.f();
        str = DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(localCalendar.getTimeInMillis()));
        localTextView = (TextView)this.b.c.findViewById(2131230967);
        localTextView.setVisibility(0);
        if (i > 0)
          break label544;
        localTextView.setText(Strings.getString(2131296615));
        l1 = AVSettings.getDataQuotaBytes() - ()this.a[1];
        if (l1 >= 0L)
          break label600;
      }
    }
    label512: label544: label600: for (long l2 = 0L; ; l2 = l1)
    {
      ((TextView)this.b.c.findViewById(2131230966)).setText(Strings.getString(2131296551) + Formatter.formatFileSize(this.b.c.getApplicationContext(), l2));
      return;
      if (!this.b.a)
      {
        if (this.b.c.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.telephony"))
        {
          TrafficMeterActivity.d(this.b.c).setText(Strings.getString(2131296539));
          break;
        }
        TrafficMeterActivity.d(this.b.c).setText(Strings.getString(2131296642));
        break;
      }
      TrafficMeterActivity.d(this.b.c).setVisibility(8);
      break;
      if (this.a[0] < 100.0D)
        break label223;
      localProgressBar = (ProgressBar)this.b.c.findViewById(2131230964);
      break label223;
      localTextView.setText(Strings.getString(2131296577).replace("[number]", new StringBuilder().append(i).toString()) + " " + str);
      break label343;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bi
 * JD-Core Version:    0.6.2
 */