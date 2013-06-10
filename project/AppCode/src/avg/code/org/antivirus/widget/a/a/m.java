package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import java.util.Date;
import org.antivirus.core.EngineSettings;
import org.antivirus.ui.protection.ProtectionActivity;
import org.antivirus.widget.a.h;
import org.antivirus.widget.a.l;

public class m extends i
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    long l = new EngineSettings(paramContext).getLastSecurityUpdate();
    if (l <= 0L);
    for (String str1 = "N/A"; ; str1 = android.text.format.DateFormat.getDateFormat(paramContext).format(new Date(l)))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("lastUpdateDateString", str1);
      String str2 = localBundle.getString("lastUpdateDateString");
      a(h.a.a(), str2, null, paramRemoteViews, paraml);
      a(paramRemoteViews, paraml, 0, 8);
      org.antivirus.widget.a.i locali = org.antivirus.widget.a.i.i;
      Serializable[] arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "launchFormWidget";
      arrayOfSerializable[1] = Boolean.TRUE;
      PendingIntent localPendingIntent = a(paramContext, locali, false, ProtectionActivity.class, 10, arrayOfSerializable);
      paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
      return true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.m
 * JD-Core Version:    0.6.2
 */