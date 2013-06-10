package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.tuneup.BatterySaveSettingsActivity;
import org.antivirus.widget.a.d;
import org.antivirus.widget.a.l;

public class c extends i
{
  private int a = -1;
  private boolean b = false;

  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    if (paramBundle == null)
      paramBundle = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getExtras();
    int i = paramBundle.getInt("level", -1);
    int j = paramBundle.getInt("scale", -1);
    boolean bool1;
    int k;
    boolean bool2;
    if (paramBundle.getInt("status", -1) == 2)
    {
      bool1 = true;
      k = i * 100 / j;
      if ((paramBoolean) || (this.a != k))
        break label103;
      boolean bool3 = this.b;
      bool2 = false;
      if (bool3 != bool1)
        break label103;
    }
    while (true)
    {
      return bool2;
      bool1 = false;
      break;
      label103: this.a = k;
      this.b = bool1;
      d locald = d.a(k, bool1);
      String str = String.valueOf(k) + '%';
      a(locald.a(), str, null, paramRemoteViews, paraml);
      a(paramRemoteViews, paraml, 0, 8);
      PendingIntent localPendingIntent = a(paramContext, org.antivirus.widget.a.i.b, false, BatterySaveSettingsActivity.class, 333, new Serializable[0]);
      paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
      bool2 = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.c
 * JD-Core Version:    0.6.2
 */