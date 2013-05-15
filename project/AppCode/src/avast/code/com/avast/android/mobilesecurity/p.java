package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class p
  implements BaseColumns
{
  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("messagesToScan");
    return localBuilder.build();
  }

  public static Uri a(String paramString)
  {
    return a.a.buildUpon().appendEncodedPath("messagesToScan/uuid").appendPath(paramString).build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.p
 * JD-Core Version:    0.6.2
 */