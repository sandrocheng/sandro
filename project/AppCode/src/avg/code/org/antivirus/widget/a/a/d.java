package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.AVService;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.l;

public class d extends n
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    a(2130837835, null, null, paramRemoteViews, paraml);
    a(paramRemoteViews, paraml, 8, 8);
    i locali = i.h;
    Serializable[] arrayOfSerializable = new Serializable[2];
    arrayOfSerializable[0] = "__SAC";
    arrayOfSerializable[1] = Integer.valueOf(506);
    PendingIntent localPendingIntent = a(paramContext, locali, true, AVService.class, 4, arrayOfSerializable);
    paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.d
 * JD-Core Version:    0.6.2
 */