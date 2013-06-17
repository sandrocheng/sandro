package com.google.a.a.a;

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

class ax
  implements h
{
  private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private final ba b;
  private volatile m c;
  private final i d;
  private final Context e;
  private final String f;
  private long g;
  private l h;

  ax(i parami, Context paramContext)
  {
    this(parami, paramContext, "google_analytics_v2.db");
  }

  ax(i parami, Context paramContext, String paramString)
  {
    this.e = paramContext.getApplicationContext();
    this.f = paramString;
    this.d = parami;
    this.h = new ay(this);
    this.b = new ba(this, this.e, this.f);
    this.c = new bd(this, e(), this.e);
    this.g = 0L;
  }

  private SQLiteDatabase a(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase2 = this.b.getWritableDatabase();
      localSQLiteDatabase1 = localSQLiteDatabase2;
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        aq.h(paramString);
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
      localArrayList.add((String)localEntry.getKey() + "=" + ao.a((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }

  private void a(Map paramMap, long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for putHit");
    if (localSQLiteDatabase == null)
      return;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_string", a(paramMap));
    localContentValues.put("hit_time", Long.valueOf(paramLong));
    if (paramMap.containsKey("AppUID"));
    while (true)
    {
      try
      {
        long l2 = Long.parseLong((String)paramMap.get("AppUID"));
        l1 = l2;
        localContentValues.put("hit_app_id", Long.valueOf(l1));
        if (paramString == null)
          paramString = "http://www.google-analytics.com/collect";
        if (paramString.length() == 0)
          aq.h("empty path: not sending hit");
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
        {
          l1 = 0L;
          continue;
          localContentValues.put("hit_url", paramString);
          try
          {
            localSQLiteDatabase.insert("hits2", null, localContentValues);
            this.d.a(false);
          }
          catch (SQLiteException localSQLiteException)
          {
            aq.h("Error storing hit");
          }
        }
      }
      break;
      long l1 = 0L;
    }
  }

  private void a(Map paramMap, String paramString1, String paramString2)
  {
    if (paramString2 == null);
    for (String str = ""; ; str = paramString2 + "")
    {
      if (paramString1 != null)
        paramMap.put(paramString1, str);
      return;
    }
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

  private ap e()
  {
    return new az(this);
  }

  private void f()
  {
    int i = 1 + (-2000 + c());
    if (i > 0)
    {
      List localList = a(i);
      aq.i("Store full, deleting " + localList.size() + " hits to make room");
      a(localList);
    }
  }

  // ERROR //
  public List a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 286
    //   4: invokespecial 184	com/google/a/a/a/ax:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +13 -> 22
    //   12: new 108	java/util/ArrayList
    //   15: dup
    //   16: invokespecial 287	java/util/ArrayList:<init>	()V
    //   19: astore_3
    //   20: aload_3
    //   21: areturn
    //   22: aconst_null
    //   23: astore 4
    //   25: new 108	java/util/ArrayList
    //   28: dup
    //   29: invokespecial 287	java/util/ArrayList:<init>	()V
    //   32: pop
    //   33: aload_2
    //   34: ldc 27
    //   36: iconst_3
    //   37: anewarray 39	java/lang/String
    //   40: dup
    //   41: iconst_0
    //   42: ldc 29
    //   44: aastore
    //   45: dup
    //   46: iconst_1
    //   47: ldc 31
    //   49: aastore
    //   50: dup
    //   51: iconst_2
    //   52: ldc 33
    //   54: aastore
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: aconst_null
    //   59: ldc_w 289
    //   62: iconst_2
    //   63: anewarray 4	java/lang/Object
    //   66: dup
    //   67: iconst_0
    //   68: ldc 33
    //   70: aastore
    //   71: dup
    //   72: iconst_1
    //   73: ldc 29
    //   75: aastore
    //   76: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   79: iload_1
    //   80: invokestatic 294	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   83: invokevirtual 298	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore 10
    //   88: aload 10
    //   90: astore 11
    //   92: new 108	java/util/ArrayList
    //   95: dup
    //   96: invokespecial 287	java/util/ArrayList:<init>	()V
    //   99: astore 12
    //   101: aload 11
    //   103: invokeinterface 303 1 0
    //   108: ifeq +66 -> 174
    //   111: new 305	com/google/a/a/a/an
    //   114: dup
    //   115: aconst_null
    //   116: aload 11
    //   118: iconst_0
    //   119: invokeinterface 309 2 0
    //   124: aload 11
    //   126: iconst_1
    //   127: invokeinterface 309 2 0
    //   132: invokespecial 312	com/google/a/a/a/an:<init>	(Ljava/lang/String;JJ)V
    //   135: astore 27
    //   137: aload 27
    //   139: aload 11
    //   141: iconst_2
    //   142: invokeinterface 315 2 0
    //   147: invokevirtual 318	com/google/a/a/a/an:b	(Ljava/lang/String;)V
    //   150: aload 12
    //   152: aload 27
    //   154: invokeinterface 169 2 0
    //   159: pop
    //   160: aload 11
    //   162: invokeinterface 321 1 0
    //   167: istore 29
    //   169: iload 29
    //   171: ifne -60 -> 111
    //   174: aload 11
    //   176: ifnull +10 -> 186
    //   179: aload 11
    //   181: invokeinterface 324 1 0
    //   186: aload_2
    //   187: ldc 27
    //   189: iconst_2
    //   190: anewarray 39	java/lang/String
    //   193: dup
    //   194: iconst_0
    //   195: ldc 29
    //   197: aastore
    //   198: dup
    //   199: iconst_1
    //   200: ldc 35
    //   202: aastore
    //   203: aconst_null
    //   204: aconst_null
    //   205: aconst_null
    //   206: aconst_null
    //   207: ldc_w 326
    //   210: iconst_1
    //   211: anewarray 4	java/lang/Object
    //   214: dup
    //   215: iconst_0
    //   216: ldc 29
    //   218: aastore
    //   219: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   222: iload_1
    //   223: invokestatic 294	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   226: invokevirtual 298	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   229: astore 22
    //   231: aload 22
    //   233: invokeinterface 303 1 0
    //   238: ifeq +71 -> 309
    //   241: iconst_0
    //   242: istore 23
    //   244: aload 22
    //   246: instanceof 328
    //   249: ifeq +313 -> 562
    //   252: aload 22
    //   254: checkcast 328	android/database/sqlite/SQLiteCursor
    //   257: invokevirtual 332	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   260: invokevirtual 337	android/database/CursorWindow:getNumRows	()I
    //   263: ifle +137 -> 400
    //   266: aload 12
    //   268: iload 23
    //   270: invokeinterface 340 2 0
    //   275: checkcast 305	com/google/a/a/a/an
    //   278: aload 22
    //   280: iconst_1
    //   281: invokeinterface 315 2 0
    //   286: invokevirtual 342	com/google/a/a/a/an:a	(Ljava/lang/String;)V
    //   289: iload 23
    //   291: iconst_1
    //   292: iadd
    //   293: istore 24
    //   295: aload 22
    //   297: invokeinterface 321 1 0
    //   302: istore 25
    //   304: iload 25
    //   306: ifne +356 -> 662
    //   309: aload 22
    //   311: ifnull +10 -> 321
    //   314: aload 22
    //   316: invokeinterface 324 1 0
    //   321: aload 12
    //   323: astore_3
    //   324: goto -304 -> 20
    //   327: astore 7
    //   329: aconst_null
    //   330: astore 8
    //   332: new 141	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   339: ldc_w 344
    //   342: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: aload 7
    //   347: invokevirtual 347	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   350: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: invokestatic 104	com/google/a/a/a/aq:h	(Ljava/lang/String;)I
    //   359: pop
    //   360: new 108	java/util/ArrayList
    //   363: dup
    //   364: invokespecial 287	java/util/ArrayList:<init>	()V
    //   367: astore_3
    //   368: aload 8
    //   370: ifnull -350 -> 20
    //   373: aload 8
    //   375: invokeinterface 324 1 0
    //   380: goto -360 -> 20
    //   383: astore 6
    //   385: aload 4
    //   387: ifnull +10 -> 397
    //   390: aload 4
    //   392: invokeinterface 324 1 0
    //   397: aload 6
    //   399: athrow
    //   400: new 141	java/lang/StringBuilder
    //   403: dup
    //   404: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   407: ldc_w 349
    //   410: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: aload 12
    //   415: iload 23
    //   417: invokeinterface 340 2 0
    //   422: checkcast 305	com/google/a/a/a/an
    //   425: invokevirtual 352	com/google/a/a/a/an:b	()J
    //   428: invokevirtual 355	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   431: ldc_w 357
    //   434: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokestatic 104	com/google/a/a/a/aq:h	(Ljava/lang/String;)I
    //   443: pop
    //   444: goto -155 -> 289
    //   447: astore 13
    //   449: aload 22
    //   451: astore 11
    //   453: new 141	java/lang/StringBuilder
    //   456: dup
    //   457: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   460: ldc_w 359
    //   463: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: aload 13
    //   468: invokevirtual 347	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   471: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: invokestatic 104	com/google/a/a/a/aq:h	(Ljava/lang/String;)I
    //   480: pop
    //   481: new 108	java/util/ArrayList
    //   484: dup
    //   485: invokespecial 287	java/util/ArrayList:<init>	()V
    //   488: astore 16
    //   490: iconst_0
    //   491: istore 17
    //   493: aload 12
    //   495: invokeinterface 360 1 0
    //   500: astore 18
    //   502: aload 18
    //   504: invokeinterface 133 1 0
    //   509: ifeq +35 -> 544
    //   512: aload 18
    //   514: invokeinterface 137 1 0
    //   519: checkcast 305	com/google/a/a/a/an
    //   522: astore 19
    //   524: aload 19
    //   526: invokevirtual 361	com/google/a/a/a/an:a	()Ljava/lang/String;
    //   529: invokestatic 365	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   532: istore 20
    //   534: iload 20
    //   536: ifeq +76 -> 612
    //   539: iload 17
    //   541: ifeq +68 -> 609
    //   544: aload 11
    //   546: ifnull +10 -> 556
    //   549: aload 11
    //   551: invokeinterface 324 1 0
    //   556: aload 16
    //   558: astore_3
    //   559: goto -539 -> 20
    //   562: aload 12
    //   564: iload 23
    //   566: invokeinterface 340 2 0
    //   571: checkcast 305	com/google/a/a/a/an
    //   574: aload 22
    //   576: iconst_1
    //   577: invokeinterface 315 2 0
    //   582: invokevirtual 342	com/google/a/a/a/an:a	(Ljava/lang/String;)V
    //   585: goto -296 -> 289
    //   588: astore 14
    //   590: aload 22
    //   592: astore 11
    //   594: aload 11
    //   596: ifnull +10 -> 606
    //   599: aload 11
    //   601: invokeinterface 324 1 0
    //   606: aload 14
    //   608: athrow
    //   609: iconst_1
    //   610: istore 17
    //   612: aload 16
    //   614: aload 19
    //   616: invokeinterface 169 2 0
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
    aq.g("dispatch running...");
    if (!this.c.a());
    while (true)
    {
      return;
      List localList = a(40);
      if (localList.isEmpty())
      {
        aq.g("...nothing to dispatch");
        this.d.a(true);
      }
      else
      {
        int i = this.c.a(localList);
        aq.g("sent " + i + " of " + localList.size() + " hits");
        a(localList.subList(0, Math.min(i, localList.size())));
        if ((i == localList.size()) && (c() > 0))
          q.a().c();
      }
    }
  }

  public void a(long paramLong)
  {
    boolean bool = true;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for clearHits");
    i locali;
    if (localSQLiteDatabase != null)
    {
      if (paramLong != 0L)
        break label54;
      localSQLiteDatabase.delete("hits2", null, null);
      locali = this.d;
      if (c() != 0)
        break label87;
    }
    while (true)
    {
      locali.a(bool);
      return;
      label54: String[] arrayOfString = new String[bool];
      arrayOfString[0] = Long.valueOf(paramLong).toString();
      localSQLiteDatabase.delete("hits2", "hit_app_id = ?", arrayOfString);
      break;
      label87: bool = false;
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
        int k;
        for (int i = 0; localIterator.hasNext(); i = k)
        {
          an localan = (an)localIterator.next();
          k = i + 1;
          arrayOfString[i] = Long.toString(localan.b());
        }
        try
        {
          localSQLiteDatabase.delete("hits2", str, arrayOfString);
          i locali = this.d;
          int j = c();
          boolean bool = false;
          if (j == 0)
            bool = true;
          locali.a(bool);
        }
        catch (SQLiteException localSQLiteException)
        {
          aq.h("Error deleting hit " + paramCollection);
        }
      }
    }
  }

  public void a(Map paramMap, long paramLong, String paramString, Collection paramCollection)
  {
    b();
    a(paramMap, paramCollection);
    f();
    a(paramMap, paramLong, paramString);
  }

  int b()
  {
    boolean bool1 = true;
    long l1 = this.h.a();
    boolean bool2 = l1 < 86400000L + this.g;
    int i = 0;
    if (!bool2);
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return i;
      this.g = l1;
      localSQLiteDatabase = a("Error opening database for deleteStaleHits");
      i = 0;
    }
    while (localSQLiteDatabase == null);
    long l2 = this.h.a() - 2592000000L;
    String[] arrayOfString = new String[bool1];
    arrayOfString[0] = Long.toString(l2);
    int j = localSQLiteDatabase.delete("hits2", "HIT_TIME < ?", arrayOfString);
    i locali = this.d;
    if (c() == 0);
    while (true)
    {
      locali.a(bool1);
      i = j;
      break;
      bool1 = false;
    }
  }

  int c()
  {
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for requestNumHitsPending");
    int i = 0;
    if (localSQLiteDatabase == null);
    while (true)
    {
      return i;
      try
      {
        localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT(*) from hits2", null);
        boolean bool = localCursor.moveToFirst();
        i = 0;
        if (bool)
        {
          long l = localCursor.getLong(0);
          i = (int)l;
        }
        if (localCursor == null)
          continue;
        localCursor.close();
      }
      catch (SQLiteException localSQLiteException)
      {
        aq.h("Error getting numStoredHits");
        i = 0;
        if (localCursor == null)
          continue;
        localCursor.close();
        i = 0;
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.ax
 * JD-Core Version:    0.6.2
 */