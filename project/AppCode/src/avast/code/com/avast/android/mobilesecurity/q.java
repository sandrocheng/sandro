package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class q
  implements BaseColumns
{
  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("results");
    return localBuilder.build();
  }

  public static Uri b()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("results_on_demand");
    return localBuilder.build();
  }

  public static Uri c()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("count");
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.q
 * JD-Core Version:    0.6.2
 */