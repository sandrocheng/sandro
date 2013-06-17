package com.avg.tuneup.traffic;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import com.avg.toolkit.f.a;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class v extends SQLiteOpenHelper
{
  private final String a = "interfacetype";
  private final String b = "lastrx";
  private final String c = "lasttx";
  private final String d = "totalrx";
  private final String e = "totaltx";
  private final String f = "lastupdate";
  private final String g = "lastreset";
  private final String h = "countertype";
  private final DateFormat i = new SimpleDateFormat("yyyy-MM-dd");

  public v(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }

  private long a(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2)
      if (paramLong2 - paramLong1 >= paramLong1);
    while (true)
    {
      return paramLong1;
      paramLong1 = 0L;
      continue;
      paramLong1 = paramLong2;
    }
  }

  private Cursor c(String paramString)
  {
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    localSQLiteQueryBuilder.setTables("mobiletraffictotaltable");
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Integer.toString(3);
    return localSQLiteQueryBuilder.query(localSQLiteDatabase, null, "interfacetype=? AND countertype=?", arrayOfString, null, null, null);
  }

  public String a(Calendar paramCalendar)
  {
    return this.i.format(paramCalendar.getTime());
  }

  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists mobiletraffictotaltable(_id integer primary key autoincrement, countertype integer, lastupdate text, interfacetype text, lastreset long, totalrx long, totaltx long, lastrx long, lasttx long )");
  }

  public void a(String paramString)
  {
    try
    {
      getWritableDatabase().execSQL("drop table if exists " + paramString);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void a(String paramString, long paramLong1, long paramLong2)
  {
    if (((paramLong1 == -1L) && (paramLong2 == -1L)) || ((paramLong1 <= 0L) && (paramLong2 <= 0L)))
      return;
    String str = a(Calendar.getInstance());
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("interfacetype", paramString);
    localContentValues.put("lastrx", Long.valueOf(paramLong1));
    localContentValues.put("lasttx", Long.valueOf(paramLong2));
    localContentValues.put("totalrx", Integer.valueOf(0));
    localContentValues.put("totaltx", Integer.valueOf(0));
    localContentValues.put("lastupdate", str);
    localContentValues.put("countertype", Integer.valueOf(3));
    Cursor localCursor = c(paramString);
    if (localCursor.getCount() < 1)
      getWritableDatabase().insert("mobiletraffictotaltable", null, localContentValues);
    while (true)
    {
      localCursor.close();
      break;
      localCursor.moveToFirst();
      getWritableDatabase().update("mobiletraffictotaltable", localContentValues, "interfacetype=?", new String[] { paramString });
    }
  }

  public void a(String paramString, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (((paramLong1 == -1L) && (paramLong2 == -1L)) || ((paramLong1 <= 0L) && (paramLong2 <= 0L)));
    String str;
    Cursor localCursor;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    while (true)
    {
      return;
      str = a(Calendar.getInstance());
      localCursor = c(paramString);
      l1 = 0L;
      l2 = 0L;
      if (localCursor.getCount() <= 0)
        break label346;
      localCursor.moveToFirst();
      l3 = localCursor.getLong(localCursor.getColumnIndex("lastrx"));
      l4 = localCursor.getLong(localCursor.getColumnIndex("lasttx"));
      l5 = localCursor.getLong(localCursor.getColumnIndex("totalrx"));
      l6 = localCursor.getLong(localCursor.getColumnIndex("totaltx"));
      if ((l3 != paramLong1) || (l4 != l3))
        break;
      localCursor.close();
    }
    long l7 = paramLong1 - a(paramLong1, l3);
    if ((l7 > 0L) && (paramBoolean))
      l5 += l7;
    long l8 = paramLong2 - a(paramLong2, l4);
    if ((l8 > 0L) && (paramBoolean))
      l6 += l8;
    ContentValues localContentValues2 = new ContentValues();
    localContentValues2.put("interfacetype", paramString);
    localContentValues2.put("lastrx", Long.valueOf(paramLong1));
    localContentValues2.put("lasttx", Long.valueOf(paramLong2));
    localContentValues2.put("totalrx", Long.valueOf(l5));
    localContentValues2.put("totaltx", Long.valueOf(l6));
    localContentValues2.put("lastupdate", str);
    localContentValues2.put("countertype", Integer.valueOf(3));
    getWritableDatabase().update("mobiletraffictotaltable", localContentValues2, "interfacetype=?", new String[] { paramString });
    while (true)
    {
      localCursor.close();
      break;
      label346: if (paramBoolean)
      {
        l2 = paramLong2;
        l1 = paramLong1;
      }
      ContentValues localContentValues1 = new ContentValues();
      localContentValues1.put("interfacetype", paramString);
      localContentValues1.put("lastrx", Long.valueOf(paramLong1));
      localContentValues1.put("lasttx", Long.valueOf(paramLong2));
      localContentValues1.put("totalrx", Long.valueOf(l1));
      localContentValues1.put("totaltx", Long.valueOf(l2));
      localContentValues1.put("lastupdate", str);
      localContentValues1.put("countertype", Integer.valueOf(3));
      getWritableDatabase().insert("mobiletraffictotaltable", null, localContentValues1);
    }
  }

  public long[] b(String paramString)
  {
    long[] arrayOfLong1 = { 0L, 0L };
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    long[] arrayOfLong2;
    if (localSQLiteDatabase == null)
      arrayOfLong2 = arrayOfLong1;
    while (true)
    {
      return arrayOfLong2;
      SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
      localSQLiteQueryBuilder.setTables("mobiletraffictotaltable");
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramString;
      arrayOfString[1] = Integer.toString(3);
      Cursor localCursor = localSQLiteQueryBuilder.query(localSQLiteDatabase, null, "interfacetype=? AND countertype=?", arrayOfString, null, null, null);
      try
      {
        if (localCursor.getCount() > 0)
        {
          localCursor.moveToFirst();
          arrayOfLong1[0] = localCursor.getLong(localCursor.getColumnIndex("totalrx"));
          arrayOfLong1[1] = localCursor.getLong(localCursor.getColumnIndex("totaltx"));
        }
        localCursor.close();
        arrayOfLong2 = arrayOfLong1;
      }
      catch (Exception localException)
      {
        while (true)
        {
          a.a(localException);
          localCursor.close();
        }
      }
      finally
      {
        localCursor.close();
      }
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.v
 * JD-Core Version:    0.6.2
 */