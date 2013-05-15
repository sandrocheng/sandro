package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import java.util.List;

public class k
  implements BaseColumns
{
  public static long a(Uri paramUri)
  {
    List localList = paramUri.getPathSegments();
    return Long.parseLong((String)localList.get(-2 + localList.size()));
  }

  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterLog");
    return localBuilder.build();
  }

  public static Uri a(long paramLong)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterLog");
    localBuilder.appendPath(String.valueOf(paramLong));
    return localBuilder.build();
  }

  public static Uri b(long paramLong)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterGroups");
    localBuilder.appendPath(String.valueOf(paramLong));
    localBuilder.appendPath("filterLog");
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.k
 * JD-Core Version:    0.6.2
 */