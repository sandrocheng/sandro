package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.ui.protection.FileScannerActivity;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.l;

public class e extends n
{
  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    a(2130837842, null, null, paramRemoteViews, paraml);
    a(paramRemoteViews, paraml, 8, 8);
    PendingIntent localPendingIntent = a(paramContext, i.f, false, FileScannerActivity.class, 5, new Serializable[0]);
    paramRemoteViews.setOnClickPendingIntent(paraml.a, localPendingIntent);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.e
 * JD-Core Version:    0.6.2
 */