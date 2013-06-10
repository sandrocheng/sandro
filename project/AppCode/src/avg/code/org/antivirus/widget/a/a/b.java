package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.AVService;
import org.antivirus.applocker.a;
import org.antivirus.widget.a.c;
import org.antivirus.widget.a.l;

public class b extends i
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    if (paramBundle == null)
    {
      new a();
      paramBundle = new Bundle();
      paramBundle.putInt("LockedAppsCount", a.d(paramContext));
    }
    int i = paramBundle.getInt("LockedAppsCount");
    c localc = c.a(i);
    String str = " " + String.valueOf(i) + " ";
    a(localc.a(), "", str, paramRemoteViews, paraml);
    if (localc.equals(c.a));
    for (int j = 0; ; j = 8)
    {
      a(paramRemoteViews, paraml, 8, j);
      org.antivirus.widget.a.i locali = org.antivirus.widget.a.i.e;
      Serializable[] arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "trialItem";
      arrayOfSerializable[1] = Integer.valueOf(0);
      arrayOfSerializable[2] = "__SAC";
      arrayOfSerializable[3] = Integer.valueOf(504);
      PendingIntent localPendingIntent = a(paramContext, locali, true, AVService.class, 2, arrayOfSerializable);
      paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
      return true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.b
 * JD-Core Version:    0.6.2
 */