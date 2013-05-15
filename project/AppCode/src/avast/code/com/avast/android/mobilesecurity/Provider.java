package com.avast.android.mobilesecurity;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.x;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Provider extends ContentProvider
{
  private UriMatcher a;
  private s b;

  private int a(Uri paramUri, String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    try
    {
      int i = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      if ((i == 0) && (localSQLiteDatabase.insert(paramString1, null, paramContentValues) > 0L))
        i = -1;
      if (i != 0)
        getContext().getContentResolver().notifyChange(paramUri, null);
      localSQLiteDatabase.setTransactionSuccessful();
      return i;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }

  private int a(String paramString, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
    x localx1 = x.a;
    localSQLiteDatabase.beginTransaction();
    while (true)
    {
      int i;
      try
      {
        Cursor localCursor = localSQLiteDatabase.query("results", new String[] { "result" }, paramString, paramArrayOfString, null, null, null);
        try
        {
          if (!localCursor.moveToFirst())
            break label172;
          x localx3 = x.a(localCursor.getInt(localCursor.getColumnIndex("result")));
          localx2 = localx3;
          if (localCursor != null)
            localCursor.close();
          i = localSQLiteDatabase.delete("results", paramString, paramArrayOfString);
          localSQLiteDatabase.setTransactionSuccessful();
          localSQLiteDatabase.endTransaction();
          if (i > 0)
            getContext().getContentResolver().notifyChange(q.a(), null);
          if (localx2 == x.l)
          {
            j = i;
            return j;
          }
        }
        finally
        {
          if (localCursor != null)
            localCursor.close();
        }
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      int j = -i;
      continue;
      label172: x localx2 = localx1;
    }
  }

  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo)
  {
    super.attachInfo(paramContext, paramProviderInfo);
    this.a = new UriMatcher(-1);
    this.a.addURI(paramProviderInfo.authority, "results", 1);
    this.a.addURI(paramProviderInfo.authority, "results/*", 2);
    this.a.addURI(paramProviderInfo.authority, "count", 39);
    this.a.addURI(paramProviderInfo.authority, "advisorGroups", 3);
    this.a.addURI(paramProviderInfo.authority, "advisorGroups/*", 4);
    this.a.addURI(paramProviderInfo.authority, "advisorGroups/*/advisorApps", 5);
    this.a.addURI(paramProviderInfo.authority, "advisorApps", 7);
    this.a.addURI(paramProviderInfo.authority, "adrepGroups", 41);
    this.a.addURI(paramProviderInfo.authority, "adrepGroups/*", 42);
    this.a.addURI(paramProviderInfo.authority, "adrepGroups/*/adrepApps", 43);
    this.a.addURI(paramProviderInfo.authority, "adrepApps", 44);
    this.a.addURI(paramProviderInfo.authority, "lockedApps", 9);
    this.a.addURI(paramProviderInfo.authority, "lockedApps/*", 10);
    this.a.addURI(paramProviderInfo.authority, "filterGroups", 13);
    this.a.addURI(paramProviderInfo.authority, "filterGroups/*", 14);
    this.a.addURI(paramProviderInfo.authority, "customRules", 28);
    this.a.addURI(paramProviderInfo.authority, "customRules/*", 29);
    this.a.addURI(paramProviderInfo.authority, "trafficInfo", 30);
    this.a.addURI(paramProviderInfo.authority, "trafficInfo/*", 31);
    this.a.addURI(paramProviderInfo.authority, "filterContacts", 17);
    this.a.addURI(paramProviderInfo.authority, "filterContacts/*", 18);
    this.a.addURI(paramProviderInfo.authority, "filterGroups/*/filterContacts", 15);
    this.a.addURI(paramProviderInfo.authority, "filterGroups/*/filterContacts/*", 16);
    this.a.addURI(paramProviderInfo.authority, "filterLog", 19);
    this.a.addURI(paramProviderInfo.authority, "filterLog/*", 20);
    this.a.addURI(paramProviderInfo.authority, "filterGroups/*/filterLog", 21);
    this.a.addURI(paramProviderInfo.authority, "filterGroups/*/filterLog/*", 22);
    this.a.addURI(paramProviderInfo.authority, "notifications", 23);
    this.a.addURI(paramProviderInfo.authority, "notifications/*", 24);
    this.a.addURI(paramProviderInfo.authority, "firewall", 25);
    this.a.addURI(paramProviderInfo.authority, "firewall/*", 26);
    this.a.addURI(paramProviderInfo.authority, "results_on_demand", 27);
    this.a.addURI(paramProviderInfo.authority, "antivirusActivity", 32);
    this.a.addURI(paramProviderInfo.authority, "antivirusActivity/week", 33);
    this.a.addURI(paramProviderInfo.authority, "antivirusActivity/month", 34);
    this.a.addURI(paramProviderInfo.authority, "antivirusActivity/year", 35);
    this.a.addURI(paramProviderInfo.authority, "lastDetectedViruses", 36);
    this.a.addURI(paramProviderInfo.authority, "messagesToScan", 37);
    this.a.addURI(paramProviderInfo.authority, "messagesToScan/uuid/*", 38);
    this.a.addURI(paramProviderInfo.authority, "globalActivityLog", 40);
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    String str21;
    switch (this.a.match(paramUri))
    {
    case 5:
    case 6:
    case 11:
    case 12:
    case 13:
    case 17:
    case 22:
    case 28:
    case 33:
    case 34:
    case 35:
    case 39:
    case 43:
    default:
      throw new IllegalArgumentException("Cannot delete from: " + paramUri);
    case 2:
      str21 = paramUri.getLastPathSegment();
      if (TextUtils.isEmpty(paramString))
        paramString = "_id = " + str21;
      break;
    case 1:
    case 4:
    case 3:
    case 8:
    case 7:
    case 42:
    case 41:
    case 45:
    case 44:
    case 10:
    case 9:
    case 14:
    case 29:
    case 31:
    case 16:
    case 18:
    case 15:
    case 20:
    case 19:
    case 21:
    case 24:
    case 23:
    case 26:
    case 25:
    case 30:
    case 27:
    case 32:
    case 36:
    case 38:
    case 37:
    case 40:
    }
    while (true)
    {
      String str1 = "results";
      label269: SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i = localSQLiteDatabase.delete(str1, paramString, paramArrayOfString);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        if (i > 0);
        while (true)
        {
          return i;
          paramString = paramString + " and _id = " + str21;
          break;
          String str20 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str20; ; paramString = paramString + " and _id = " + str20)
          {
            str1 = "advisorGroups";
            break;
          }
          String str19 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str19; ; paramString = paramString + " and _id = " + str19)
          {
            str1 = "advisorApps";
            break;
          }
          String str18 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str18; ; paramString = paramString + " and _id = " + str18)
          {
            str1 = "adrepGroups";
            break;
          }
          String str17 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str17; ; paramString = paramString + " and _id = " + str17)
          {
            str1 = "adrepApps";
            break;
          }
          String str16 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str16; ; paramString = paramString + " and _id = " + str16)
          {
            str1 = "protectApps";
            break;
          }
          String str14 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (String str15 = "_id = " + str14; ; str15 = paramString + " and _id = " + str14)
          {
            delete(paramUri.buildUpon().appendPath("filterContacts").build(), "", null);
            paramString = str15;
            str1 = "filterGroups";
            break;
          }
          str1 = "customRules";
          String str13 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString))
          {
            paramString = "_id = " + str13;
            break label269;
          }
          paramString = paramString + " and _id = " + str13;
          break label269;
          str1 = "trafficInfo";
          String str12 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString))
          {
            paramString = "_id = " + str12;
            break label269;
          }
          paramString = paramString + " and _id = " + str12;
          break label269;
          String str10 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (String str11 = "_id = " + str10; ; str11 = paramString + " and _id = " + str10)
          {
            paramString = str11;
            str1 = "filterContacts";
            break;
          }
          String str8 = "" + i.a(paramUri);
          if (TextUtils.isEmpty(paramString));
          for (String str9 = "groupId = " + str8; ; str9 = paramString + " and groupId = " + str8)
          {
            paramString = str9;
            str1 = "filterContacts";
            break;
          }
          String str7 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str7; ; paramString = paramString + " and _id = " + str7)
          {
            str1 = "filterLogs";
            break;
          }
          String str5 = "" + k.a(paramUri);
          if (TextUtils.isEmpty(paramString));
          for (String str6 = "groupId = " + str5; ; str6 = paramString + " and groupId = " + str5)
          {
            paramString = str6;
            str1 = "filterLogs";
            break;
          }
          String str4 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str4; ; paramString = paramString + " and _id = " + str4)
          {
            str1 = "notifications";
            break;
          }
          String str3 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str3; ; paramString = paramString + " and _id = " + str3)
          {
            str1 = "firewall";
            break;
          }
          str1 = "trafficInfo";
          break label269;
          i = a(paramString, paramArrayOfString);
        }
        str1 = "antivirusActivity";
        break label269;
        str1 = "lastDetectedViruses";
        break label269;
        String str2 = paramUri.getLastPathSegment();
        if (TextUtils.isEmpty(paramString))
        {
          paramString = "uuid = ?";
          paramArrayOfString = new String[] { str2 };
        }
        while (true)
        {
          str1 = "messagesToScan";
          break;
          paramString = paramString + " AND uuid = ?";
          if (paramArrayOfString == null);
          for (int j = 0; ; j = paramArrayOfString.length)
          {
            if (j != 0)
              break label1522;
            paramArrayOfString = new String[] { str2 };
            break;
          }
          label1522: String[] arrayOfString = new String[j + 1];
          System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, j);
          arrayOfString[j] = str2;
          paramArrayOfString = arrayOfString;
        }
        str1 = "globalActivityLog";
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
    }
  }

  public String getType(Uri paramUri)
  {
    String str;
    switch (this.a.match(paramUri))
    {
    case 6:
    case 11:
    case 12:
    case 16:
    case 33:
    case 34:
    case 35:
    case 38:
    case 39:
    default:
      str = null;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 9:
    case 10:
    case 13:
    case 14:
    case 28:
    case 29:
    case 30:
    case 31:
    case 19:
    case 20:
    case 17:
    case 18:
    case 15:
    case 22:
    case 21:
    case 24:
    case 23:
    case 26:
    case 25:
    case 27:
    case 32:
    case 36:
    case 37:
    case 40:
    }
    while (true)
    {
      return str;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.result";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.result";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.advisorGroup";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.advisorGroup";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.advisorApp";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.advisorApp";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.adrepGroup";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.adrepGroup";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.adrepApp";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.adrepApp";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.lockedApp";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.lockedApp";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.filterGroup";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.filterGroup";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.customRule";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.customRule";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.trafficInfo";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.trafficInfo";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.filterLog";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.filterLog";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.filterContact";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.filterContact";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.filterContact";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.filterLog";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.filterLog";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.notification";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.notification";
      continue;
      str = "vnd.android.cursor.item/vnd.com.avast.android.mobilesecurity.firewall";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.firewall";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.result";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.antivirusActivity";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.lastdetectedviruses";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.messagestoscan";
      continue;
      str = "vnd.android.cursor.dir/vnd.com.avast.android.mobilesecurity.globalactivitylog";
    }
  }

  // ERROR //
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +195 -> 196
    //   4: new 363	android/content/ContentValues
    //   7: dup
    //   8: aload_2
    //   9: invokespecial 366	android/content/ContentValues:<init>	(Landroid/content/ContentValues;)V
    //   12: astore_3
    //   13: aload_0
    //   14: getfield 115	com/avast/android/mobilesecurity/Provider:a	Landroid/content/UriMatcher;
    //   17: aload_1
    //   18: invokevirtual 208	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   21: lookupswitch	default:+147->168, 1:+186->207, 3:+271->292, 7:+290->311, 9:+333->354, 13:+345->366, 15:+1147->1168, 19:+1179->1200, 23:+1192->1213, 25:+1207->1228, 28:+740->761, 30:+1135->1156, 32:+1219->1240, 36:+1231->1252, 37:+1243->1264, 40:+1255->1276, 41:+302->323, 44:+321->342
    //   169: nop
    //   170: <illegal opcode>
    //   171: dup
    //   172: new 212	java/lang/StringBuilder
    //   175: dup
    //   176: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   179: ldc_w 368
    //   182: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: aload_1
    //   186: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokespecial 229	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   195: athrow
    //   196: new 363	android/content/ContentValues
    //   199: dup
    //   200: invokespecial 369	android/content/ContentValues:<init>	()V
    //   203: astore_3
    //   204: goto -191 -> 13
    //   207: ldc 64
    //   209: astore 4
    //   211: invokestatic 101	com/avast/android/mobilesecurity/q:a	()Landroid/net/Uri;
    //   214: astore 5
    //   216: aload_0
    //   217: getfield 15	com/avast/android/mobilesecurity/Provider:b	Lcom/avast/android/mobilesecurity/s;
    //   220: invokevirtual 21	com/avast/android/mobilesecurity/s:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   223: astore 6
    //   225: aload 6
    //   227: invokevirtual 26	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   230: aload 6
    //   232: aload 4
    //   234: aconst_null
    //   235: aload_3
    //   236: invokevirtual 34	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   239: lstore 10
    //   241: aload 6
    //   243: invokevirtual 53	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   246: lload 10
    //   248: lconst_0
    //   249: lcmp
    //   250: ifle +1038 -> 1288
    //   253: aload 5
    //   255: invokevirtual 250	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   258: lload 10
    //   260: invokestatic 373	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   263: invokevirtual 256	android/net/Uri$Builder:appendPath	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   266: invokevirtual 259	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   269: astore 12
    //   271: aload_0
    //   272: invokevirtual 38	com/avast/android/mobilesecurity/Provider:getContext	()Landroid/content/Context;
    //   275: invokevirtual 44	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   278: aload 12
    //   280: aconst_null
    //   281: invokevirtual 50	android/content/ContentResolver:notifyChange	(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    //   284: aload 6
    //   286: invokevirtual 56	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   289: aload 12
    //   291: areturn
    //   292: ldc 131
    //   294: astore 4
    //   296: invokestatic 376	com/avast/android/mobilesecurity/f:a	()Landroid/net/Uri;
    //   299: astore 5
    //   301: aload_2
    //   302: ldc_w 378
    //   305: invokevirtual 381	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   308: goto -92 -> 216
    //   311: ldc 137
    //   313: astore 4
    //   315: invokestatic 384	com/avast/android/mobilesecurity/e:a	()Landroid/net/Uri;
    //   318: astore 5
    //   320: goto -104 -> 216
    //   323: ldc 139
    //   325: astore 4
    //   327: invokestatic 387	com/avast/android/mobilesecurity/d:a	()Landroid/net/Uri;
    //   330: astore 5
    //   332: aload_2
    //   333: ldc_w 378
    //   336: invokevirtual 381	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   339: goto -123 -> 216
    //   342: ldc 145
    //   344: astore 4
    //   346: invokestatic 390	com/avast/android/mobilesecurity/c:a	()Landroid/net/Uri;
    //   349: astore 5
    //   351: goto -135 -> 216
    //   354: ldc 246
    //   356: astore 4
    //   358: invokestatic 393	com/avast/android/mobilesecurity/o:a	()Landroid/net/Uri;
    //   361: astore 5
    //   363: goto -147 -> 216
    //   366: ldc 151
    //   368: astore 4
    //   370: invokestatic 396	com/avast/android/mobilesecurity/j:a	()Landroid/net/Uri;
    //   373: astore 40
    //   375: aload_3
    //   376: ldc_w 398
    //   379: invokevirtual 402	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   382: astore 41
    //   384: aload_0
    //   385: getfield 15	com/avast/android/mobilesecurity/Provider:b	Lcom/avast/android/mobilesecurity/s;
    //   388: invokevirtual 21	com/avast/android/mobilesecurity/s:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   391: astore 42
    //   393: iconst_1
    //   394: anewarray 66	java/lang/String
    //   397: dup
    //   398: iconst_0
    //   399: ldc_w 398
    //   402: aastore
    //   403: astore 43
    //   405: new 212	java/lang/StringBuilder
    //   408: dup
    //   409: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   412: ldc_w 398
    //   415: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: ldc_w 404
    //   421: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   427: astore 48
    //   429: iconst_1
    //   430: anewarray 66	java/lang/String
    //   433: astore 49
    //   435: aload 49
    //   437: iconst_0
    //   438: new 212	java/lang/StringBuilder
    //   441: dup
    //   442: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   445: aload 41
    //   447: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: ldc_w 406
    //   453: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   459: aastore
    //   460: aload 42
    //   462: aload 4
    //   464: aload 43
    //   466: aload 48
    //   468: aload 49
    //   470: aconst_null
    //   471: aconst_null
    //   472: new 212	java/lang/StringBuilder
    //   475: dup
    //   476: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   479: ldc_w 398
    //   482: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: ldc_w 408
    //   488: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: invokevirtual 72	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   497: astore 50
    //   499: aload 50
    //   501: ldc_w 398
    //   504: invokeinterface 82 2 0
    //   509: istore 51
    //   511: aload 50
    //   513: invokeinterface 412 1 0
    //   518: istore 52
    //   520: iconst_0
    //   521: istore 53
    //   523: iload 52
    //   525: ifle +120 -> 645
    //   528: aload 50
    //   530: invokeinterface 415 1 0
    //   535: ifeq +50 -> 585
    //   538: aload 50
    //   540: iload 51
    //   542: invokeinterface 419 2 0
    //   547: invokestatic 424	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   550: pop
    //   551: aload 50
    //   553: iload 51
    //   555: invokeinterface 419 2 0
    //   560: pop
    //   561: goto -33 -> 528
    //   564: astore 44
    //   566: aload 50
    //   568: astore 45
    //   570: aload 45
    //   572: ifnull +10 -> 582
    //   575: aload 45
    //   577: invokeinterface 92 1 0
    //   582: aload 44
    //   584: athrow
    //   585: aload 50
    //   587: invokeinterface 427 1 0
    //   592: pop
    //   593: aload 50
    //   595: iload 51
    //   597: invokeinterface 419 2 0
    //   602: astore 57
    //   604: aload 57
    //   606: ldc_w 429
    //   609: invokevirtual 432	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   612: istore 58
    //   614: iconst_0
    //   615: istore 53
    //   617: iload 58
    //   619: ifle +26 -> 645
    //   622: aload 57
    //   624: iload 58
    //   626: invokevirtual 435	java/lang/String:substring	(I)Ljava/lang/String;
    //   629: invokevirtual 438	java/lang/String:trim	()Ljava/lang/String;
    //   632: astore 59
    //   634: aload 59
    //   636: invokestatic 443	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   639: istore 62
    //   641: iload 62
    //   643: istore 53
    //   645: aload 50
    //   647: invokeinterface 412 1 0
    //   652: ifle +38 -> 690
    //   655: aload_3
    //   656: ldc_w 398
    //   659: new 212	java/lang/StringBuilder
    //   662: dup
    //   663: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   666: aload 41
    //   668: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   671: ldc_w 429
    //   674: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   677: iload 53
    //   679: iconst_1
    //   680: iadd
    //   681: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   684: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   687: invokevirtual 450	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   690: aload 50
    //   692: ifnull +10 -> 702
    //   695: aload 50
    //   697: invokeinterface 92 1 0
    //   702: aload 40
    //   704: astore 5
    //   706: goto -490 -> 216
    //   709: astore 60
    //   711: aload 50
    //   713: invokeinterface 412 1 0
    //   718: istore 61
    //   720: iload 61
    //   722: iconst_1
    //   723: isub
    //   724: istore 53
    //   726: goto -81 -> 645
    //   729: astore 54
    //   731: aload 54
    //   733: invokevirtual 453	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   736: aload 54
    //   738: invokestatic 456	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   741: pop
    //   742: goto -40 -> 702
    //   745: astore 46
    //   747: aload 46
    //   749: invokevirtual 453	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   752: aload 46
    //   754: invokestatic 456	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   757: pop
    //   758: goto -176 -> 582
    //   761: ldc 155
    //   763: astore 4
    //   765: invokestatic 459	com/avast/android/mobilesecurity/h:a	()Landroid/net/Uri;
    //   768: astore 15
    //   770: aload_3
    //   771: ldc_w 398
    //   774: invokevirtual 402	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   777: astore 16
    //   779: aload_0
    //   780: getfield 15	com/avast/android/mobilesecurity/Provider:b	Lcom/avast/android/mobilesecurity/s;
    //   783: invokevirtual 21	com/avast/android/mobilesecurity/s:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   786: astore 17
    //   788: iconst_1
    //   789: anewarray 66	java/lang/String
    //   792: dup
    //   793: iconst_0
    //   794: ldc_w 398
    //   797: aastore
    //   798: astore 18
    //   800: new 212	java/lang/StringBuilder
    //   803: dup
    //   804: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   807: ldc_w 398
    //   810: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   813: ldc_w 404
    //   816: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   819: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   822: astore 23
    //   824: iconst_1
    //   825: anewarray 66	java/lang/String
    //   828: astore 24
    //   830: aload 24
    //   832: iconst_0
    //   833: new 212	java/lang/StringBuilder
    //   836: dup
    //   837: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   840: aload 16
    //   842: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   845: ldc_w 406
    //   848: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   851: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   854: aastore
    //   855: aload 17
    //   857: aload 4
    //   859: aload 18
    //   861: aload 23
    //   863: aload 24
    //   865: aconst_null
    //   866: aconst_null
    //   867: new 212	java/lang/StringBuilder
    //   870: dup
    //   871: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   874: ldc_w 398
    //   877: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   880: ldc_w 408
    //   883: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   886: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   889: invokevirtual 72	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   892: astore 25
    //   894: aload 25
    //   896: ldc_w 398
    //   899: invokeinterface 82 2 0
    //   904: istore 26
    //   906: aload 25
    //   908: invokeinterface 412 1 0
    //   913: istore 27
    //   915: iconst_0
    //   916: istore 28
    //   918: iload 27
    //   920: ifle +120 -> 1040
    //   923: aload 25
    //   925: invokeinterface 415 1 0
    //   930: ifeq +50 -> 980
    //   933: aload 25
    //   935: iload 26
    //   937: invokeinterface 419 2 0
    //   942: invokestatic 424	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   945: pop
    //   946: aload 25
    //   948: iload 26
    //   950: invokeinterface 419 2 0
    //   955: pop
    //   956: goto -33 -> 923
    //   959: astore 19
    //   961: aload 25
    //   963: astore 20
    //   965: aload 20
    //   967: ifnull +10 -> 977
    //   970: aload 20
    //   972: invokeinterface 92 1 0
    //   977: aload 19
    //   979: athrow
    //   980: aload 25
    //   982: invokeinterface 427 1 0
    //   987: pop
    //   988: aload 25
    //   990: iload 26
    //   992: invokeinterface 419 2 0
    //   997: astore 32
    //   999: aload 32
    //   1001: ldc_w 429
    //   1004: invokevirtual 432	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   1007: istore 33
    //   1009: iconst_0
    //   1010: istore 28
    //   1012: iload 33
    //   1014: ifle +26 -> 1040
    //   1017: aload 32
    //   1019: iload 33
    //   1021: invokevirtual 435	java/lang/String:substring	(I)Ljava/lang/String;
    //   1024: invokevirtual 438	java/lang/String:trim	()Ljava/lang/String;
    //   1027: astore 34
    //   1029: aload 34
    //   1031: invokestatic 443	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1034: istore 37
    //   1036: iload 37
    //   1038: istore 28
    //   1040: aload 25
    //   1042: invokeinterface 412 1 0
    //   1047: ifle +38 -> 1085
    //   1050: aload_3
    //   1051: ldc_w 398
    //   1054: new 212	java/lang/StringBuilder
    //   1057: dup
    //   1058: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   1061: aload 16
    //   1063: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1066: ldc_w 429
    //   1069: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1072: iload 28
    //   1074: iconst_1
    //   1075: iadd
    //   1076: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1079: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1082: invokevirtual 450	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1085: aload 25
    //   1087: ifnull +10 -> 1097
    //   1090: aload 25
    //   1092: invokeinterface 92 1 0
    //   1097: aload 15
    //   1099: astore 5
    //   1101: goto -885 -> 216
    //   1104: astore 35
    //   1106: aload 25
    //   1108: invokeinterface 412 1 0
    //   1113: istore 36
    //   1115: iload 36
    //   1117: iconst_1
    //   1118: isub
    //   1119: istore 28
    //   1121: goto -81 -> 1040
    //   1124: astore 29
    //   1126: aload 29
    //   1128: invokevirtual 453	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1131: aload 29
    //   1133: invokestatic 456	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1136: pop
    //   1137: goto -40 -> 1097
    //   1140: astore 21
    //   1142: aload 21
    //   1144: invokevirtual 453	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1147: aload 21
    //   1149: invokestatic 456	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1152: pop
    //   1153: goto -176 -> 977
    //   1156: ldc 159
    //   1158: astore 4
    //   1160: invokestatic 462	com/avast/android/mobilesecurity/r:a	()Landroid/net/Uri;
    //   1163: astore 5
    //   1165: goto -949 -> 216
    //   1168: ldc 163
    //   1170: astore 4
    //   1172: aload_1
    //   1173: invokestatic 268	com/avast/android/mobilesecurity/i:a	(Landroid/net/Uri;)J
    //   1176: lstore 13
    //   1178: lload 13
    //   1180: invokestatic 465	com/avast/android/mobilesecurity/i:a	(J)Landroid/net/Uri;
    //   1183: astore 5
    //   1185: aload_3
    //   1186: ldc_w 467
    //   1189: lload 13
    //   1191: invokestatic 472	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1194: invokevirtual 475	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1197: goto -981 -> 216
    //   1200: ldc_w 277
    //   1203: astore 4
    //   1205: invokestatic 476	com/avast/android/mobilesecurity/k:a	()Landroid/net/Uri;
    //   1208: astore 5
    //   1210: goto -994 -> 216
    //   1213: ldc 179
    //   1215: astore 4
    //   1217: getstatic 481	com/avast/android/mobilesecurity/a:a	Landroid/net/Uri;
    //   1220: invokestatic 486	com/avast/android/generic/e:a	(Landroid/net/Uri;)Landroid/net/Uri;
    //   1223: astore 5
    //   1225: goto -1009 -> 216
    //   1228: ldc 183
    //   1230: astore 4
    //   1232: invokestatic 489	com/avast/android/mobilesecurity/l:a	()Landroid/net/Uri;
    //   1235: astore 5
    //   1237: goto -1021 -> 216
    //   1240: ldc 189
    //   1242: astore 4
    //   1244: invokestatic 492	com/avast/android/mobilesecurity/g:a	()Landroid/net/Uri;
    //   1247: astore 5
    //   1249: goto -1033 -> 216
    //   1252: ldc 197
    //   1254: astore 4
    //   1256: invokestatic 495	com/avast/android/mobilesecurity/n:a	()Landroid/net/Uri;
    //   1259: astore 5
    //   1261: goto -1045 -> 216
    //   1264: ldc 199
    //   1266: astore 4
    //   1268: invokestatic 498	com/avast/android/mobilesecurity/p:a	()Landroid/net/Uri;
    //   1271: astore 5
    //   1273: goto -1057 -> 216
    //   1276: ldc 203
    //   1278: astore 4
    //   1280: invokestatic 501	com/avast/android/mobilesecurity/m:a	()Landroid/net/Uri;
    //   1283: astore 5
    //   1285: goto -1069 -> 216
    //   1288: aload 6
    //   1290: invokevirtual 56	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1293: new 357	android/database/SQLException
    //   1296: dup
    //   1297: new 212	java/lang/StringBuilder
    //   1300: dup
    //   1301: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   1304: ldc_w 503
    //   1307: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1310: aload_1
    //   1311: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1314: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1317: invokespecial 504	android/database/SQLException:<init>	(Ljava/lang/String;)V
    //   1320: athrow
    //   1321: astore 8
    //   1323: new 212	java/lang/StringBuilder
    //   1326: dup
    //   1327: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   1330: ldc_w 503
    //   1333: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1336: aload_1
    //   1337: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1340: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1343: aload 8
    //   1345: invokestatic 506	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1348: pop
    //   1349: aload 6
    //   1351: invokevirtual 56	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1354: goto -61 -> 1293
    //   1357: astore 7
    //   1359: aload 6
    //   1361: invokevirtual 56	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1364: aload 7
    //   1366: athrow
    //   1367: astore 19
    //   1369: aconst_null
    //   1370: astore 20
    //   1372: goto -407 -> 965
    //   1375: astore 44
    //   1377: aconst_null
    //   1378: astore 45
    //   1380: goto -810 -> 570
    //
    // Exception table:
    //   from	to	target	type
    //   499	561	564	finally
    //   585	634	564	finally
    //   634	641	564	finally
    //   645	690	564	finally
    //   711	720	564	finally
    //   634	641	709	java/lang/NumberFormatException
    //   695	702	729	java/lang/Exception
    //   575	582	745	java/lang/Exception
    //   894	956	959	finally
    //   980	1029	959	finally
    //   1029	1036	959	finally
    //   1040	1085	959	finally
    //   1106	1115	959	finally
    //   1029	1036	1104	java/lang/NumberFormatException
    //   1090	1097	1124	java/lang/Exception
    //   970	977	1140	java/lang/Exception
    //   230	284	1321	android/database/SQLException
    //   230	284	1357	finally
    //   1323	1349	1357	finally
    //   788	894	1367	finally
    //   393	499	1375	finally
  }

  public boolean onCreate()
  {
    this.b = s.a(getContext());
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    int i = this.a.match(paramUri);
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    String str1;
    String str2;
    Object localObject1;
    Object localObject2;
    switch (i)
    {
    case 6:
    case 11:
    case 12:
    case 18:
    case 20:
    case 22:
    case 27:
    default:
      throw new IllegalArgumentException("Unsupported uri: " + paramUri);
    case 2:
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
    case 1:
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("results");
      str2 = null;
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      if (!TextUtils.isEmpty(paramString2))
        break;
    case 39:
    case 4:
    case 3:
    case 5:
    case 8:
    case 7:
    case 42:
    case 41:
    case 43:
    case 45:
    case 44:
    case 10:
    case 9:
    case 14:
    case 13:
    case 29:
    case 28:
    case 31:
    case 30:
    case 16:
    case 15:
    case 17:
    case 19:
    case 21:
    case 24:
    case 23:
    case 26:
    case 25:
    case 33:
    case 34:
    case 35:
    case 32:
    case 36:
    case 38:
    case 37:
    case 40:
    }
    for (String str3 = str1; ; str3 = paramString2)
    {
      Cursor localCursor = localSQLiteQueryBuilder.query(this.b.getWritableDatabase(), (String[])localObject2, (String)localObject1, paramArrayOfString2, str2, null, str3);
      localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
      return localCursor;
      String[] arrayOfString6 = { "_id", "packageName", "name", "COUNT(*) AS _count" };
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("results");
      localSQLiteQueryBuilder.setDistinct(true);
      str2 = "packageName, name";
      localObject1 = paramString1;
      localObject2 = arrayOfString6;
      break;
      localSQLiteQueryBuilder.appendWhere("advisorGroups._id = " + paramUri.getLastPathSegment());
      if (!TextUtils.isEmpty(paramString2))
        paramString2 = "advisorGroups." + paramString2;
      HashSet localHashSet2 = new HashSet();
      if (paramArrayOfString1 != null)
        localHashSet2.addAll(Arrays.asList(paramArrayOfString1));
      if ((localHashSet2.isEmpty()) || (localHashSet2.contains("size")))
      {
        localSQLiteQueryBuilder.setTables("advisorGroups LEFT JOIN advisorApps ON (advisorGroups._id = advisorApps.groupId)");
        localHashSet2.clear();
        localHashSet2.add("advisorGroups._id AS _id");
        localHashSet2.add("advisorGroups.name AS name");
        localHashSet2.add("COUNT(advisorApps._id) AS size");
        str2 = "advisorGroups._id";
        String[] arrayOfString5 = (String[])localHashSet2.toArray(new String[localHashSet2.size()]);
        localObject1 = paramString1;
        localObject2 = arrayOfString5;
        str1 = "advisorGroups._id";
        break;
      }
      localSQLiteQueryBuilder.setTables("advisorGroups");
      str1 = "advisorGroups._id";
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("groupId = " + (String)paramUri.getPathSegments().get(1));
      localSQLiteQueryBuilder.setTables("advisorApps");
      str1 = "name COLLATE NOCASE";
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "name COLLATE NOCASE";
      localSQLiteQueryBuilder.setTables("advisorApps");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("adrepGroups._id = " + paramUri.getLastPathSegment());
      if (!TextUtils.isEmpty(paramString2))
        paramString2 = "adrepGroups." + paramString2;
      HashSet localHashSet1 = new HashSet();
      if (paramArrayOfString1 != null)
        localHashSet1.addAll(Arrays.asList(paramArrayOfString1));
      if ((localHashSet1.isEmpty()) || (localHashSet1.contains("size")))
      {
        localSQLiteQueryBuilder.setTables("adrepGroups LEFT JOIN adrepApps ON (adrepGroups._id= adrepApps.groupId)");
        localHashSet1.clear();
        localHashSet1.add("adrepGroups._id AS _id");
        localHashSet1.add("adrepGroups.name AS name");
        localHashSet1.add("COUNT(adrepApps._id) AS size");
        str2 = "adrepGroups._id";
        String[] arrayOfString4 = (String[])localHashSet1.toArray(new String[localHashSet1.size()]);
        localObject1 = paramString1;
        localObject2 = arrayOfString4;
        str1 = "adrepGroups._id";
        break;
      }
      localSQLiteQueryBuilder.setTables("adrepGroups");
      str1 = "adrepGroups._id";
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("groupId = " + (String)paramUri.getPathSegments().get(1));
      localSQLiteQueryBuilder.setTables("adrepApps");
      str1 = "name COLLATE NOCASE";
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "name COLLATE NOCASE";
      localSQLiteQueryBuilder.setTables("adrepApps");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("packageName = '" + paramUri.getLastPathSegment() + "'");
      str1 = "packageName";
      localSQLiteQueryBuilder.setTables("protectApps");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "name";
      localSQLiteQueryBuilder.setTables("filterGroups");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("customRules");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("trafficInfo");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("groupId = " + i.a(paramUri));
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "type DESC,_id";
      localSQLiteQueryBuilder.setTables("filterContacts");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("groupId = " + i.a(paramUri));
      str1 = "type DESC,_id";
      localSQLiteQueryBuilder.setTables("filterContacts");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("filterContacts");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      str1 = "time desc";
      localSQLiteQueryBuilder.setTables("filterLogs");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("groupId = " + k.a(paramUri));
      str1 = "time desc";
      localSQLiteQueryBuilder.setTables("filterLogs");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = " + paramUri.getLastPathSegment());
      str1 = "ongoing desc, timestamp desc ";
      localSQLiteQueryBuilder.setTables("notifications");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("_id = '" + paramUri.getLastPathSegment() + "'");
      str1 = "_id";
      localSQLiteQueryBuilder.setTables("firewall");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      String[] arrayOfString3 = { "TOTAL(infected) AS infected", "TOTAL(scanned) AS scanned", "scan_type" };
      str2 = "scan_type";
      String str6 = "date>= STRFTIME('%s',DATE('now', '-7 days'))";
      if (paramString1 != null)
        str6 = paramString1 + " AND " + str6;
      localSQLiteQueryBuilder.setTables("antivirusActivity");
      localObject1 = str6;
      localObject2 = arrayOfString3;
      str1 = null;
      break;
      String[] arrayOfString2 = { "TOTAL(infected) AS infected", "TOTAL(scanned) AS scanned", "scan_type" };
      str2 = "scan_type";
      String str5 = "date>= STRFTIME('%s',DATE('now', '-1 month'))";
      if (paramString1 != null)
        str5 = paramString1 + " AND " + str5;
      localSQLiteQueryBuilder.setTables("antivirusActivity");
      localObject1 = str5;
      localObject2 = arrayOfString2;
      str1 = null;
      break;
      String[] arrayOfString1 = { "TOTAL(infected) AS infected", "TOTAL(scanned) AS scanned", "scan_type" };
      str2 = "scan_type";
      String str4 = "date>= STRFTIME('%s', DATE('now', '-1 year'))";
      if (paramString1 != null)
        str4 = paramString1 + " AND " + str4;
      localSQLiteQueryBuilder.setTables("antivirusActivity");
      localObject1 = str4;
      localObject2 = arrayOfString1;
      str1 = null;
      break;
      str1 = "date";
      localSQLiteQueryBuilder.setTables("antivirusActivity");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      str1 = "date";
      localSQLiteQueryBuilder.setTables("lastDetectedViruses");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      localSQLiteQueryBuilder.appendWhere("uuid = " + paramUri.getLastPathSegment());
      str1 = "date";
      localSQLiteQueryBuilder.setTables("messagesToScan");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
      str1 = "date";
      localSQLiteQueryBuilder.setTables("globalActivityLog");
      localObject1 = paramString1;
      localObject2 = paramArrayOfString1;
      str2 = null;
      break;
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    String str17;
    switch (this.a.match(paramUri))
    {
    case 5:
    case 6:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 28:
    case 33:
    case 34:
    case 35:
    case 39:
    case 43:
    default:
      throw new IllegalArgumentException("Cannot update: " + paramUri);
    case 2:
      str17 = paramUri.getLastPathSegment();
      if (TextUtils.isEmpty(paramString))
        paramString = "_id = " + str17;
      break;
    case 1:
    case 4:
    case 3:
    case 8:
    case 7:
    case 42:
    case 41:
    case 45:
    case 44:
    case 10:
    case 9:
    case 14:
    case 29:
    case 31:
    case 30:
    case 24:
    case 23:
    case 26:
    case 25:
    case 27:
    case 32:
    case 36:
    case 38:
    case 37:
    case 40:
    }
    while (true)
    {
      String str1 = "results";
      label270: SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i = localSQLiteDatabase.update(str1, paramContentValues, paramString, paramArrayOfString);
        m.c("Provider: update(" + str1 + ":" + paramString + ",count:" + i + ")");
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        if (i > 0)
          getContext().getContentResolver().notifyChange(paramUri, null);
        int j;
        while (true)
        {
          return j;
          paramString = paramString + " and _id = " + str17;
          break;
          String str16 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str16; ; paramString = paramString + " and _id = " + str16)
          {
            str1 = "advisorGroups";
            paramContentValues.remove("size");
            break;
          }
          String str15 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str15; ; paramString = paramString + " and _id = " + str15)
          {
            str1 = "advisorApps";
            break;
          }
          String str14 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str14; ; paramString = paramString + " and _id = " + str14)
          {
            str1 = "adrepGroups";
            paramContentValues.remove("size");
            break;
          }
          String str13 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (paramString = "_id = " + str13; ; paramString = paramString + " and _id = " + str13)
          {
            str1 = "adrepApps";
            break;
          }
          String str11 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (String str12 = "packageName = '" + str11 + "'"; ; str12 = paramString + " and packageName = '" + str11 + "'")
          {
            paramContentValues.put("packageName", str11);
            j = Math.abs(a(paramUri, "protectApps", paramContentValues, str12, paramArrayOfString));
            break;
          }
          str1 = "protectApps";
          break label270;
          str1 = "filterGroups";
          String str10 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString))
          {
            paramString = "_id = " + str10;
            break label270;
          }
          paramString = paramString + " and _id = " + str10;
          break label270;
          str1 = "customRules";
          String str9 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString))
          {
            paramString = "_id = " + str9;
            break label270;
          }
          paramString = paramString + " and _id = " + str9;
          break label270;
          str1 = "trafficInfo";
          String str8 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString))
          {
            paramString = "_id = " + str8;
            break label270;
          }
          paramString = paramString + " and _id = " + str8;
          break label270;
          str1 = "trafficInfo";
          break label270;
          String str6 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (String str7 = "_id = '" + str6 + "'"; ; str7 = paramString + " and _id = '" + str6 + "'")
          {
            paramContentValues.put("_id", str6);
            j = a(paramUri, "notifications", paramContentValues, str7, paramArrayOfString);
            break;
          }
          str1 = "notifications";
          break label270;
          String str4 = paramUri.getLastPathSegment();
          if (TextUtils.isEmpty(paramString));
          for (String str5 = "_id = '" + str4 + "'"; ; str5 = paramString + " and _id = '" + str4 + "'")
          {
            paramContentValues.put("_id", str4);
            j = Math.abs(a(paramUri, "firewall", paramContentValues, str5, paramArrayOfString));
            break;
          }
          str1 = "firewall";
          break label270;
          Uri localUri = q.a();
          String[] arrayOfString = new String[1];
          arrayOfString[0] = paramContentValues.getAsString("packageName");
          j = a(localUri, "results", paramContentValues, "packageName = ?", arrayOfString);
          continue;
          j = a(paramUri, "antivirusActivity", paramContentValues, paramString, paramArrayOfString);
          continue;
          j = a(paramUri, "lastDetectedViruses", paramContentValues, paramString, paramArrayOfString);
        }
        String str2 = paramUri.getLastPathSegment();
        if (TextUtils.isEmpty(paramString));
        for (String str3 = "uuid = '" + str2 + "'"; ; str3 = paramString + " and uuid = '" + str2 + "'")
        {
          paramContentValues.put("uuid", str2);
          j = Math.abs(a(paramUri, "messagesToScan", paramContentValues, str3, paramArrayOfString));
          break;
        }
        str1 = "messagesToScan";
        break label270;
        str1 = "globalActivityLog";
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.Provider
 * JD-Core Version:    0.6.2
 */