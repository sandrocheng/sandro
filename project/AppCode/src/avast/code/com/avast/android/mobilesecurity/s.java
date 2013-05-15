package com.avast.android.mobilesecurity;

import a.a.a.a.a.a;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.avast.android.generic.util.m;

public class s extends SQLiteOpenHelper
{
  public s(Context paramContext)
  {
    super(paramContext, "avast.db", null, 11);
  }

  public static s a(Context paramContext)
  {
    s locals = (s)paramContext.getSystemService("databaseHelperService");
    if (locals == null)
      locals = (s)paramContext.getApplicationContext().getSystemService("databaseHelperService");
    if (locals == null)
      throw new IllegalStateException("DatabaseHelper not available");
    return locals;
  }

  private void a(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("protectApps");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("packageName");
    localStringBuffer.append(" text UNIQUE,");
    localStringBuffer.append("lock_enabled");
    localStringBuffer.append(" integer default 0,");
    localStringBuffer.append("custom_settings");
    localStringBuffer.append(" integer default 0,");
    localStringBuffer.append("time_range_enabled");
    localStringBuffer.append(" integer default 0,");
    localStringBuffer.append("gesture_password");
    localStringBuffer.append(" text,");
    localStringBuffer.append("text_password");
    localStringBuffer.append(" text,");
    localStringBuffer.append("password_type");
    localStringBuffer.append(" integer default 0,");
    localStringBuffer.append("minuteFrom");
    localStringBuffer.append(" integer default 0,");
    localStringBuffer.append("minuteTo");
    localStringBuffer.append(" integer default 1439,");
    localStringBuffer.append("days");
    localStringBuffer.append(" integer");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void b(SQLiteDatabase paramSQLiteDatabase)
  {
    new StringBuffer();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("customRules");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("name");
    localStringBuffer.append(" text,");
    localStringBuffer.append("allow");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("outgoingMobile");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("outgoingRoaming");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("outgoingWifi");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("ipEnabled");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("portEnabled");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("port");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("ip");
    localStringBuffer.append(" text,");
    localStringBuffer.append("netmask");
    localStringBuffer.append(" text,");
    localStringBuffer.append("enabled");
    localStringBuffer.append(" integer DEFAULT 0");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void c(SQLiteDatabase paramSQLiteDatabase)
  {
    new StringBuffer();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("ALTER TABLE ");
    localStringBuffer.append("customRules");
    localStringBuffer.append(" ADD COLUMN ipV6type integer DEFAULT 0;");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void d(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("trafficInfo");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("timestamp");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("realtimeElapsed");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalTx3G");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalRx3G");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalTxWifi");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalRxWifi");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalTxRoaming");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalRxRoaming");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalTx");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalRx");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("cumulationLevel");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("uid");
    localStringBuffer.append(" integer DEFAULT -100,");
    localStringBuffer.append("totalTxOffset");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("totalRxOffset");
    localStringBuffer.append(" integer DEFAULT 0");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void e(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("antivirusActivity");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("date");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("infected");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("scanned");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("scan_type");
    localStringBuffer.append(" integer DEFAULT 0");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void f(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("DELETE FROM ");
    localStringBuffer.append("results");
    localStringBuffer.append(" WHERE 1=1;");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
    localStringBuffer.setLength(0);
    localStringBuffer.append("ALTER TABLE ");
    localStringBuffer.append("results");
    localStringBuffer.append(" ADD COLUMN ");
    localStringBuffer.append("detection_type");
    localStringBuffer.append(" integer default 0;");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
    localStringBuffer.setLength(0);
    localStringBuffer.append("ALTER TABLE ");
    localStringBuffer.append("results");
    localStringBuffer.append(" ADD COLUMN ");
    localStringBuffer.append("detection_category");
    localStringBuffer.append(" integer default 0;");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void g(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("CREATE TABLE ");
    localStringBuffer1.append("lastDetectedViruses");
    localStringBuffer1.append(" (");
    localStringBuffer1.append("_id");
    localStringBuffer1.append(" integer primary key autoincrement,");
    localStringBuffer1.append("date");
    localStringBuffer1.append(" integer DEFAULT 0,");
    localStringBuffer1.append("uri");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("virus_name");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("scan_type");
    localStringBuffer1.append(" integer DEFAULT 0");
    localStringBuffer1.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer1.toString());
    StringBuffer localStringBuffer2 = new StringBuffer();
    localStringBuffer2.append("CREATE TRIGGER ").append("clean_lastDetectedViruses");
    localStringBuffer2.append(" AFTER INSERT ON ").append("lastDetectedViruses");
    localStringBuffer2.append(" FOR EACH ROW WHEN ");
    localStringBuffer2.append(" (SELECT COUNT() FROM ").append("lastDetectedViruses").append(") > ").append(5);
    localStringBuffer2.append(" BEGIN ");
    localStringBuffer2.append(" DELETE FROM ").append("lastDetectedViruses").append(" WHERE ");
    localStringBuffer2.append("_id");
    localStringBuffer2.append(" = (SELECT MIN(").append("_id").append(") FROM ");
    localStringBuffer2.append("lastDetectedViruses");
    localStringBuffer2.append(")");
    localStringBuffer2.append(";");
    localStringBuffer2.append(" END;");
    paramSQLiteDatabase.execSQL(localStringBuffer2.toString());
  }

  private void h(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("messagesToScan");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("uuid");
    localStringBuffer.append(" text,");
    localStringBuffer.append("message_id");
    localStringBuffer.append(" integer,");
    localStringBuffer.append("date");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("scan_attempts");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("type");
    localStringBuffer.append(" integer DEFAULT 0");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void i(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE ");
    localStringBuffer.append("globalActivityLog");
    localStringBuffer.append(" (");
    localStringBuffer.append("_id");
    localStringBuffer.append(" integer primary key autoincrement,");
    localStringBuffer.append("date");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("type");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("text_primary");
    localStringBuffer.append(" text,");
    localStringBuffer.append("text_secondary");
    localStringBuffer.append(" text,");
    localStringBuffer.append("text_tertiary");
    localStringBuffer.append(" text,");
    localStringBuffer.append("number_primary");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("number_secondary");
    localStringBuffer.append(" integer DEFAULT 0,");
    localStringBuffer.append("number_tertiary");
    localStringBuffer.append(" integer DEFAULT 0");
    localStringBuffer.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  private void j(SQLiteDatabase paramSQLiteDatabase)
  {
    new StringBuffer();
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("CREATE TABLE ");
    localStringBuffer1.append("adrepGroups");
    localStringBuffer1.append(" (");
    localStringBuffer1.append("_id");
    localStringBuffer1.append(" integer primary key,");
    localStringBuffer1.append("name");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("size");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("notify");
    localStringBuffer1.append(" integer DEFAULT 0");
    localStringBuffer1.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer1.toString());
    StringBuffer localStringBuffer2 = new StringBuffer();
    localStringBuffer2.append("CREATE TABLE ");
    localStringBuffer2.append("adrepApps");
    localStringBuffer2.append(" (");
    localStringBuffer2.append("_id");
    localStringBuffer2.append(" integer primary key autoincrement,");
    localStringBuffer2.append("packageName");
    localStringBuffer2.append(" text,");
    localStringBuffer2.append("name");
    localStringBuffer2.append(" text,");
    localStringBuffer2.append("groupId");
    localStringBuffer2.append(" integer");
    localStringBuffer2.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer2.toString());
  }

  private void k(SQLiteDatabase paramSQLiteDatabase)
  {
    m.b("DatabaseHelper", "Cleaning table antivirusActivity");
    try
    {
      paramSQLiteDatabase.beginTransaction();
      int i = paramSQLiteDatabase.delete("antivirusActivity", "date< STRFTIME('%s', DATE('now','-1 year'))", null);
      m.b("DatabaseHelper", "Cleaned: " + i);
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        a.a().a("Cannot purge table antivirusActivity because of " + localSQLiteException.getMessage(), localSQLiteException);
        paramSQLiteDatabase.endTransaction();
      }
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("CREATE TABLE ");
    localStringBuffer1.append("results");
    localStringBuffer1.append(" (");
    localStringBuffer1.append("_id");
    localStringBuffer1.append(" integer primary key autoincrement,");
    localStringBuffer1.append("name");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("packageName");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("infection");
    localStringBuffer1.append(" text,");
    localStringBuffer1.append("result");
    localStringBuffer1.append(" integer,");
    localStringBuffer1.append("detection_type");
    localStringBuffer1.append(" integer default 0,");
    localStringBuffer1.append("detection_category");
    localStringBuffer1.append(" integer default 0");
    localStringBuffer1.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer1.toString());
    StringBuffer localStringBuffer2 = new StringBuffer();
    localStringBuffer2.append("CREATE TABLE ");
    localStringBuffer2.append("advisorGroups");
    localStringBuffer2.append(" (");
    localStringBuffer2.append("_id");
    localStringBuffer2.append(" integer primary key,");
    localStringBuffer2.append("name");
    localStringBuffer2.append(" text,");
    localStringBuffer2.append("size");
    localStringBuffer2.append(" text");
    localStringBuffer2.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer2.toString());
    StringBuffer localStringBuffer3 = new StringBuffer();
    localStringBuffer3.append("INSERT INTO ");
    localStringBuffer3.append("advisorGroups");
    localStringBuffer3.append(" (");
    localStringBuffer3.append("_id");
    localStringBuffer3.append(",");
    localStringBuffer3.append("name");
    localStringBuffer3.append(",");
    localStringBuffer3.append("size");
    localStringBuffer3.append(") VALUES (");
    localStringBuffer3.append("0");
    localStringBuffer3.append(",'group_location',");
    localStringBuffer3.append("0");
    localStringBuffer3.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer3.toString());
    StringBuffer localStringBuffer4 = new StringBuffer();
    localStringBuffer4.append("CREATE TABLE ");
    localStringBuffer4.append("advisorApps");
    localStringBuffer4.append(" (");
    localStringBuffer4.append("_id");
    localStringBuffer4.append(" integer primary key autoincrement,");
    localStringBuffer4.append("packageName");
    localStringBuffer4.append(" text,");
    localStringBuffer4.append("name");
    localStringBuffer4.append(" text,");
    localStringBuffer4.append("groupId");
    localStringBuffer4.append(" integer");
    localStringBuffer4.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer4.toString());
    a(paramSQLiteDatabase);
    StringBuffer localStringBuffer5 = new StringBuffer();
    localStringBuffer5.append("CREATE TABLE ");
    localStringBuffer5.append("filterGroups");
    localStringBuffer5.append(" (");
    localStringBuffer5.append("_id");
    localStringBuffer5.append(" integer primary key autoincrement,");
    localStringBuffer5.append("name");
    localStringBuffer5.append(" text,");
    localStringBuffer5.append("incomingCall");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("incomingSMS");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("outgoingCall");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("outgoingSMS");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("unknownNumbers");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("hiddenNumbers");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("minuteFrom");
    localStringBuffer5.append(" integer default 0,");
    localStringBuffer5.append("minuteTo");
    localStringBuffer5.append(" integer default 1439,");
    localStringBuffer5.append("days");
    localStringBuffer5.append(" integer");
    localStringBuffer5.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer5.toString());
    b(paramSQLiteDatabase);
    c(paramSQLiteDatabase);
    d(paramSQLiteDatabase);
    StringBuffer localStringBuffer6 = new StringBuffer();
    localStringBuffer6.append("CREATE TABLE ");
    localStringBuffer6.append("filterContacts");
    localStringBuffer6.append(" (");
    localStringBuffer6.append("_id");
    localStringBuffer6.append(" integer primary key autoincrement,");
    localStringBuffer6.append("lookupKey");
    localStringBuffer6.append(" text,");
    localStringBuffer6.append("phone");
    localStringBuffer6.append(" text,");
    localStringBuffer6.append("groupId");
    localStringBuffer6.append(" integer,");
    localStringBuffer6.append("type");
    localStringBuffer6.append(" integer DEFAULT 0");
    localStringBuffer6.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer6.toString());
    StringBuffer localStringBuffer7 = new StringBuffer();
    localStringBuffer7.append("CREATE TABLE ");
    localStringBuffer7.append("filterLogs");
    localStringBuffer7.append(" (");
    localStringBuffer7.append("_id");
    localStringBuffer7.append(" integer primary key autoincrement,");
    localStringBuffer7.append("time");
    localStringBuffer7.append(" text DEFAULT current_timestamp,");
    localStringBuffer7.append("phone");
    localStringBuffer7.append(" text,");
    localStringBuffer7.append("lookupKey");
    localStringBuffer7.append(" text,");
    localStringBuffer7.append("type");
    localStringBuffer7.append(" integer,");
    localStringBuffer7.append("direction");
    localStringBuffer7.append(" integer,");
    localStringBuffer7.append("groupId");
    localStringBuffer7.append(" integer,");
    localStringBuffer7.append("text");
    localStringBuffer7.append(" text");
    localStringBuffer7.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer7.toString());
    StringBuffer localStringBuffer8 = new StringBuffer();
    localStringBuffer8.append("CREATE TABLE ");
    localStringBuffer8.append("notifications");
    localStringBuffer8.append(" (");
    localStringBuffer8.append("_id");
    localStringBuffer8.append(" integer primary key,");
    localStringBuffer8.append("contentTitle");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("contentText");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("flags");
    localStringBuffer8.append(" integer,");
    localStringBuffer8.append("number");
    localStringBuffer8.append(" integer,");
    localStringBuffer8.append("pendingIntentData");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("pendingIntentAction");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("pendingIntentClass");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("pendingIntentFlags");
    localStringBuffer8.append(" integer,");
    localStringBuffer8.append("pendingIntentExtras");
    localStringBuffer8.append(" text,");
    localStringBuffer8.append("pendingIntentType");
    localStringBuffer8.append(" text DEFAULT 'ACTIVITY',");
    localStringBuffer8.append("percentage");
    localStringBuffer8.append(" integer,");
    localStringBuffer8.append("ongoing");
    localStringBuffer8.append(" integer,");
    localStringBuffer8.append("timestamp");
    localStringBuffer8.append(" integer");
    localStringBuffer8.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer8.toString());
    StringBuffer localStringBuffer9 = new StringBuffer();
    localStringBuffer9.append("CREATE TABLE ");
    localStringBuffer9.append("firewall");
    localStringBuffer9.append(" (");
    localStringBuffer9.append("_id");
    localStringBuffer9.append(" text primary key,");
    localStringBuffer9.append("mobile");
    localStringBuffer9.append(" integer DEFAULT 0,");
    localStringBuffer9.append("roaming");
    localStringBuffer9.append(" integer DEFAULT 0,");
    localStringBuffer9.append("wifi");
    localStringBuffer9.append(" integer DEFAULT 0");
    localStringBuffer9.append(");");
    paramSQLiteDatabase.execSQL(localStringBuffer9.toString());
    e(paramSQLiteDatabase);
    g(paramSQLiteDatabase);
    h(paramSQLiteDatabase);
    i(paramSQLiteDatabase);
    j(paramSQLiteDatabase);
  }

  // ERROR //
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: ldc_w 274
    //   3: new 292	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   10: ldc_w 434
    //   13: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: iload_2
    //   17: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   20: ldc_w 436
    //   23: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: iload_3
    //   27: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   30: ldc_w 438
    //   33: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 281	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   42: pop
    //   43: iload_2
    //   44: iconst_1
    //   45: if_icmpne +1016 -> 1061
    //   48: aload_1
    //   49: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   52: aload_1
    //   53: ldc_w 440
    //   56: invokevirtual 93	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   59: aload_1
    //   60: ldc_w 442
    //   63: invokevirtual 93	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   66: aload_1
    //   67: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   70: iload_2
    //   71: iconst_1
    //   72: iadd
    //   73: istore 28
    //   75: aload_1
    //   76: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   79: iload 28
    //   81: istore 5
    //   83: iload 5
    //   85: iconst_2
    //   86: if_icmpne +30 -> 116
    //   89: aload_1
    //   90: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   93: aload_1
    //   94: ldc_w 444
    //   97: invokevirtual 93	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   100: aload_0
    //   101: aload_1
    //   102: invokespecial 346	com/avast/android/mobilesecurity/s:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   105: aload_1
    //   106: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   109: iinc 5 1
    //   112: aload_1
    //   113: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   116: iload 5
    //   118: iconst_3
    //   119: if_icmpne +23 -> 142
    //   122: aload_1
    //   123: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   126: aload_0
    //   127: aload_1
    //   128: invokespecial 362	com/avast/android/mobilesecurity/s:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   131: aload_1
    //   132: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   135: iinc 5 1
    //   138: aload_1
    //   139: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   142: iload 5
    //   144: iconst_4
    //   145: if_icmpne +23 -> 168
    //   148: aload_1
    //   149: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   152: aload_0
    //   153: aload_1
    //   154: invokespecial 366	com/avast/android/mobilesecurity/s:d	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   157: aload_1
    //   158: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   161: iinc 5 1
    //   164: aload_1
    //   165: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   168: iload 5
    //   170: iconst_5
    //   171: if_icmpne +23 -> 194
    //   174: aload_1
    //   175: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   178: aload_0
    //   179: aload_1
    //   180: invokespecial 446	com/avast/android/mobilesecurity/s:f	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   183: aload_1
    //   184: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   187: iinc 5 1
    //   190: aload_1
    //   191: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   194: iload 5
    //   196: bipush 6
    //   198: if_icmpne +28 -> 226
    //   201: aload_1
    //   202: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   205: aload_0
    //   206: aload_1
    //   207: invokespecial 422	com/avast/android/mobilesecurity/s:e	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   210: aload_0
    //   211: aload_1
    //   212: invokespecial 424	com/avast/android/mobilesecurity/s:g	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   215: aload_1
    //   216: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   219: iinc 5 1
    //   222: aload_1
    //   223: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   226: iload 5
    //   228: bipush 7
    //   230: if_icmpne +23 -> 253
    //   233: aload_1
    //   234: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   237: aload_0
    //   238: aload_1
    //   239: invokespecial 426	com/avast/android/mobilesecurity/s:h	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   242: aload_1
    //   243: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   246: iinc 5 1
    //   249: aload_1
    //   250: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   253: iload 5
    //   255: bipush 8
    //   257: if_icmpne +23 -> 280
    //   260: aload_1
    //   261: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   264: aload_0
    //   265: aload_1
    //   266: invokespecial 364	com/avast/android/mobilesecurity/s:c	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   269: aload_1
    //   270: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   273: iinc 5 1
    //   276: aload_1
    //   277: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   280: iload 5
    //   282: bipush 9
    //   284: if_icmpne +30 -> 314
    //   287: aload_1
    //   288: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   291: aload_0
    //   292: aload_1
    //   293: invokespecial 428	com/avast/android/mobilesecurity/s:i	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   296: aload_1
    //   297: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   300: iload 5
    //   302: iconst_1
    //   303: iadd
    //   304: istore 11
    //   306: aload_1
    //   307: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   310: iload 11
    //   312: istore 5
    //   314: iload 5
    //   316: bipush 10
    //   318: if_icmpne +25 -> 343
    //   321: aload_1
    //   322: invokevirtual 284	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   325: aload_0
    //   326: aload_1
    //   327: invokespecial 430	com/avast/android/mobilesecurity/s:j	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   330: aload_1
    //   331: invokevirtual 305	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   334: iload 5
    //   336: iconst_1
    //   337: iadd
    //   338: pop
    //   339: aload_1
    //   340: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   343: aload_0
    //   344: aload_1
    //   345: invokespecial 448	com/avast/android/mobilesecurity/s:k	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   348: return
    //   349: astore 27
    //   351: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   354: new 292	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   361: ldc_w 450
    //   364: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: iload_2
    //   368: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   371: ldc_w 436
    //   374: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: iload_3
    //   378: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   381: ldc_w 452
    //   384: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: aload 27
    //   389: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   392: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   398: aload 27
    //   400: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   403: aload_1
    //   404: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   407: iload_2
    //   408: istore 5
    //   410: goto -327 -> 83
    //   413: astore 26
    //   415: aload_1
    //   416: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   419: aload 26
    //   421: athrow
    //   422: astore 25
    //   424: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   427: new 292	java/lang/StringBuilder
    //   430: dup
    //   431: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   434: ldc_w 450
    //   437: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: iload 5
    //   442: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   445: ldc_w 436
    //   448: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: iload_3
    //   452: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   455: ldc_w 452
    //   458: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload 25
    //   463: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   466: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   472: aload 25
    //   474: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   477: aload_1
    //   478: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   481: goto -365 -> 116
    //   484: astore 24
    //   486: aload_1
    //   487: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   490: aload 24
    //   492: athrow
    //   493: astore 23
    //   495: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   498: new 292	java/lang/StringBuilder
    //   501: dup
    //   502: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   505: ldc_w 450
    //   508: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   511: iload 5
    //   513: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   516: ldc_w 436
    //   519: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: iload_3
    //   523: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   526: ldc_w 452
    //   529: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: aload 23
    //   534: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   537: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   540: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   543: aload 23
    //   545: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   548: aload_1
    //   549: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   552: goto -410 -> 142
    //   555: astore 22
    //   557: aload_1
    //   558: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   561: aload 22
    //   563: athrow
    //   564: astore 21
    //   566: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   569: new 292	java/lang/StringBuilder
    //   572: dup
    //   573: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   576: ldc_w 450
    //   579: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   582: iload 5
    //   584: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   587: ldc_w 436
    //   590: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   593: iload_3
    //   594: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   597: ldc_w 452
    //   600: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: aload 21
    //   605: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   608: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   614: aload 21
    //   616: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   619: aload_1
    //   620: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   623: goto -455 -> 168
    //   626: astore 20
    //   628: aload_1
    //   629: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   632: aload 20
    //   634: athrow
    //   635: astore 19
    //   637: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   640: new 292	java/lang/StringBuilder
    //   643: dup
    //   644: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   647: ldc_w 450
    //   650: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: iload 5
    //   655: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   658: ldc_w 436
    //   661: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: iload_3
    //   665: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   668: ldc_w 452
    //   671: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   674: aload 19
    //   676: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   679: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   682: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   685: aload 19
    //   687: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   690: aload_1
    //   691: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   694: goto -500 -> 194
    //   697: astore 18
    //   699: aload_1
    //   700: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   703: aload 18
    //   705: athrow
    //   706: astore 17
    //   708: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   711: new 292	java/lang/StringBuilder
    //   714: dup
    //   715: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   718: ldc_w 450
    //   721: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: iload 5
    //   726: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   729: ldc_w 436
    //   732: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   735: iload_3
    //   736: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   739: ldc_w 452
    //   742: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   745: aload 17
    //   747: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   750: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   753: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   756: aload 17
    //   758: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   761: aload_1
    //   762: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   765: goto -539 -> 226
    //   768: astore 16
    //   770: aload_1
    //   771: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   774: aload 16
    //   776: athrow
    //   777: astore 15
    //   779: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   782: new 292	java/lang/StringBuilder
    //   785: dup
    //   786: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   789: ldc_w 450
    //   792: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   795: iload 5
    //   797: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   800: ldc_w 436
    //   803: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   806: iload_3
    //   807: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   810: ldc_w 452
    //   813: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   816: aload 15
    //   818: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   821: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   824: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   827: aload 15
    //   829: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   832: aload_1
    //   833: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   836: goto -583 -> 253
    //   839: astore 14
    //   841: aload_1
    //   842: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   845: aload 14
    //   847: athrow
    //   848: astore 13
    //   850: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   853: new 292	java/lang/StringBuilder
    //   856: dup
    //   857: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   860: ldc_w 450
    //   863: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: iload 5
    //   868: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   871: ldc_w 436
    //   874: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   877: iload_3
    //   878: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   881: ldc_w 452
    //   884: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   887: aload 13
    //   889: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   892: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   898: aload 13
    //   900: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   903: aload_1
    //   904: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   907: goto -627 -> 280
    //   910: astore 12
    //   912: aload_1
    //   913: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   916: aload 12
    //   918: athrow
    //   919: astore 10
    //   921: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   924: new 292	java/lang/StringBuilder
    //   927: dup
    //   928: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   931: ldc_w 450
    //   934: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   937: iload 5
    //   939: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   942: ldc_w 436
    //   945: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   948: iload_3
    //   949: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   952: ldc_w 452
    //   955: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   958: aload 10
    //   960: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   963: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   966: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   969: aload 10
    //   971: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   974: aload_1
    //   975: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   978: goto -664 -> 314
    //   981: astore 9
    //   983: aload_1
    //   984: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   987: aload 9
    //   989: athrow
    //   990: astore 7
    //   992: invokestatic 313	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   995: new 292	java/lang/StringBuilder
    //   998: dup
    //   999: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   1002: ldc_w 450
    //   1005: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1008: iload 5
    //   1010: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1013: ldc_w 436
    //   1016: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1019: iload_3
    //   1020: invokevirtual 301	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1023: ldc_w 452
    //   1026: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1029: aload 7
    //   1031: invokevirtual 318	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   1034: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1037: invokevirtual 302	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1040: aload 7
    //   1042: invokevirtual 321	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1045: aload_1
    //   1046: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1049: goto -706 -> 343
    //   1052: astore 6
    //   1054: aload_1
    //   1055: invokevirtual 308	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1058: aload 6
    //   1060: athrow
    //   1061: iload_2
    //   1062: istore 5
    //   1064: goto -981 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   48	70	349	android/database/sqlite/SQLiteException
    //   48	70	413	finally
    //   351	403	413	finally
    //   89	109	422	android/database/sqlite/SQLiteException
    //   89	109	484	finally
    //   424	477	484	finally
    //   122	135	493	android/database/sqlite/SQLiteException
    //   122	135	555	finally
    //   495	548	555	finally
    //   148	161	564	android/database/sqlite/SQLiteException
    //   148	161	626	finally
    //   566	619	626	finally
    //   174	187	635	android/database/sqlite/SQLiteException
    //   174	187	697	finally
    //   637	690	697	finally
    //   201	219	706	android/database/sqlite/SQLiteException
    //   201	219	768	finally
    //   708	761	768	finally
    //   233	246	777	android/database/sqlite/SQLiteException
    //   233	246	839	finally
    //   779	832	839	finally
    //   260	273	848	android/database/sqlite/SQLiteException
    //   260	273	910	finally
    //   850	903	910	finally
    //   287	300	919	android/database/sqlite/SQLiteException
    //   287	300	981	finally
    //   921	974	981	finally
    //   321	334	990	android/database/sqlite/SQLiteException
    //   321	334	1052	finally
    //   992	1045	1052	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.s
 * JD-Core Version:    0.6.2
 */