package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.Time;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.b;
import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class u
{
  private static u a;
  private static long b;
  private Context c;
  private Resources d;
  private ContentResolver e;
  private t f;
  private File g;
  private File h;

  @TargetApi(8)
  private u(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.d = this.c.getResources();
    this.f = ((t)ad.a(paramContext, t.class));
    this.e = paramContext.getContentResolver();
    if (Build.VERSION.SDK_INT >= 8);
    for (this.g = new File(this.c.getExternalFilesDir(null), "log"); ; this.g = new File(Environment.getExternalStorageDirectory(), "Android/data/com.avast.android.mobilesecurity/log"))
    {
      this.h = new File(this.g, "avast-log.txt");
      c();
      if (this.f.aW())
        d();
      return;
    }
  }

  private Uri a(w paramw)
  {
    com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Writing log line to DB, date: " + paramw.b + ", type: " + paramw.c);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("date", Long.valueOf(paramw.b));
    localContentValues.put("type", Integer.valueOf(paramw.c.a()));
    if (!TextUtils.isEmpty(paramw.d))
      localContentValues.put("text_primary", paramw.d);
    if (!TextUtils.isEmpty(paramw.e))
      localContentValues.put("text_secondary", paramw.e);
    if (!TextUtils.isEmpty(paramw.f))
      localContentValues.put("text_tertiary", paramw.f);
    if (paramw.g != null)
      localContentValues.put("number_primary", paramw.g);
    if (paramw.h != null)
      localContentValues.put("number_secondary", paramw.h);
    if (paramw.h != null)
      localContentValues.put("number_secondary", paramw.h);
    if (paramw.i != null)
      localContentValues.put("number_tertiary", paramw.i);
    if (this.e == null)
      this.e = this.c.getContentResolver();
    Uri localUri = this.e.insert(com.avast.android.mobilesecurity.m.a(), localContentValues);
    try
    {
      b = 1L + b;
      com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Lines in db: " + b);
      return localUri;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static u a(Context paramContext)
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new u(paramContext);
      return a;
    }
    finally
    {
    }
  }

  private void a(long paramLong)
  {
    com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Dumping lines to file, from id: " + paramLong);
    ContentResolver localContentResolver = this.e;
    Uri localUri = com.avast.android.mobilesecurity.m.a();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    Cursor localCursor = localContentResolver.query(localUri, null, "_id >= ?", arrayOfString, null);
    if (localCursor != null);
    try
    {
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("_id");
        int j = localCursor.getColumnIndex("date");
        int k = localCursor.getColumnIndex("type");
        int m = localCursor.getColumnIndex("text_primary");
        int n = localCursor.getColumnIndex("text_secondary");
        int i1 = localCursor.getColumnIndex("text_tertiary");
        int i2 = localCursor.getColumnIndex("number_primary");
        int i3 = localCursor.getColumnIndex("number_secondary");
        int i4 = localCursor.getColumnIndex("number_tertiary");
        boolean bool;
        do
        {
          w localw = new w(null);
          localw.a = localCursor.getLong(i);
          localw.b = localCursor.getLong(j);
          localw.c = y.a(localCursor.getInt(k));
          localw.d = localCursor.getString(m);
          localw.e = localCursor.getString(n);
          localw.f = localCursor.getString(i1);
          localw.g = Long.valueOf(localCursor.getLong(i2));
          localw.h = Long.valueOf(localCursor.getLong(i3));
          localw.i = Long.valueOf(localCursor.getLong(i4));
          c(localw);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  private boolean b(w paramw)
  {
    while (true)
    {
      try
      {
        boolean bool1 = d();
        bool2 = false;
        if (!bool1)
          return bool2;
        if (e())
        {
          long l = this.f.aV();
          if (paramw.a - l > 1L)
            a(l + 1L);
          else
            c(paramw);
        }
      }
      finally
      {
      }
      com.avast.android.generic.util.m.c("GlobalActivityLogHelper", "Log line could not be written to the log file, because the storage is not writable.");
      boolean bool2 = false;
      continue;
      bool2 = true;
    }
  }

  private void c()
  {
    Cursor localCursor = this.e.query(com.avast.android.mobilesecurity.m.a(), new String[] { "_id" }, null, null, null);
    if (localCursor != null)
    {
      b = localCursor.getCount();
      localCursor.close();
    }
    while (true)
    {
      return;
      b = 0L;
    }
  }

  private void c(w paramw)
  {
    com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Writing log line to file, id: " + paramw.a + ", date: " + paramw.b + ", type: " + paramw.c);
    if (e())
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramw.a).append("\t");
      Time localTime = new Time();
      localTime.set(paramw.b);
      localStringBuilder.append(localTime.format3339(false)).append("\t");
      localStringBuilder.append(paramw.c.toString()).append("\t");
      localStringBuilder.append(paramw.c.a(this.d, paramw.d, paramw.e, paramw.f, paramw.g, paramw.h, paramw.i));
      PrintWriter localPrintWriter = new PrintWriter(new FileWriter(this.h, true));
      try
      {
        localPrintWriter.println(localStringBuilder.toString());
        localPrintWriter.flush();
        localPrintWriter.close();
        this.f.h(paramw.a);
        return;
      }
      finally
      {
        localPrintWriter.flush();
        localPrintWriter.close();
      }
    }
    throw new IOException("External storage not writable.");
  }

  private boolean d()
  {
    boolean bool1;
    if (f())
      if (!this.g.exists())
        if (e())
        {
          com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Creating log dir.");
          boolean bool3 = this.g.mkdir();
          bool1 = false;
          if (bool3)
            break label65;
        }
    while (true)
    {
      return bool1;
      com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Storage not writable.");
      bool1 = false;
      continue;
      label65: if ((this.h.exists()) || (e()));
      try
      {
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Creating log file.");
        boolean bool2 = this.h.createNewFile();
        bool1 = bool2;
        continue;
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Storage not writable.");
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Storage not readable.");
        bool1 = false;
        continue;
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Log file exists.");
        bool1 = true;
      }
      catch (IOException localIOException)
      {
        bool1 = false;
      }
    }
  }

  private boolean e()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  private boolean f()
  {
    if ((Environment.getExternalStorageState().equals("mounted")) || (Environment.getExternalStorageState().equals("mounted_ro")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int g()
  {
    com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Deleting old lines from db.");
    Cursor localCursor = this.e.query(com.avast.android.mobilesecurity.m.a(), new String[] { "_id" }, null, null, "_id");
    boolean bool;
    int i;
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      int j = localCursor.getColumnIndex("_id");
      String[] arrayOfString = new String[2];
      arrayOfString[0] = String.valueOf(localCursor.getLong(j));
      if (localCursor.getCount() >= 100)
      {
        bool = localCursor.moveToPosition(99);
        if (!bool)
          break label220;
        arrayOfString[1] = String.valueOf(localCursor.getLong(j));
        i = this.e.delete(com.avast.android.mobilesecurity.m.a(), "_id >= ? AND _id <= ?", arrayOfString);
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Deleted lines: " + i);
      }
    }
    while (true)
    {
      try
      {
        b -= i;
        com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Lines in db: " + b);
        return i;
        bool = localCursor.moveToLast();
        break;
      }
      finally
      {
      }
      label220: com.avast.android.generic.util.m.d("GlobalActivityLogHelper", "Cursor could not be moved to the last position.");
      i = 0;
    }
  }

  public void a()
  {
    b.a(new v(this), new Void[0]);
  }

  public void a(y paramy, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    w localw = new w(null);
    localw.b = System.currentTimeMillis();
    localw.c = paramy;
    localw.d = paramString1;
    localw.e = paramString2;
    localw.f = paramString3;
    localw.g = paramLong1;
    localw.h = paramLong2;
    localw.i = paramLong3;
    com.avast.android.generic.util.m.b("GlobalActivityLogHelper", "Inserting log line, date: " + localw.b + ", type: " + paramy.a());
    new x(this, null).execute(new w[] { localw });
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.u
 * JD-Core Version:    0.6.2
 */