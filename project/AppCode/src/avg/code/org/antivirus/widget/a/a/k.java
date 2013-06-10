package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import java.text.DecimalFormat;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.tuneup.DataPlanSettingsActivity;
import org.antivirus.tuneup.TrafficMeterActivity;
import org.antivirus.widget.a.g;
import org.antivirus.widget.a.l;

public class k extends i
{
  private double a = -1.0D;
  private g b = null;
  private DecimalFormat c = new DecimalFormat("#.#");

  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    if (paramBundle == null)
    {
      boolean bool2 = AVSettings.isTrafficCounterOn();
      paramBundle = new Bundle();
      paramBundle.putBoolean("dataPlanSet", bool2);
      if (bool2)
      {
        double d3 = org.antivirus.tuneup.ba.a(paramContext).b()[0];
        int j = AVSettings.getDataPlanNotificationThreshold();
        paramBundle.putDouble("dataPercentLeft", d3);
        paramBundle.putInt("dataThreshold", j);
      }
    }
    double d1 = paramBundle.getDouble("dataPercentLeft", -1.0D);
    g localg = g.a(paramBundle.getBoolean("dataPlanSet", false), d1);
    double d2 = (int)(d1 * 10.0D) / 10.0D;
    boolean bool1;
    if (!paramBoolean)
    {
      if ((g.i.equals(localg)) && (g.i.equals(this.b)));
      for (bool1 = false; ; bool1 = false)
      {
        return bool1;
        if ((g.i.equals(localg)) || (this.a != d2))
          break;
      }
    }
    this.b = localg;
    this.a = d2;
    String str;
    label235: int i;
    switch (l.a[localg.ordinal()])
    {
    default:
      str = this.c.format(this.a) + "%";
      a(localg.a(), str, null, paramRemoteViews, paraml);
      a(paramRemoteViews, paraml, 0, 8);
      i = paraml.a;
      if (!localg.b())
        break;
    case 1:
    }
    org.antivirus.widget.a.i locali;
    Serializable[] arrayOfSerializable;
    for (PendingIntent localPendingIntent = a(paramContext, org.antivirus.widget.a.i.c, false, TrafficMeterActivity.class, 8, new Serializable[0]); ; localPendingIntent = a(paramContext, locali, false, DataPlanSettingsActivity.class, 8, arrayOfSerializable))
    {
      paramRemoteViews.setOnClickPendingIntent(i, localPendingIntent);
      bool1 = true;
      break;
      str = Strings.getString(2131296671);
      break label235;
      locali = org.antivirus.widget.a.i.c;
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "new_activation";
      arrayOfSerializable[1] = Boolean.valueOf(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.k
 * JD-Core Version:    0.6.2
 */