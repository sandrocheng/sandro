package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.core.scanners.c;
import org.antivirus.ui.main.AntivirusMainScreen;
import org.antivirus.ui.scan.results.ScanResultsExpandable;
import org.antivirus.widget.a.f;
import org.antivirus.widget.a.l;

public class g extends i
{
  private c a;

  public final boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean)
  {
    boolean bool1;
    label41: boolean bool2;
    label60: f localf;
    if (paramBundle == null)
    {
      org.antivirus.core.scanners.g localg = new org.antivirus.core.scanners.g();
      localg.a(paramContext);
      long l = localg.b;
      int i = localg.b();
      if (i > 0)
      {
        bool1 = true;
        Intent localIntent = new Intent();
        if (l != 0L)
          break label279;
        bool2 = true;
        localIntent.putExtra("firstScan", bool2);
        localIntent.putExtra("threatFound", bool1);
        if (bool1)
        {
          localIntent.putExtra("threatCount", String.valueOf(i));
          localIntent.putExtra("ScannerClient", c.a);
        }
        paramBundle = localIntent.getExtras();
      }
    }
    else
    {
      if (!paramBundle.getBoolean("firstScan"))
        break label285;
      localf = f.c;
      label129: boolean bool3 = localf.equals(f.b);
      String str = null;
      if (bool3)
      {
        this.a = ((c)paramBundle.get("ScannerClient"));
        str = paramBundle.getString("threatCount");
      }
      a(localf.a(), null, str, paramRemoteViews, paraml);
      if (!localf.equals(f.b))
        break label310;
    }
    int k;
    label279: label285: label310: for (int j = 0; ; j = 8)
    {
      a(paramRemoteViews, paraml, 8, j);
      k = paraml.a;
      switch (h.a[localf.ordinal()])
      {
      default:
        throw new IllegalStateException("Not supported protection state: " + localf);
        bool1 = false;
        break label41;
        bool2 = false;
        break label60;
        if (paramBundle.getBoolean("threatFound"))
        {
          localf = f.b;
          break label129;
        }
        localf = f.a;
        break label129;
      case 1:
      case 2:
      case 3:
      }
    }
    org.antivirus.widget.a.i locali2 = org.antivirus.widget.a.i.a;
    Serializable[] arrayOfSerializable2 = new Serializable[6];
    arrayOfSerializable2[0] = "ScannerClient";
    arrayOfSerializable2[1] = Boolean.valueOf(true);
    arrayOfSerializable2[2] = "StartedFromWidget";
    arrayOfSerializable2[3] = Boolean.valueOf(true);
    arrayOfSerializable2[4] = "avmsStartScan";
    arrayOfSerializable2[5] = Boolean.valueOf(true);
    org.antivirus.widget.a.i locali1;
    Serializable[] arrayOfSerializable1;
    for (PendingIntent localPendingIntent = a(paramContext, locali2, false, AntivirusMainScreen.class, 6, arrayOfSerializable2); ; localPendingIntent = a(paramContext, locali1, false, ScanResultsExpandable.class, 6, arrayOfSerializable1))
    {
      paramRemoteViews.setOnClickPendingIntent(k, localPendingIntent);
      return true;
      locali1 = org.antivirus.widget.a.i.a;
      arrayOfSerializable1 = new Serializable[2];
      arrayOfSerializable1[0] = "ScannerClient";
      arrayOfSerializable1[1] = this.a;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.g
 * JD-Core Version:    0.6.2
 */