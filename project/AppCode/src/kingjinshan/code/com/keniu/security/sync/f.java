package com.keniu.security.sync;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.Build;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.CommonDataKinds.StructuredPostal;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;

public final class f extends d
{
  private ContentResolver a;

  public final ContentResolver a()
  {
    return this.a;
  }

  public final String a(String paramString)
  {
    Cursor localCursor = this.a.query(ContactsContract.Contacts.CONTENT_URI, null, "display_name =  '" + paramString + "'", null, null);
    for (String str = "-1"; localCursor.moveToNext(); str = localCursor.getString(localCursor.getColumnIndex("_id")));
    localCursor.close();
    return str;
  }

  public final String a(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.query(ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI, null, "contact_id = ? and data1 = ? ", new String[] { paramString1, paramString2 }, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  public final String a(String paramString1, String paramString2, String paramString3)
  {
    String[] arrayOfString = { paramString1, "vnd.android.cursor.item/organization", paramString2, paramString3 };
    Cursor localCursor = this.a.query(ContactsContract.Data.CONTENT_URI, null, "contact_id = ? and mimetype = ? and data1 = ? and data4 = ? ", arrayOfString, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  // ERROR //
  public final org.json.JSONObject a(Cursor paramCursor)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_1
    //   2: ldc 83
    //   4: invokeinterface 55 2 0
    //   9: invokeinterface 59 2 0
    //   14: astore 6
    //   16: aload 6
    //   18: ifnull +1406 -> 1424
    //   21: aload 6
    //   23: ldc 85
    //   25: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   28: ifeq +6 -> 34
    //   31: goto +1393 -> 1424
    //   34: new 91	org/json/JSONObject
    //   37: dup
    //   38: invokespecial 92	org/json/JSONObject:<init>	()V
    //   41: astore 7
    //   43: aload 7
    //   45: ldc 94
    //   47: aload 6
    //   49: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   52: pop
    //   53: aload_1
    //   54: aload_1
    //   55: ldc 51
    //   57: invokeinterface 55 2 0
    //   62: invokeinterface 59 2 0
    //   67: astore 9
    //   69: aload 7
    //   71: ldc 100
    //   73: aload 9
    //   75: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   78: pop
    //   79: aload_1
    //   80: aload_1
    //   81: ldc 102
    //   83: invokeinterface 55 2 0
    //   88: invokeinterface 59 2 0
    //   93: ldc 104
    //   95: invokevirtual 107	java/lang/String:compareTo	(Ljava/lang/String;)I
    //   98: ifne +242 -> 340
    //   101: aload_0
    //   102: getfield 13	com/keniu/security/sync/f:a	Landroid/content/ContentResolver;
    //   105: getstatic 110	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
    //   108: aconst_null
    //   109: new 22	java/lang/StringBuilder
    //   112: dup
    //   113: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   116: ldc 112
    //   118: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload 9
    //   123: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: aconst_null
    //   130: aconst_null
    //   131: invokevirtual 41	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   134: astore 45
    //   136: ldc 85
    //   138: astore 46
    //   140: ldc 85
    //   142: astore 47
    //   144: aload 45
    //   146: invokeinterface 49 1 0
    //   151: ifeq +124 -> 275
    //   154: aload 45
    //   156: aload 45
    //   158: ldc 114
    //   160: invokeinterface 55 2 0
    //   165: invokeinterface 59 2 0
    //   170: astore 50
    //   172: aload 50
    //   174: ifnull -30 -> 144
    //   177: aload 50
    //   179: ldc 85
    //   181: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   184: ifne -40 -> 144
    //   187: aload 50
    //   189: invokevirtual 117	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   192: ldc 119
    //   194: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   197: ifne -53 -> 144
    //   200: aload 45
    //   202: aload 45
    //   204: ldc 121
    //   206: invokeinterface 55 2 0
    //   211: invokeinterface 59 2 0
    //   216: astore 51
    //   218: new 22	java/lang/StringBuilder
    //   221: dup
    //   222: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   225: aload 47
    //   227: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: aload 50
    //   232: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: ldc 123
    //   237: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: astore 47
    //   245: new 22	java/lang/StringBuilder
    //   248: dup
    //   249: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   252: aload 46
    //   254: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: aload 51
    //   259: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: ldc 123
    //   264: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: astore 46
    //   272: goto -128 -> 144
    //   275: aload 45
    //   277: invokeinterface 62 1 0
    //   282: aload 47
    //   284: invokevirtual 127	java/lang/String:length	()I
    //   287: ifle +24 -> 311
    //   290: aload 7
    //   292: ldc 129
    //   294: aload 47
    //   296: iconst_0
    //   297: aload 47
    //   299: invokevirtual 127	java/lang/String:length	()I
    //   302: iconst_1
    //   303: isub
    //   304: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   307: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   310: pop
    //   311: aload 46
    //   313: invokevirtual 127	java/lang/String:length	()I
    //   316: ifle +24 -> 340
    //   319: aload 7
    //   321: ldc 135
    //   323: aload 46
    //   325: iconst_0
    //   326: aload 46
    //   328: invokevirtual 127	java/lang/String:length	()I
    //   331: iconst_1
    //   332: isub
    //   333: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   336: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   339: pop
    //   340: aload_0
    //   341: getfield 13	com/keniu/security/sync/f:a	Landroid/content/ContentResolver;
    //   344: getstatic 138	android/provider/ContactsContract$CommonDataKinds$Email:CONTENT_URI	Landroid/net/Uri;
    //   347: aconst_null
    //   348: new 22	java/lang/StringBuilder
    //   351: dup
    //   352: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   355: ldc 112
    //   357: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: aload 9
    //   362: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: aconst_null
    //   369: aconst_null
    //   370: invokevirtual 41	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   373: astore 11
    //   375: ldc 85
    //   377: astore 12
    //   379: ldc 85
    //   381: astore 13
    //   383: aload 11
    //   385: invokeinterface 49 1 0
    //   390: ifeq +124 -> 514
    //   393: aload 11
    //   395: aload 11
    //   397: ldc 114
    //   399: invokeinterface 55 2 0
    //   404: invokeinterface 59 2 0
    //   409: astore 43
    //   411: aload 43
    //   413: ifnull -30 -> 383
    //   416: aload 43
    //   418: ldc 85
    //   420: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   423: ifne -40 -> 383
    //   426: aload 43
    //   428: invokevirtual 117	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   431: ldc 119
    //   433: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   436: ifne -53 -> 383
    //   439: aload 11
    //   441: aload 11
    //   443: ldc 121
    //   445: invokeinterface 55 2 0
    //   450: invokeinterface 59 2 0
    //   455: astore 44
    //   457: new 22	java/lang/StringBuilder
    //   460: dup
    //   461: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   464: aload 13
    //   466: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: aload 43
    //   471: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: ldc 123
    //   476: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   482: astore 13
    //   484: new 22	java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   491: aload 12
    //   493: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: aload 44
    //   498: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: ldc 123
    //   503: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: astore 12
    //   511: goto -128 -> 383
    //   514: aload 11
    //   516: invokeinterface 62 1 0
    //   521: aload 13
    //   523: invokevirtual 127	java/lang/String:length	()I
    //   526: ifle +24 -> 550
    //   529: aload 7
    //   531: ldc 140
    //   533: aload 13
    //   535: iconst_0
    //   536: aload 13
    //   538: invokevirtual 127	java/lang/String:length	()I
    //   541: iconst_1
    //   542: isub
    //   543: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   546: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   549: pop
    //   550: aload 12
    //   552: invokevirtual 127	java/lang/String:length	()I
    //   555: ifle +24 -> 579
    //   558: aload 7
    //   560: ldc 142
    //   562: aload 12
    //   564: iconst_0
    //   565: aload 12
    //   567: invokevirtual 127	java/lang/String:length	()I
    //   570: iconst_1
    //   571: isub
    //   572: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   575: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   578: pop
    //   579: aload_0
    //   580: getfield 13	com/keniu/security/sync/f:a	Landroid/content/ContentResolver;
    //   583: getstatic 66	android/provider/ContactsContract$CommonDataKinds$StructuredPostal:CONTENT_URI	Landroid/net/Uri;
    //   586: aconst_null
    //   587: new 22	java/lang/StringBuilder
    //   590: dup
    //   591: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   594: ldc 112
    //   596: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   599: aload 9
    //   601: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   604: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   607: aconst_null
    //   608: aconst_null
    //   609: invokevirtual 41	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   612: astore 14
    //   614: ldc 85
    //   616: astore 15
    //   618: ldc 85
    //   620: astore 16
    //   622: ldc 85
    //   624: astore 17
    //   626: aload 14
    //   628: invokeinterface 49 1 0
    //   633: ifeq +349 -> 982
    //   636: aload 14
    //   638: aload 14
    //   640: ldc 114
    //   642: invokeinterface 55 2 0
    //   647: invokeinterface 59 2 0
    //   652: astore 32
    //   654: aload 32
    //   656: ifnull -30 -> 626
    //   659: aload 32
    //   661: ldc 85
    //   663: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   666: ifne -40 -> 626
    //   669: aload 32
    //   671: invokevirtual 117	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   674: ldc 119
    //   676: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   679: ifne -53 -> 626
    //   682: aload 14
    //   684: aload 14
    //   686: ldc 121
    //   688: invokeinterface 55 2 0
    //   693: invokeinterface 59 2 0
    //   698: astore 33
    //   700: aload 14
    //   702: aload 14
    //   704: ldc 144
    //   706: invokeinterface 55 2 0
    //   711: invokeinterface 59 2 0
    //   716: astore 34
    //   718: aload 14
    //   720: aload 14
    //   722: ldc 146
    //   724: invokeinterface 55 2 0
    //   729: invokeinterface 59 2 0
    //   734: astore 35
    //   736: aload 14
    //   738: aload 14
    //   740: ldc 148
    //   742: invokeinterface 55 2 0
    //   747: invokeinterface 59 2 0
    //   752: astore 36
    //   754: aload 14
    //   756: aload 14
    //   758: ldc 150
    //   760: invokeinterface 55 2 0
    //   765: invokeinterface 59 2 0
    //   770: astore 37
    //   772: aload 14
    //   774: aload 14
    //   776: ldc 152
    //   778: invokeinterface 55 2 0
    //   783: invokeinterface 59 2 0
    //   788: astore 38
    //   790: aload 14
    //   792: aload 14
    //   794: ldc 154
    //   796: invokeinterface 55 2 0
    //   801: invokeinterface 59 2 0
    //   806: astore 39
    //   808: aload 14
    //   810: aload 14
    //   812: ldc 156
    //   814: invokeinterface 55 2 0
    //   819: invokeinterface 59 2 0
    //   824: astore 40
    //   826: aload 34
    //   828: ifnonnull +602 -> 1430
    //   831: ldc 85
    //   833: astore 34
    //   835: goto +595 -> 1430
    //   838: new 22	java/lang/StringBuilder
    //   841: dup
    //   842: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   845: aload 17
    //   847: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   850: aload 34
    //   852: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: ldc 158
    //   857: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   860: aload 35
    //   862: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: ldc 158
    //   867: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   870: aload 36
    //   872: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   875: ldc 158
    //   877: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   880: aload 37
    //   882: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   885: ldc 158
    //   887: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   890: aload 38
    //   892: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: ldc 158
    //   897: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   900: aload 39
    //   902: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   905: ldc 158
    //   907: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   910: aload 40
    //   912: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   915: ldc 123
    //   917: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   920: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   923: astore 17
    //   925: new 22	java/lang/StringBuilder
    //   928: dup
    //   929: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   932: aload 16
    //   934: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   937: aload 32
    //   939: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   942: ldc 123
    //   944: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   947: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   950: astore 16
    //   952: new 22	java/lang/StringBuilder
    //   955: dup
    //   956: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   959: aload 15
    //   961: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   964: aload 33
    //   966: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   969: ldc 123
    //   971: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   974: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   977: astore 15
    //   979: goto -353 -> 626
    //   982: aload 14
    //   984: invokeinterface 62 1 0
    //   989: aload 16
    //   991: invokevirtual 127	java/lang/String:length	()I
    //   994: ifle +53 -> 1047
    //   997: aload 7
    //   999: ldc 160
    //   1001: aload 16
    //   1003: iconst_0
    //   1004: aload 16
    //   1006: invokevirtual 127	java/lang/String:length	()I
    //   1009: iconst_1
    //   1010: isub
    //   1011: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1014: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1017: pop
    //   1018: aload 17
    //   1020: invokevirtual 127	java/lang/String:length	()I
    //   1023: ifle +24 -> 1047
    //   1026: aload 7
    //   1028: ldc 162
    //   1030: aload 17
    //   1032: iconst_0
    //   1033: aload 17
    //   1035: invokevirtual 127	java/lang/String:length	()I
    //   1038: iconst_1
    //   1039: isub
    //   1040: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1043: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1046: pop
    //   1047: aload 15
    //   1049: invokevirtual 127	java/lang/String:length	()I
    //   1052: ifle +24 -> 1076
    //   1055: aload 7
    //   1057: ldc 164
    //   1059: aload 15
    //   1061: iconst_0
    //   1062: aload 15
    //   1064: invokevirtual 127	java/lang/String:length	()I
    //   1067: iconst_1
    //   1068: isub
    //   1069: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1072: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1075: pop
    //   1076: iconst_2
    //   1077: anewarray 70	java/lang/String
    //   1080: dup
    //   1081: iconst_0
    //   1082: aload 9
    //   1084: aastore
    //   1085: dup
    //   1086: iconst_1
    //   1087: ldc 73
    //   1089: aastore
    //   1090: astore 18
    //   1092: aload_0
    //   1093: getfield 13	com/keniu/security/sync/f:a	Landroid/content/ContentResolver;
    //   1096: getstatic 76	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1099: aconst_null
    //   1100: ldc 166
    //   1102: aload 18
    //   1104: aconst_null
    //   1105: invokevirtual 41	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1108: astore 19
    //   1110: ldc 85
    //   1112: astore 20
    //   1114: ldc 85
    //   1116: astore 21
    //   1118: ldc 85
    //   1120: astore 22
    //   1122: aload 19
    //   1124: invokeinterface 49 1 0
    //   1129: ifeq +169 -> 1298
    //   1132: aload 19
    //   1134: aload 19
    //   1136: ldc 114
    //   1138: invokeinterface 55 2 0
    //   1143: invokeinterface 59 2 0
    //   1148: astore 26
    //   1150: aload 26
    //   1152: ifnull -30 -> 1122
    //   1155: aload 26
    //   1157: ldc 85
    //   1159: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1162: ifne -40 -> 1122
    //   1165: aload 26
    //   1167: invokevirtual 117	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1170: ldc 119
    //   1172: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1175: ifne -53 -> 1122
    //   1178: aload 19
    //   1180: aload 19
    //   1182: ldc 144
    //   1184: invokeinterface 55 2 0
    //   1189: invokeinterface 59 2 0
    //   1194: astore 27
    //   1196: aload 19
    //   1198: aload 19
    //   1200: ldc 121
    //   1202: invokeinterface 55 2 0
    //   1207: invokeinterface 59 2 0
    //   1212: astore 28
    //   1214: new 22	java/lang/StringBuilder
    //   1217: dup
    //   1218: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   1221: aload 22
    //   1223: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1226: aload 26
    //   1228: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1231: ldc 123
    //   1233: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1236: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1239: astore 22
    //   1241: new 22	java/lang/StringBuilder
    //   1244: dup
    //   1245: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   1248: aload 21
    //   1250: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1253: aload 27
    //   1255: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1258: ldc 123
    //   1260: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1263: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1266: astore 21
    //   1268: new 22	java/lang/StringBuilder
    //   1271: dup
    //   1272: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   1275: aload 20
    //   1277: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1280: aload 28
    //   1282: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1285: ldc 123
    //   1287: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1290: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1293: astore 20
    //   1295: goto -173 -> 1122
    //   1298: aload 19
    //   1300: invokeinterface 62 1 0
    //   1305: aload 22
    //   1307: invokevirtual 127	java/lang/String:length	()I
    //   1310: ifle +24 -> 1334
    //   1313: aload 7
    //   1315: ldc 168
    //   1317: aload 22
    //   1319: iconst_0
    //   1320: aload 22
    //   1322: invokevirtual 127	java/lang/String:length	()I
    //   1325: iconst_1
    //   1326: isub
    //   1327: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1330: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1333: pop
    //   1334: aload 21
    //   1336: invokevirtual 127	java/lang/String:length	()I
    //   1339: ifle +24 -> 1363
    //   1342: aload 7
    //   1344: ldc 170
    //   1346: aload 21
    //   1348: iconst_0
    //   1349: aload 21
    //   1351: invokevirtual 127	java/lang/String:length	()I
    //   1354: iconst_1
    //   1355: isub
    //   1356: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1359: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1362: pop
    //   1363: aload 20
    //   1365: invokevirtual 127	java/lang/String:length	()I
    //   1368: ifle +24 -> 1392
    //   1371: aload 7
    //   1373: ldc 172
    //   1375: aload 20
    //   1377: iconst_0
    //   1378: aload 20
    //   1380: invokevirtual 127	java/lang/String:length	()I
    //   1383: iconst_1
    //   1384: isub
    //   1385: invokevirtual 133	java/lang/String:substring	(II)Ljava/lang/String;
    //   1388: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1391: pop
    //   1392: aload 7
    //   1394: astore 5
    //   1396: goto +31 -> 1427
    //   1399: astore_2
    //   1400: aconst_null
    //   1401: astore_3
    //   1402: aload_2
    //   1403: astore 4
    //   1405: aload 4
    //   1407: invokevirtual 175	java/lang/Exception:printStackTrace	()V
    //   1410: aload_3
    //   1411: astore 5
    //   1413: goto +14 -> 1427
    //   1416: astore 4
    //   1418: aload 7
    //   1420: astore_3
    //   1421: goto -16 -> 1405
    //   1424: aconst_null
    //   1425: astore 5
    //   1427: aload 5
    //   1429: areturn
    //   1430: aload 35
    //   1432: ifnonnull +7 -> 1439
    //   1435: ldc 85
    //   1437: astore 35
    //   1439: aload 36
    //   1441: ifnonnull +7 -> 1448
    //   1444: ldc 85
    //   1446: astore 36
    //   1448: aload 37
    //   1450: ifnonnull +7 -> 1457
    //   1453: ldc 85
    //   1455: astore 37
    //   1457: aload 38
    //   1459: ifnonnull +7 -> 1466
    //   1462: ldc 85
    //   1464: astore 38
    //   1466: aload 39
    //   1468: ifnonnull +7 -> 1475
    //   1471: ldc 85
    //   1473: astore 39
    //   1475: aload 40
    //   1477: ifnonnull -639 -> 838
    //   1480: ldc 85
    //   1482: astore 40
    //   1484: goto -646 -> 838
    //
    // Exception table:
    //   from	to	target	type
    //   0	43	1399	java/lang/Exception
    //   43	1392	1416	java/lang/Exception
  }

  public final void a(long paramLong, String paramString1, String paramString2)
  {
    if ((paramString1.equals("")) || (paramString2.equals("")));
    while (true)
    {
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("raw_contact_id", Long.valueOf(paramLong));
      localContentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
      localContentValues.put("data1", paramString1);
      localContentValues.put("data2", paramString2);
      this.a.insert(ContactsContract.Data.CONTENT_URI, localContentValues);
    }
  }

  public final void a(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals("")) || (paramString2.equals("")));
    while (true)
    {
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("raw_contact_id", Long.valueOf(paramLong));
      localContentValues.put("mimetype", "vnd.android.cursor.item/postal-address_v2");
      localContentValues.put("data2", paramString2);
      if ((paramString3 != null) && (!paramString3.equals("")))
      {
        String[] arrayOfString = paramString3.split(":");
        if (arrayOfString.length >= 6)
        {
          if ((arrayOfString[0] != null) && (!arrayOfString[0].equals("")))
            localContentValues.put("data4", arrayOfString[0]);
          if ((arrayOfString[1] != null) && (!arrayOfString[1].equals("")))
            localContentValues.put("data5", arrayOfString[1]);
          if ((arrayOfString[2] != null) && (!arrayOfString[2].equals("")))
            localContentValues.put("data6", arrayOfString[2]);
          if ((arrayOfString[3] != null) && (!arrayOfString[3].equals("")))
            localContentValues.put("data7", arrayOfString[3]);
          if ((arrayOfString[4] != null) && (!arrayOfString[4].equals("")))
            localContentValues.put("data8", arrayOfString[4]);
          if ((arrayOfString[5] != null) && (!arrayOfString[5].equals("")))
            localContentValues.put("data9", arrayOfString[5]);
        }
        if ((arrayOfString.length > 6) && (arrayOfString[6] != null) && (!arrayOfString[6].equals("")))
          localContentValues.put("data10", arrayOfString[6]);
      }
      this.a.insert(ContactsContract.Data.CONTENT_URI, localContentValues);
    }
  }

  public final void a(ContentResolver paramContentResolver)
  {
    this.a = paramContentResolver;
  }

  public final void a(g paramg)
  {
    if ((paramg.e() != null) && (!paramg.e().equals("")));
    for (long l = b(paramg.e()); ; l = -1L)
    {
      if (l == -1L);
      do
      {
        return;
        if ((paramg.i() != null) && (!paramg.i().equals("")) && (paramg.k() != null))
        {
          String[] arrayOfString9 = paramg.i().split(";");
          String[] arrayOfString10 = paramg.k().split(";");
          if (arrayOfString9.length <= arrayOfString10.length);
          for (int i2 = arrayOfString9.length; ; i2 = arrayOfString10.length)
            for (int i3 = 0; i3 < i2; i3++)
              a(l, arrayOfString9[i3], arrayOfString10[i3]);
        }
        if ((paramg.g() != null) && (!paramg.g().equals("")) && (paramg.j() != null))
        {
          String[] arrayOfString7 = paramg.g().split(";");
          String[] arrayOfString8 = paramg.j().split(";");
          if (arrayOfString7.length <= arrayOfString8.length);
          for (int n = arrayOfString7.length; ; n = arrayOfString8.length)
            for (int i1 = 0; i1 < n; i1++)
              b(l, arrayOfString7[i1], arrayOfString8[i1]);
        }
        if ((paramg.f() != null) && (!paramg.f().equals("")) && (paramg.d() != null))
        {
          String[] arrayOfString4 = paramg.f().split(";");
          String[] arrayOfString5 = paramg.d().split(";");
          String[] arrayOfString6 = paramg.a().split(";");
          if (arrayOfString4.length <= arrayOfString5.length);
          for (int k = arrayOfString4.length; ; k = arrayOfString5.length)
            for (int m = 0; m < k; m++)
              a(l, arrayOfString4[m], arrayOfString5[m], arrayOfString6[m]);
        }
      }
      while ((paramg.h() == null) || (paramg.h().equals("")) || (paramg.b() == null));
      String[] arrayOfString1 = paramg.h().split(";");
      String[] arrayOfString2 = paramg.b().split(";");
      String[] arrayOfString3 = paramg.c().split(";");
      if (arrayOfString1.length <= arrayOfString2.length);
      for (int i = arrayOfString1.length; ; i = arrayOfString2.length)
      {
        for (int j = 0; j < i; j++)
          b(l, arrayOfString1[j], arrayOfString2[j], arrayOfString3[j]);
        break;
      }
    }
  }

  public final long b(String paramString)
  {
    long l1;
    if ((paramString == null) || (paramString.equals("")))
    {
      l1 = -1L;
      return l1;
    }
    ContentValues localContentValues = new ContentValues();
    long l2 = ContentUris.parseId(this.a.insert(ContactsContract.RawContacts.CONTENT_URI, localContentValues));
    localContentValues.put("raw_contact_id", Long.valueOf(l2));
    localContentValues.put("mimetype", "vnd.android.cursor.item/name");
    if (Build.MODEL.contains("ZTE-T"))
      localContentValues.put("data2", paramString);
    while (true)
    {
      this.a.insert(ContactsContract.Data.CONTENT_URI, localContentValues);
      l1 = l2;
      break;
      localContentValues.put("data1", paramString);
    }
  }

  public final Cursor b()
  {
    return this.a.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
  }

  public final String b(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id = ? and data1 = ? ", new String[] { paramString1, paramString2 }, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  public final void b(long paramLong, String paramString1, String paramString2)
  {
    if ((paramString1.equals("")) || (paramString1.equals("")));
    while (true)
    {
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("raw_contact_id", Long.valueOf(paramLong));
      localContentValues.put("mimetype", "vnd.android.cursor.item/email_v2");
      localContentValues.put("data1", paramString1);
      localContentValues.put("data2", paramString2);
      this.a.insert(ContactsContract.Data.CONTENT_URI, localContentValues);
    }
  }

  public final void b(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals("")) || (paramString1.equals("")));
    while (true)
    {
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("raw_contact_id", Long.valueOf(paramLong));
      localContentValues.put("mimetype", "vnd.android.cursor.item/organization");
      localContentValues.put("data1", paramString1);
      localContentValues.put("data4", paramString2);
      localContentValues.put("data2", paramString3);
      this.a.insert(ContactsContract.Data.CONTENT_URI, localContentValues);
    }
  }

  public final String c(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, "contact_id = ? and data1 = ? ", new String[] { paramString1, paramString2 }, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.f
 * JD-Core Version:    0.6.2
 */