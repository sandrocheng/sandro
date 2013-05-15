package com.avast.android.mobilesecurity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public class r
  implements BaseColumns
{
  public static final String[] a = { "_id", "timestamp", "realtimeElapsed", "totalTx3G", "totalRx3G", "totalTxWifi", "totalRxWifi", "totalTxRoaming", "totalRxRoaming", "totalTx", "totalRx", "cumulationLevel", "uid", "totalTxOffset", "totalRxOffset" };

  public static Uri a()
  {
    Uri.Builder localBuilder = a.a.buildUpon();
    localBuilder.appendPath("trafficInfo");
    return localBuilder.build();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.r
 * JD-Core Version:    0.6.2
 */