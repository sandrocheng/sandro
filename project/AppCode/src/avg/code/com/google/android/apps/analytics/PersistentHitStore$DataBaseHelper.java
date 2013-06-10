package com.google.android.apps.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

class PersistentHitStore$DataBaseHelper extends SQLiteOpenHelper
{
  private final int databaseVersion;
  private final PersistentHitStore store;

  public PersistentHitStore$DataBaseHelper(Context paramContext, PersistentHitStore paramPersistentHitStore)
  {
    this(paramContext, "google_analytics.db", 5, paramPersistentHitStore);
  }

  PersistentHitStore$DataBaseHelper(Context paramContext, String paramString, int paramInt, PersistentHitStore paramPersistentHitStore)
  {
    super(paramContext, paramString, null, paramInt);
    this.databaseVersion = paramInt;
    this.store = paramPersistentHitStore;
  }

  public PersistentHitStore$DataBaseHelper(Context paramContext, String paramString, PersistentHitStore paramPersistentHitStore)
  {
    this(paramContext, paramString, 5, paramPersistentHitStore);
  }

  private void createECommerceTables(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS transaction_events;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$400());
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS item_events;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$500());
  }

  private void createHitTable(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS hits;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$600());
  }

  private void createReferrerTable(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS referrer;");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);");
  }

  // ERROR //
  private void fixReferrerTable(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 60
    //   3: aconst_null
    //   4: aconst_null
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: aconst_null
    //   9: invokevirtual 64	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   12: astore 9
    //   14: aload 9
    //   16: astore_3
    //   17: aload_3
    //   18: invokeinterface 70 1 0
    //   23: astore 10
    //   25: iconst_0
    //   26: istore 11
    //   28: iconst_0
    //   29: istore 12
    //   31: iconst_0
    //   32: istore 13
    //   34: iload 11
    //   36: aload 10
    //   38: arraylength
    //   39: if_icmpge +379 -> 418
    //   42: aload 10
    //   44: iload 11
    //   46: aaload
    //   47: ldc 72
    //   49: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   52: ifeq +9 -> 61
    //   55: iconst_1
    //   56: istore 13
    //   58: goto +354 -> 412
    //   61: aload 10
    //   63: iload 11
    //   65: aaload
    //   66: ldc 80
    //   68: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   71: ifeq +341 -> 412
    //   74: iconst_1
    //   75: istore 12
    //   77: goto +335 -> 412
    //   80: aload_3
    //   81: invokeinterface 84 1 0
    //   86: ifeq +320 -> 406
    //   89: aload_3
    //   90: ldc 80
    //   92: invokeinterface 88 2 0
    //   97: istore 19
    //   99: aload_3
    //   100: ldc 72
    //   102: invokeinterface 88 2 0
    //   107: istore 20
    //   109: aload_3
    //   110: aload_3
    //   111: ldc 60
    //   113: invokeinterface 88 2 0
    //   118: invokeinterface 92 2 0
    //   123: astore 21
    //   125: aload_3
    //   126: aload_3
    //   127: ldc 94
    //   129: invokeinterface 88 2 0
    //   134: invokeinterface 98 2 0
    //   139: lstore 22
    //   141: iload 19
    //   143: iconst_m1
    //   144: if_icmpne +143 -> 287
    //   147: iconst_1
    //   148: istore 24
    //   150: goto +281 -> 431
    //   153: new 100	com/google/android/apps/analytics/Referrer
    //   156: dup
    //   157: aload 21
    //   159: lload 22
    //   161: iload 24
    //   163: iload 26
    //   165: invokespecial 103	com/google/android/apps/analytics/Referrer:<init>	(Ljava/lang/String;JII)V
    //   168: astore 14
    //   170: aload_1
    //   171: invokevirtual 107	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   174: aload_0
    //   175: aload_1
    //   176: invokespecial 109	com/google/android/apps/analytics/PersistentHitStore$DataBaseHelper:createReferrerTable	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   179: aload 14
    //   181: ifnull +79 -> 260
    //   184: new 111	android/content/ContentValues
    //   187: dup
    //   188: invokespecial 113	android/content/ContentValues:<init>	()V
    //   191: astore 15
    //   193: aload 15
    //   195: ldc 60
    //   197: aload 14
    //   199: invokevirtual 116	com/google/android/apps/analytics/Referrer:getReferrerString	()Ljava/lang/String;
    //   202: invokevirtual 120	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   205: aload 15
    //   207: ldc 94
    //   209: aload 14
    //   211: invokevirtual 124	com/google/android/apps/analytics/Referrer:getTimeStamp	()J
    //   214: invokestatic 130	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   217: invokevirtual 133	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   220: aload 15
    //   222: ldc 80
    //   224: aload 14
    //   226: invokevirtual 137	com/google/android/apps/analytics/Referrer:getVisit	()I
    //   229: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   232: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   235: aload 15
    //   237: ldc 72
    //   239: aload 14
    //   241: invokevirtual 148	com/google/android/apps/analytics/Referrer:getIndex	()I
    //   244: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   247: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   250: aload_1
    //   251: ldc 60
    //   253: aconst_null
    //   254: aload 15
    //   256: invokevirtual 152	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   259: pop2
    //   260: aload_1
    //   261: invokevirtual 155	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   264: aload_3
    //   265: ifnull +9 -> 274
    //   268: aload_3
    //   269: invokeinterface 158 1 0
    //   274: aload_1
    //   275: invokevirtual 161	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   278: ifeq +8 -> 286
    //   281: aload_1
    //   282: invokestatic 165	com/google/android/apps/analytics/PersistentHitStore:access$900	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   285: pop
    //   286: return
    //   287: aload_3
    //   288: iload 19
    //   290: invokeinterface 169 2 0
    //   295: istore 24
    //   297: goto +134 -> 431
    //   300: aload_3
    //   301: iload 20
    //   303: invokeinterface 169 2 0
    //   308: istore 25
    //   310: iload 25
    //   312: istore 26
    //   314: goto -161 -> 153
    //   317: astore 5
    //   319: aconst_null
    //   320: astore 6
    //   322: ldc 171
    //   324: aload 5
    //   326: invokevirtual 174	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   329: invokestatic 180	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   332: pop
    //   333: aload 6
    //   335: ifnull +10 -> 345
    //   338: aload 6
    //   340: invokeinterface 158 1 0
    //   345: aload_1
    //   346: invokevirtual 161	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   349: ifeq -63 -> 286
    //   352: aload_1
    //   353: invokestatic 165	com/google/android/apps/analytics/PersistentHitStore:access$900	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   356: pop
    //   357: goto -71 -> 286
    //   360: astore_2
    //   361: aconst_null
    //   362: astore_3
    //   363: aload_3
    //   364: ifnull +9 -> 373
    //   367: aload_3
    //   368: invokeinterface 158 1 0
    //   373: aload_1
    //   374: invokevirtual 161	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   377: ifeq +8 -> 385
    //   380: aload_1
    //   381: invokestatic 165	com/google/android/apps/analytics/PersistentHitStore:access$900	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   384: pop
    //   385: aload_2
    //   386: athrow
    //   387: astore_2
    //   388: goto -25 -> 363
    //   391: astore_2
    //   392: aload 6
    //   394: astore_3
    //   395: goto -32 -> 363
    //   398: astore 5
    //   400: aload_3
    //   401: astore 6
    //   403: goto -81 -> 322
    //   406: aconst_null
    //   407: astore 14
    //   409: goto -239 -> 170
    //   412: iinc 11 1
    //   415: goto -381 -> 34
    //   418: iload 13
    //   420: ifeq -340 -> 80
    //   423: iload 12
    //   425: ifne -161 -> 264
    //   428: goto -348 -> 80
    //   431: iload 20
    //   433: iconst_m1
    //   434: if_icmpne -134 -> 300
    //   437: iconst_1
    //   438: istore 26
    //   440: goto -287 -> 153
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	317	android/database/sqlite/SQLiteException
    //   0	14	360	finally
    //   17	264	387	finally
    //   287	310	387	finally
    //   322	333	391	finally
    //   17	264	398	android/database/sqlite/SQLiteException
    //   287	310	398	android/database/sqlite/SQLiteException
  }

  private void migrateEventsToHits(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    this.store.loadExistingSession(paramSQLiteDatabase);
    PersistentHitStore.access$702(this.store, this.store.getVisitorVarBuffer(paramSQLiteDatabase));
    Event[] arrayOfEvent = this.store.peekEvents(1000, paramSQLiteDatabase, paramInt);
    for (int i = 0; i < arrayOfEvent.length; i++)
      PersistentHitStore.access$800(this.store, arrayOfEvent[i], paramSQLiteDatabase, false);
    paramSQLiteDatabase.execSQL("DELETE from events;");
    paramSQLiteDatabase.execSQL("DELETE from item_events;");
    paramSQLiteDatabase.execSQL("DELETE from transaction_events;");
    paramSQLiteDatabase.execSQL("DELETE from custom_variables;");
  }

  // ERROR //
  private void migratePreV4Referrer(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 212
    //   5: iconst_1
    //   6: anewarray 74	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 60
    //   13: aastore
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: invokevirtual 64	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 8
    //   24: aload 8
    //   26: astore 5
    //   28: aload 5
    //   30: invokeinterface 84 1 0
    //   35: ifeq +255 -> 290
    //   38: aload 5
    //   40: iconst_0
    //   41: invokeinterface 92 2 0
    //   46: astore 9
    //   48: aload_1
    //   49: ldc 214
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: invokevirtual 64	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   60: astore 10
    //   62: aload 10
    //   64: astore 4
    //   66: aload 4
    //   68: invokeinterface 84 1 0
    //   73: ifeq +211 -> 284
    //   76: aload 4
    //   78: iconst_0
    //   79: invokeinterface 98 2 0
    //   84: lstore 11
    //   86: new 111	android/content/ContentValues
    //   89: dup
    //   90: invokespecial 113	android/content/ContentValues:<init>	()V
    //   93: astore 13
    //   95: aload 13
    //   97: ldc 60
    //   99: aload 9
    //   101: invokevirtual 120	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: aload 13
    //   106: ldc 94
    //   108: lload 11
    //   110: invokestatic 130	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   113: invokevirtual 133	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   116: aload 13
    //   118: ldc 80
    //   120: iconst_1
    //   121: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   124: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   127: aload 13
    //   129: ldc 72
    //   131: iconst_1
    //   132: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   135: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   138: aload_1
    //   139: ldc 60
    //   141: aconst_null
    //   142: aload 13
    //   144: invokevirtual 152	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   147: pop2
    //   148: aload 5
    //   150: ifnull +10 -> 160
    //   153: aload 5
    //   155: invokeinterface 158 1 0
    //   160: aload 4
    //   162: ifnull +10 -> 172
    //   165: aload 4
    //   167: invokeinterface 158 1 0
    //   172: return
    //   173: astore 6
    //   175: aconst_null
    //   176: astore 4
    //   178: ldc 171
    //   180: aload 6
    //   182: invokevirtual 174	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   185: invokestatic 180	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   188: pop
    //   189: aload_2
    //   190: ifnull +9 -> 199
    //   193: aload_2
    //   194: invokeinterface 158 1 0
    //   199: aload 4
    //   201: ifnull -29 -> 172
    //   204: aload 4
    //   206: invokeinterface 158 1 0
    //   211: goto -39 -> 172
    //   214: astore_3
    //   215: aconst_null
    //   216: astore 4
    //   218: aconst_null
    //   219: astore 5
    //   221: aload 5
    //   223: ifnull +10 -> 233
    //   226: aload 5
    //   228: invokeinterface 158 1 0
    //   233: aload 4
    //   235: ifnull +10 -> 245
    //   238: aload 4
    //   240: invokeinterface 158 1 0
    //   245: aload_3
    //   246: athrow
    //   247: astore_3
    //   248: aconst_null
    //   249: astore 4
    //   251: goto -30 -> 221
    //   254: astore_3
    //   255: goto -34 -> 221
    //   258: astore_3
    //   259: aload_2
    //   260: astore 5
    //   262: goto -41 -> 221
    //   265: astore 6
    //   267: aload 5
    //   269: astore_2
    //   270: aconst_null
    //   271: astore 4
    //   273: goto -95 -> 178
    //   276: astore 6
    //   278: aload 5
    //   280: astore_2
    //   281: goto -103 -> 178
    //   284: lconst_0
    //   285: lstore 11
    //   287: goto -201 -> 86
    //   290: aconst_null
    //   291: astore 4
    //   293: goto -145 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   2	24	173	android/database/sqlite/SQLiteException
    //   2	24	214	finally
    //   28	62	247	finally
    //   66	148	254	finally
    //   178	189	258	finally
    //   28	62	265	android/database/sqlite/SQLiteException
    //   66	148	276	android/database/sqlite/SQLiteException
  }

  void createCustomVariableTables(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_variables;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$200());
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_var_cache;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$300());
    for (int i = 1; i <= 5; i++)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("event_id", Integer.valueOf(0));
      localContentValues.put("cv_index", Integer.valueOf(i));
      localContentValues.put("cv_name", "");
      localContentValues.put("cv_scope", Integer.valueOf(3));
      localContentValues.put("cv_value", "");
      paramSQLiteDatabase.insert("custom_var_cache", "event_id", localContentValues);
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$000());
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS install_referrer;");
    paramSQLiteDatabase.execSQL("CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS session;");
    paramSQLiteDatabase.execSQL(PersistentHitStore.access$100());
    if (this.databaseVersion > 1)
      createCustomVariableTables(paramSQLiteDatabase);
    if (this.databaseVersion > 2)
      createECommerceTables(paramSQLiteDatabase);
    if (this.databaseVersion > 3)
    {
      createHitTable(paramSQLiteDatabase);
      createReferrerTable(paramSQLiteDatabase);
    }
  }

  // ERROR //
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: ldc 171
    //   2: new 264	java/lang/StringBuilder
    //   5: dup
    //   6: ldc_w 266
    //   9: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: iload_2
    //   13: invokevirtual 272	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   16: ldc_w 274
    //   19: invokevirtual 277	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: iload_3
    //   23: invokevirtual 272	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   26: ldc_w 279
    //   29: invokevirtual 277	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 280	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokestatic 283	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   38: pop
    //   39: aload_1
    //   40: ldc 55
    //   42: invokevirtual 33	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   45: aload_1
    //   46: invokestatic 50	com/google/android/apps/analytics/PersistentHitStore:access$600	()Ljava/lang/String;
    //   49: invokevirtual 33	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   52: aload_1
    //   53: invokestatic 225	com/google/android/apps/analytics/PersistentHitStore:access$300	()Ljava/lang/String;
    //   56: invokevirtual 33	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   59: aload_1
    //   60: invokestatic 254	com/google/android/apps/analytics/PersistentHitStore:access$100	()Ljava/lang/String;
    //   63: invokevirtual 33	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   66: new 285	java/util/HashSet
    //   69: dup
    //   70: invokespecial 286	java/util/HashSet:<init>	()V
    //   73: astore 5
    //   75: aload_1
    //   76: ldc 239
    //   78: aconst_null
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 289	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore 6
    //   90: aload 6
    //   92: invokeinterface 292 1 0
    //   97: ifeq +171 -> 268
    //   100: aload 5
    //   102: aload 6
    //   104: aload 6
    //   106: ldc 229
    //   108: invokeinterface 88 2 0
    //   113: invokeinterface 169 2 0
    //   118: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   121: invokeinterface 297 2 0
    //   126: pop
    //   127: goto -37 -> 90
    //   130: astore 8
    //   132: ldc 171
    //   134: new 264	java/lang/StringBuilder
    //   137: dup
    //   138: ldc_w 299
    //   141: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   144: aload 8
    //   146: invokevirtual 174	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   149: invokevirtual 277	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 280	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokestatic 180	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   158: pop
    //   159: aload 6
    //   161: invokeinterface 158 1 0
    //   166: iconst_1
    //   167: istore 10
    //   169: iload 10
    //   171: iconst_5
    //   172: if_icmpgt +150 -> 322
    //   175: aload 5
    //   177: iload 10
    //   179: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   182: invokeinterface 302 2 0
    //   187: ifne +75 -> 262
    //   190: new 111	android/content/ContentValues
    //   193: dup
    //   194: invokespecial 113	android/content/ContentValues:<init>	()V
    //   197: astore 13
    //   199: aload 13
    //   201: ldc 227
    //   203: iconst_0
    //   204: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   207: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   210: aload 13
    //   212: ldc 229
    //   214: iload 10
    //   216: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   219: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   222: aload 13
    //   224: ldc 231
    //   226: ldc 233
    //   228: invokevirtual 120	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: aload 13
    //   233: ldc 235
    //   235: iconst_3
    //   236: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   239: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   242: aload 13
    //   244: ldc 237
    //   246: ldc 233
    //   248: invokevirtual 120	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: aload_1
    //   252: ldc 239
    //   254: ldc 227
    //   256: aload 13
    //   258: invokevirtual 152	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   261: pop2
    //   262: iinc 10 1
    //   265: goto -96 -> 169
    //   268: aload 6
    //   270: invokeinterface 158 1 0
    //   275: goto -109 -> 166
    //   278: astore 7
    //   280: aload 6
    //   282: invokeinterface 158 1 0
    //   287: aload 7
    //   289: athrow
    //   290: astore 11
    //   292: ldc 171
    //   294: new 264	java/lang/StringBuilder
    //   297: dup
    //   298: ldc_w 304
    //   301: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   304: aload 11
    //   306: invokevirtual 174	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   309: invokevirtual 277	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: invokevirtual 280	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: invokestatic 180	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   318: pop
    //   319: goto -57 -> 262
    //   322: return
    //
    // Exception table:
    //   from	to	target	type
    //   90	127	130	android/database/sqlite/SQLiteException
    //   90	127	278	finally
    //   132	159	278	finally
    //   175	262	290	android/database/sqlite/SQLiteException
  }

  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramSQLiteDatabase.isReadOnly())
      Log.w("GoogleAnalyticsTracker", "Warning: Need to update database, but it's read only.");
    while (true)
    {
      return;
      fixReferrerTable(paramSQLiteDatabase);
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2)
      onDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
    while (true)
    {
      return;
      if ((paramInt1 < 2) && (paramInt2 > 1))
        createCustomVariableTables(paramSQLiteDatabase);
      if ((paramInt1 < 3) && (paramInt2 > 2))
        createECommerceTables(paramSQLiteDatabase);
      if ((paramInt1 < 4) && (paramInt2 > 3))
      {
        createHitTable(paramSQLiteDatabase);
        createReferrerTable(paramSQLiteDatabase);
        migrateEventsToHits(paramSQLiteDatabase, paramInt1);
        migratePreV4Referrer(paramSQLiteDatabase);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.PersistentHitStore.DataBaseHelper
 * JD-Core Version:    0.6.2
 */