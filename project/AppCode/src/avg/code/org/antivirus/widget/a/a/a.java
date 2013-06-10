package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import java.util.Date;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ui.backup.apps.RestoreActivity;
import org.antivirus.widget.a.b;
import org.antivirus.widget.a.l;

public class a extends i
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    if (AVSettings.getLastBackupTime() == 0L)
      RestoreActivity.f();
    long l = AVSettings.getLastBackupTime();
    if (l == 0L);
    for (String str = Strings.getString(2131296509); ; str = android.text.format.DateFormat.getDateFormat(paramContext).format(new Date(l)))
    {
      a(b.a.a(), str, null, paramRemoteViews, paraml);
      a(paramRemoteViews, paraml, 0, 8);
      org.antivirus.widget.a.i locali = org.antivirus.widget.a.i.g;
      Serializable[] arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "trialItem";
      arrayOfSerializable[1] = Integer.valueOf(1);
      arrayOfSerializable[2] = "__SAC";
      arrayOfSerializable[3] = Integer.valueOf(504);
      PendingIntent localPendingIntent = a(paramContext, locali, true, AVService.class, 1, arrayOfSerializable);
      paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
      return true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.a
 * JD-Core Version:    0.6.2
 */