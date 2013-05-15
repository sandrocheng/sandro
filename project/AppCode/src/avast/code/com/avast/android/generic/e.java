package com.avast.android.generic;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class e
  implements BaseColumns
{
  public static Uri a(Uri paramUri)
  {
    Uri.Builder localBuilder = paramUri.buildUpon();
    localBuilder.appendPath("notifications");
    return localBuilder.build();
  }

  public static Uri a(Uri paramUri, long paramLong)
  {
    Uri.Builder localBuilder = paramUri.buildUpon();
    localBuilder.appendPath("notifications");
    localBuilder.appendPath(String.valueOf(paramLong));
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.e
 * JD-Core Version:    0.6.2
 */