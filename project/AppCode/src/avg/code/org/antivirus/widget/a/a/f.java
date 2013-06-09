package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.widget.a.e;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.l;

public class f extends n
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    if (AVSettings.isFlashLightOn());
    for (e locale = e.a; ; locale = e.b)
    {
      a(locale.a(), null, null, paramRemoteViews, paraml);
      a(paramRemoteViews, paraml, 8, 8);
      i locali = i.j;
      Serializable[] arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "flashlightKey";
      arrayOfSerializable[1] = locale.b();
      arrayOfSerializable[2] = "__SAC";
      arrayOfSerializable[3] = Integer.valueOf(505);
      PendingIntent localPendingIntent = a(paramContext, locali, true, AVService.class, 9, arrayOfSerializable);
      paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
      return true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.f
 * JD-Core Version:    0.6.2
 */