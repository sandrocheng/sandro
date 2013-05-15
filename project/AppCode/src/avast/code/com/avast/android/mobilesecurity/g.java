package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import com.avast.android.generic.internet.c.a.az;

public class g
  implements BaseColumns
{
  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("antivirusActivity");
    return localBuilder.build();
  }

  public static Uri a(az paramaz)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    switch (b.a[paramaz.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localBuilder.build();
      localBuilder.appendEncodedPath("antivirusActivity/week");
      continue;
      localBuilder.appendEncodedPath("antivirusActivity/month");
      continue;
      localBuilder.appendEncodedPath("antivirusActivity/year");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.g
 * JD-Core Version:    0.6.2
 */