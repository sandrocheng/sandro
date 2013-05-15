package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class f
  implements BaseColumns
{
  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("advisorGroups");
    return localBuilder.build();
  }

  public static Uri a(long paramLong)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("advisorGroups");
    localBuilder.appendPath(String.valueOf(paramLong));
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.f
 * JD-Core Version:    0.6.2
 */