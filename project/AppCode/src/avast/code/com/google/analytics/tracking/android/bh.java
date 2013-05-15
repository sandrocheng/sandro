package com.google.analytics.tracking.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class bh
  implements j
{
  private static final String d = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string" });
  private long a = 120000L;
  private long b;
  private boolean c = true;
  private final bj e;
  private volatile o f;
  private final k g;
  private final Context h;
  private final String i;
  private long j;

  bh(k paramk, Context paramContext)
  {
    this(paramk, paramContext, "google_analytics_v2.db");
  }

  bh(k paramk, Context paramContext, String paramString)
  {
    this.h = paramContext.getApplicationContext();
    this.i = paramString;
    this.g = paramk;
    this.e = new bj(this, this.h, this.i);
    this.f = new bm(this, g(), this.h);
    this.j = 0L;
  }

  private SQLiteDatabase a(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase2 = this.e.getWritableDatabase();
      localSQLiteDatabase1 = localSQLiteDatabase2;
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        ay.h(paramString);
        SQLiteDatabase localSQLiteDatabase1 = null;
      }
    }
  }

  public static String a(Map paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList.add((String)localEntry.getKey() + "=" + aw.a((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }

  private void a(Map paramMap, long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for putHit");
    if (localSQLiteDatabase == null);
    while (true)
    {
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("hit_string", a(paramMap));
      localContentValues.put("hit_time", Long.valueOf(paramLong));
      if (paramString == null)
        paramString = "http://www.google-analytics.com/collect";
      if (paramString.length() == 0)
      {
        ay.h("empty path: not sending hit");
      }
      else
      {
        localContentValues.put("hit_url", paramString);
        try
        {
          localSQLiteDatabase.insert("hits2", null, localContentValues);
          this.g.a(false);
        }
        catch (SQLiteException localSQLiteException)
        {
          ay.h("Error storing hit");
        }
      }
    }
  }

  private void a(Map paramMap, String paramString1, String paramString2)
  {
    if (paramString2 == null)
      paramString2 = "-s1";
    if (paramString1 != null)
      paramMap.put(paramString1, paramString2);
  }

  private void a(Map paramMap, Collection paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Command localCommand = (Command)localIterator.next();
      if (localCommand.a().equals("appendVersion"))
      {
        String str = localCommand.c();
        a(paramMap, localCommand.b(), str);
      }
    }
  }

  private ax g()
  {
    return new bi(this);
  }

  private void h()
  {
    int k = 1 + (-2000 + d());
    if (k > 0)
    {
      List localList = a(k);
      ay.i("Store full, deleting " + localList.size() + " hits to make room");
      a(localList);
    }
  }

  // ERROR //
  public List a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 268
    //   4: invokespecial 180	com/google/analytics/tracking/android/bh:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +13 -> 22
    //   12: new 106	java/util/ArrayList
    //   15: dup
    //   16: invokespecial 269	java/util/ArrayList:<init>	()V
    //   19: astore_3
    //   20: aload_3
    //   21: areturn
    //   22: aconst_null
    //   23: astore 4
    //   25: new 106	java/util/ArrayList
    //   28: dup
    //   29: invokespecial 269	java/util/ArrayList:<init>	()V
    //   32: pop
    //   33: aload_2
    //   34: ldc 29
    //   36: iconst_3
    //   37: anewarray 39	java/lang/String
    //   40: dup
    //   41: iconst_0
    //   42: ldc 31
    //   44: aastore
    //   45: dup
    //   46: iconst_1
    //   47: ldc 33
    //   49: aastore
    //   50: dup
    //   51: iconst_2
    //   52: ldc 35
    //   54: aastore
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: aconst_null
    //   59: ldc_w 271
    //   62: iconst_2
    //   63: anewarray 4	java/lang/Object
    //   66: dup
    //   67: iconst_0
    //   68: ldc 35
    //   70: aastore
    //   71: dup
    //   72: iconst_1
    //   73: ldc 31
    //   75: aastore
    //   76: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   79: iload_1
    //   80: invokestatic 276	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   83: invokevirtual 280	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore 10
    //   88: aload 10
    //   90: astore 11
    //   92: new 106	java/util/ArrayList
    //   95: dup
    //   96: invokespecial 269	java/util/ArrayList:<init>	()V
    //   99: astore 12
    //   101: aload 11
    //   103: invokeinterface 285 1 0
    //   108: ifeq +66 -> 174
    //   111: new 287	com/google/analytics/tracking/android/av
    //   114: dup
    //   115: aconst_null
    //   116: aload 11
    //   118: iconst_0
    //   119: invokeinterface 291 2 0
    //   124: aload 11
    //   126: iconst_1
    //   127: invokeinterface 291 2 0
    //   132: invokespecial 294	com/google/analytics/tracking/android/av:<init>	(Ljava/lang/String;JJ)V
    //   135: astore 27
    //   137: aload 27
    //   139: aload 11
    //   141: iconst_2
    //   142: invokeinterface 297 2 0
    //   147: invokevirtual 300	com/google/analytics/tracking/android/av:b	(Ljava/lang/String;)V
    //   150: aload 12
    //   152: aload 27
    //   154: invokeinterface 167 2 0
    //   159: pop
    //   160: aload 11
    //   162: invokeinterface 303 1 0
    //   167: istore 29
    //   169: iload 29
    //   171: ifne -60 -> 111
    //   174: aload 11
    //   176: ifnull +10 -> 186
    //   179: aload 11
    //   181: invokeinterface 306 1 0
    //   186: aload_2
    //   187: ldc 29
    //   189: iconst_2
    //   190: anewarray 39	java/lang/String
    //   193: dup
    //   194: iconst_0
    //   195: ldc 31
    //   197: aastore
    //   198: dup
    //   199: iconst_1
    //   200: ldc 37
    //   202: aastore
    //   203: aconst_null
    //   204: aconst_null
    //   205: aconst_null
    //   206: aconst_null
    //   207: ldc_w 308
    //   210: iconst_1
    //   211: anewarray 4	java/lang/Object
    //   214: dup
    //   215: iconst_0
    //   216: ldc 31
    //   218: aastore
    //   219: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   222: iload_1
    //   223: invokestatic 276	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   226: invokevirtual 280	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   229: astore 22
    //   231: aload 22
    //   233: invokeinterface 285 1 0
    //   238: ifeq +71 -> 309
    //   241: iconst_0
    //   242: istore 23
    //   244: aload 22
    //   246: instanceof 310
    //   249: ifeq +313 -> 562
    //   252: aload 22
    //   254: checkcast 310	android/database/sqlite/SQLiteCursor
    //   257: invokevirtual 314	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   260: invokevirtual 319	android/database/CursorWindow:getNumRows	()I
    //   263: ifle +137 -> 400
    //   266: aload 12
    //   268: iload 23
    //   270: invokeinterface 323 2 0
    //   275: checkcast 287	com/google/analytics/tracking/android/av
    //   278: aload 22
    //   280: iconst_1
    //   281: invokeinterface 297 2 0
    //   286: invokevirtual 325	com/google/analytics/tracking/android/av:a	(Ljava/lang/String;)V
    //   289: iload 23
    //   291: iconst_1
    //   292: iadd
    //   293: istore 24
    //   295: aload 22
    //   297: invokeinterface 303 1 0
    //   302: istore 25
    //   304: iload 25
    //   306: ifne +356 -> 662
    //   309: aload 22
    //   311: ifnull +10 -> 321
    //   314: aload 22
    //   316: invokeinterface 306 1 0
    //   321: aload 12
    //   323: astore_3
    //   324: goto -304 -> 20
    //   327: astore 7
    //   329: aconst_null
    //   330: astore 8
    //   332: new 139	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   339: ldc_w 327
    //   342: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: aload 7
    //   347: invokevirtual 330	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   350: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: invokestatic 103	com/google/analytics/tracking/android/ay:h	(Ljava/lang/String;)I
    //   359: pop
    //   360: new 106	java/util/ArrayList
    //   363: dup
    //   364: invokespecial 269	java/util/ArrayList:<init>	()V
    //   367: astore_3
    //   368: aload 8
    //   370: ifnull -350 -> 20
    //   373: aload 8
    //   375: invokeinterface 306 1 0
    //   380: goto -360 -> 20
    //   383: astore 6
    //   385: aload 4
    //   387: ifnull +10 -> 397
    //   390: aload 4
    //   392: invokeinterface 306 1 0
    //   397: aload 6
    //   399: athrow
    //   400: new 139	java/lang/StringBuilder
    //   403: dup
    //   404: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   407: ldc_w 332
    //   410: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: aload 12
    //   415: iload 23
    //   417: invokeinterface 323 2 0
    //   422: checkcast 287	com/google/analytics/tracking/android/av
    //   425: invokevirtual 335	com/google/analytics/tracking/android/av:b	()J
    //   428: invokevirtual 338	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   431: ldc_w 340
    //   434: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokestatic 103	com/google/analytics/tracking/android/ay:h	(Ljava/lang/String;)I
    //   443: pop
    //   444: goto -155 -> 289
    //   447: astore 13
    //   449: aload 22
    //   451: astore 11
    //   453: new 139	java/lang/StringBuilder
    //   456: dup
    //   457: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   460: ldc_w 342
    //   463: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: aload 13
    //   468: invokevirtual 330	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   471: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: invokestatic 103	com/google/analytics/tracking/android/ay:h	(Ljava/lang/String;)I
    //   480: pop
    //   481: new 106	java/util/ArrayList
    //   484: dup
    //   485: invokespecial 269	java/util/ArrayList:<init>	()V
    //   488: astore 16
    //   490: iconst_0
    //   491: istore 17
    //   493: aload 12
    //   495: invokeinterface 343 1 0
    //   500: astore 18
    //   502: aload 18
    //   504: invokeinterface 131 1 0
    //   509: ifeq +35 -> 544
    //   512: aload 18
    //   514: invokeinterface 135 1 0
    //   519: checkcast 287	com/google/analytics/tracking/android/av
    //   522: astore 19
    //   524: aload 19
    //   526: invokevirtual 344	com/google/analytics/tracking/android/av:a	()Ljava/lang/String;
    //   529: invokestatic 348	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   532: istore 20
    //   534: iload 20
    //   536: ifeq +76 -> 612
    //   539: iload 17
    //   541: ifeq +68 -> 609
    //   544: aload 11
    //   546: ifnull +10 -> 556
    //   549: aload 11
    //   551: invokeinterface 306 1 0
    //   556: aload 16
    //   558: astore_3
    //   559: goto -539 -> 20
    //   562: aload 12
    //   564: iload 23
    //   566: invokeinterface 323 2 0
    //   571: checkcast 287	com/google/analytics/tracking/android/av
    //   574: aload 22
    //   576: iconst_1
    //   577: invokeinterface 297 2 0
    //   582: invokevirtual 325	com/google/analytics/tracking/android/av:a	(Ljava/lang/String;)V
    //   585: goto -296 -> 289
    //   588: astore 14
    //   590: aload 22
    //   592: astore 11
    //   594: aload 11
    //   596: ifnull +10 -> 606
    //   599: aload 11
    //   601: invokeinterface 306 1 0
    //   606: aload 14
    //   608: athrow
    //   609: iconst_1
    //   610: istore 17
    //   612: aload 16
    //   614: aload 19
    //   616: invokeinterface 167 2 0
    //   621: pop
    //   622: goto -120 -> 502
    //   625: astore 14
    //   627: goto -33 -> 594
    //   630: astore 13
    //   632: goto -179 -> 453
    //   635: astore 6
    //   637: aload 11
    //   639: astore 4
    //   641: goto -256 -> 385
    //   644: astore 6
    //   646: aload 8
    //   648: astore 4
    //   650: goto -265 -> 385
    //   653: astore 7
    //   655: aload 11
    //   657: astore 8
    //   659: goto -327 -> 332
    //   662: iload 24
    //   664: istore 23
    //   666: goto -422 -> 244
    //
    // Exception table:
    //   from	to	target	type
    //   33	88	327	android/database/sqlite/SQLiteException
    //   33	88	383	finally
    //   231	304	447	android/database/sqlite/SQLiteException
    //   400	444	447	android/database/sqlite/SQLiteException
    //   562	585	447	android/database/sqlite/SQLiteException
    //   231	304	588	finally
    //   400	444	588	finally
    //   562	585	588	finally
    //   186	231	625	finally
    //   453	534	625	finally
    //   612	622	625	finally
    //   186	231	630	android/database/sqlite/SQLiteException
    //   92	169	635	finally
    //   332	368	644	finally
    //   92	169	653	android/database/sqlite/SQLiteException
  }

  public void a()
  {
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for clearHits");
    if (localSQLiteDatabase != null)
    {
      localSQLiteDatabase.delete("hits2", null, null);
      this.g.a(true);
    }
  }

  public void a(Collection paramCollection)
  {
    if (paramCollection == null)
      throw new NullPointerException("hits cannot be null");
    if (paramCollection.isEmpty());
    while (true)
    {
      return;
      SQLiteDatabase localSQLiteDatabase = a("Error opening database for deleteHit");
      if (localSQLiteDatabase != null)
      {
        String[] arrayOfString = new String[paramCollection.size()];
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = TextUtils.join(",", Collections.nCopies(arrayOfString.length, "?"));
        String str = String.format("HIT_ID in (%s)", arrayOfObject);
        Iterator localIterator = paramCollection.iterator();
        int n;
        for (int k = 0; localIterator.hasNext(); k = n)
        {
          av localav = (av)localIterator.next();
          n = k + 1;
          arrayOfString[k] = Long.toString(localav.b());
        }
        try
        {
          localSQLiteDatabase.delete("hits2", str, arrayOfString);
          k localk = this.g;
          int m = d();
          boolean bool = false;
          if (m == 0)
            bool = true;
          localk.a(bool);
        }
        catch (SQLiteException localSQLiteException)
        {
          ay.h("Error deleting hit " + paramCollection);
        }
      }
    }
  }

  public void a(Map paramMap, long paramLong, String paramString, Collection paramCollection)
  {
    c();
    if (!e());
    while (true)
    {
      return;
      a(paramMap, paramCollection);
      h();
      a(paramMap, paramLong, paramString);
    }
  }

  public void b()
  {
    ay.g("dispatch running...");
    if (!this.f.a());
    while (true)
    {
      return;
      List localList = a(40);
      if (localList.isEmpty())
      {
        ay.g("...nothing to dispatch");
        this.g.a(true);
      }
      else
      {
        int k = this.f.a(localList);
        ay.g("sent " + k + " of " + localList.size() + " hits");
        a(localList.subList(0, Math.min(k, localList.size())));
        if ((k == localList.size()) && (d() > 0))
          w.a().c();
      }
    }
  }

  int c()
  {
    boolean bool1 = true;
    long l1 = System.currentTimeMillis();
    boolean bool2 = l1 < 86400000L + this.j;
    int k = 0;
    if (!bool2);
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return k;
      this.j = l1;
      localSQLiteDatabase = a("Error opening database for deleteStaleHits");
      k = 0;
    }
    while (localSQLiteDatabase == null);
    long l2 = System.currentTimeMillis() - 2592000000L;
    String[] arrayOfString = new String[bool1];
    arrayOfString[0] = Long.toString(l2);
    int m = localSQLiteDatabase.delete("hits2", "HIT_TIME < ?", arrayOfString);
    k localk = this.g;
    if (d() == 0);
    while (true)
    {
      localk.a(bool1);
      k = m;
      break;
      bool1 = false;
    }
  }

  int d()
  {
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for requestNumHitsPending");
    int k = 0;
    if (localSQLiteDatabase == null);
    while (true)
    {
      return k;
      try
      {
        localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT(*) from hits2", null);
        boolean bool = localCursor.moveToFirst();
        k = 0;
        if (bool)
        {
          long l = localCursor.getLong(0);
          k = (int)l;
        }
        if (localCursor == null)
          continue;
        localCursor.close();
      }
      catch (SQLiteException localSQLiteException)
      {
        ay.h("Error getting numStoredHits");
        k = 0;
        if (localCursor == null)
          continue;
        localCursor.close();
        k = 0;
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    }
  }

  boolean e()
  {
    boolean bool1 = true;
    while (true)
    {
      try
      {
        boolean bool2 = this.c;
        if (!bool2)
          return bool1;
        long l1 = System.currentTimeMillis();
        if (this.a < 120000L)
        {
          long l2 = l1 - this.b;
          if (l2 > 0L)
            this.a = Math.min(120000L, l2 + this.a);
        }
        this.b = l1;
        if (this.a >= 2000L)
        {
          this.a -= 2000L;
          continue;
        }
      }
      finally
      {
      }
      ay.i("Excessive tracking detected.  Tracking call ignored.");
      bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bh
 * JD-Core Version:    0.6.2
 */