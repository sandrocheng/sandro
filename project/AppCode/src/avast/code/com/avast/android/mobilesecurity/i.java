package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.google.analytics.tracking.android.bo;
import java.util.List;

public class i
  implements BaseColumns
{
  public static long a(Uri paramUri)
  {
    List localList = paramUri.getPathSegments();
    String str = (String)localList.get(-2 + localList.size());
    if (TextUtils.isDigitsOnly(str));
    for (long l = Long.parseLong(str); ; l = 0L)
    {
      return l;
      com.avast.android.generic.util.ga.a.a().a("error", "AVD-579: Not numeric groupId", paramUri.toString(), Long.valueOf(0L));
    }
  }

  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterContacts");
    return localBuilder.build();
  }

  public static Uri a(long paramLong)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterGroups");
    localBuilder.appendPath(String.valueOf(paramLong));
    localBuilder.appendPath("filterContacts");
    return localBuilder.build();
  }

  public static Uri a(long paramLong1, long paramLong2)
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("filterGroups");
    localBuilder.appendPath(String.valueOf(paramLong1));
    localBuilder.appendPath("filterContacts");
    localBuilder.appendPath(String.valueOf(paramLong2));
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.i
 * JD-Core Version:    0.6.2
 */