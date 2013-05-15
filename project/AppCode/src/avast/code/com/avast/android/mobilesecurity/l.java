package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class l
  implements BaseColumns
{
  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("firewall");
    return localBuilder.build();
  }

  public static Uri a(String paramString)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("firewall");
    localBuilder.appendPath(paramString);
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.l
 * JD-Core Version:    0.6.2
 */