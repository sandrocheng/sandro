package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentValues;
import com.avast.android.generic.util.t;
import com.avast.android.mobilesecurity.r;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class b
{
  public long a = 0L;
  public long b = 0L;
  public long c = 0L;
  public long d = 0L;
  public long e = 0L;
  public long f = 0L;
  public long g = 0L;
  public long h = 0L;
  public long i = 0L;
  public int j = 3;
  public boolean k = false;

  public b(a parama, int paramInt)
  {
    this.j = paramInt;
  }

  public void a()
  {
    this.a = 0L;
    this.b = 0L;
    this.c = 0L;
    this.d = 0L;
    this.e = 0L;
    this.f = 0L;
    this.g = 0L;
    this.h = 0L;
    this.i = 0L;
  }

  public void a(String paramString)
  {
    t.a(paramString, "(" + this.l.h + ", " + this.k + ", " + this.j + "): " + "mTimestamp: " + SimpleDateFormat.getDateTimeInstance().format(Long.valueOf(this.a)) + " " + "mTotalTx3G: " + this.b + " " + "mTotalRx3G: " + this.c + " " + "mTotalTxWifi: " + this.d + " " + "mTotalRxWifi: " + this.e + " " + "mTotalTxRoaming: " + this.f + " " + "mTotalRxRoaming: " + this.g);
    t.a(paramString, "mTotalTx: " + this.h + " " + "mTotalRx: " + this.i);
  }

  public void a(ArrayList paramArrayList)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("cumulationLevel", Integer.valueOf(this.j));
    localContentValues.put("realtimeElapsed", Long.valueOf(this.l.a));
    localContentValues.put("timestamp", Long.valueOf(this.a));
    localContentValues.put("totalRx", Long.valueOf(this.i));
    localContentValues.put("totalTx", Long.valueOf(this.h));
    localContentValues.put("totalRx3G", Long.valueOf(this.c));
    localContentValues.put("totalTx3G", Long.valueOf(this.b));
    localContentValues.put("totalRxRoaming", Long.valueOf(this.g));
    localContentValues.put("totalTxRoaming", Long.valueOf(this.f));
    localContentValues.put("totalRxWifi", Long.valueOf(this.e));
    localContentValues.put("totalTxWifi", Long.valueOf(this.d));
    localContentValues.put("totalRxOffset", Long.valueOf(this.l.c));
    localContentValues.put("totalTxOffset", Long.valueOf(this.l.b));
    localContentValues.put("uid", Long.valueOf(this.l.h));
    if (this.k)
      paramArrayList.add(ContentProviderOperation.newUpdate(r.a()).withValues(localContentValues).withSelection("uid = " + this.l.h + " AND " + "cumulationLevel" + " = " + this.j, null).build());
    while (true)
    {
      this.k = true;
      return;
      paramArrayList.add(ContentProviderOperation.newInsert(r.a()).withValues(localContentValues).build());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.b
 * JD-Core Version:    0.6.2
 */