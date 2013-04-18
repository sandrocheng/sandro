package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

final class er extends AsyncTask
{
  SQLiteDatabase a = null;
  boolean b = false;

  private er(SmsBackupActivity paramSmsBackupActivity, byte paramByte)
  {
  }

  private void a(Integer paramInteger)
  {
    SmsBackupActivity.a(this.c).setVisibility(4);
    SmsBackupActivity.b(this.c).setEnabled(true);
    SmsBackupActivity.c(this.c).setEnabled(true);
    if (paramInteger.intValue() >= 0)
      SmsBackupActivity.d(this.c).setText(this.c.getString(2131427733, new Object[] { paramInteger }));
    while (true)
    {
      if (this.a != null)
      {
        this.a.close();
        this.a = null;
      }
      SmsBackupActivity.a(this.c, 0);
      SmsBackupActivity.f(this.c);
      return;
      SmsBackupActivity.d(this.c).setText(2131427734);
    }
  }

  private void a(Integer[] paramArrayOfInteger)
  {
    TextView localTextView = SmsBackupActivity.d(this.c);
    SmsBackupActivity localSmsBackupActivity = this.c;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = (paramArrayOfInteger[1] + "/" + paramArrayOfInteger[0]);
    localTextView.setText(localSmsBackupActivity.getString(2131427730, arrayOfObject));
  }

  private static boolean a(ContentResolver paramContentResolver, ContentValues paramContentValues)
  {
    String str1 = paramContentValues.getAsString("address");
    if (TextUtils.isEmpty(str1))
      str1 = "";
    String str2 = paramContentValues.getAsString("date");
    if (TextUtils.isEmpty(str2))
      str2 = "";
    String[] arrayOfString = { str1, str2 };
    Cursor localCursor = paramContentResolver.query(t.a, new String[] { "_id" }, "address =? and date=? and type <> 3", arrayOfString, null);
    int j;
    if (localCursor != null)
    {
      j = localCursor.getCount();
      localCursor.close();
    }
    for (int i = j; ; i = 0)
    {
      if (i > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }

  // ERROR //
  private Integer b()
  {
    // Byte code:
    //   0: invokestatic 153	com/ijinshan/kinghelper/a/j:b	()Z
    //   3: ifne +35 -> 38
    //   6: aload_0
    //   7: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   10: astore 63
    //   12: new 155	com/ijinshan/kinghelper/firewall/es
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 158	com/ijinshan/kinghelper/firewall/es:<init>	(Lcom/ijinshan/kinghelper/firewall/er;)V
    //   20: astore 64
    //   22: aload 63
    //   24: aload 64
    //   26: invokevirtual 162	com/ijinshan/kinghelper/firewall/SmsBackupActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   29: iconst_m1
    //   30: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   33: astore 7
    //   35: aload 7
    //   37: areturn
    //   38: new 168	java/io/File
    //   41: dup
    //   42: new 88	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   49: invokestatic 174	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   52: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   55: ldc 176
    //   57: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   66: astore_1
    //   67: aload_1
    //   68: invokevirtual 182	java/io/File:exists	()Z
    //   71: ifeq +8 -> 79
    //   74: aload_1
    //   75: invokevirtual 185	java/io/File:delete	()Z
    //   78: pop
    //   79: new 168	java/io/File
    //   82: dup
    //   83: invokestatic 187	com/ijinshan/kinghelper/firewall/SmsBackupActivity:b	()Ljava/lang/String;
    //   86: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   89: astore_2
    //   90: aload_2
    //   91: invokevirtual 182	java/io/File:exists	()Z
    //   94: ifeq +48 -> 142
    //   97: aload_2
    //   98: aload_1
    //   99: invokestatic 190	com/ijinshan/kinghelper/a/j:b	(Ljava/io/File;Ljava/io/File;)Z
    //   102: ifne +69 -> 171
    //   105: aload_0
    //   106: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   109: astore 59
    //   111: new 192	com/ijinshan/kinghelper/firewall/et
    //   114: dup
    //   115: aload_0
    //   116: invokespecial 193	com/ijinshan/kinghelper/firewall/et:<init>	(Lcom/ijinshan/kinghelper/firewall/er;)V
    //   119: astore 60
    //   121: aload 59
    //   123: aload 60
    //   125: invokevirtual 162	com/ijinshan/kinghelper/firewall/SmsBackupActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   128: aload_1
    //   129: invokevirtual 185	java/io/File:delete	()Z
    //   132: pop
    //   133: iconst_m1
    //   134: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   137: astore 7
    //   139: goto -104 -> 35
    //   142: new 168	java/io/File
    //   145: dup
    //   146: invokestatic 195	com/ijinshan/kinghelper/firewall/SmsBackupActivity:a	()Ljava/lang/String;
    //   149: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   152: astore_3
    //   153: aload_3
    //   154: invokevirtual 182	java/io/File:exists	()Z
    //   157: ifeq +107 -> 264
    //   160: aload_0
    //   161: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   164: pop
    //   165: aload_3
    //   166: aload_1
    //   167: invokestatic 197	com/ijinshan/kinghelper/firewall/SmsBackupActivity:a	(Ljava/io/File;Ljava/io/File;)Z
    //   170: pop
    //   171: aload_0
    //   172: aload_1
    //   173: invokevirtual 200	java/io/File:getPath	()Ljava/lang/String;
    //   176: aconst_null
    //   177: iconst_1
    //   178: invokestatic 204	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   181: putfield 22	com/ijinshan/kinghelper/firewall/er:a	Landroid/database/sqlite/SQLiteDatabase;
    //   184: aload_0
    //   185: getfield 22	com/ijinshan/kinghelper/firewall/er:a	Landroid/database/sqlite/SQLiteDatabase;
    //   188: ldc 206
    //   190: aconst_null
    //   191: aconst_null
    //   192: aconst_null
    //   193: aconst_null
    //   194: aconst_null
    //   195: ldc 208
    //   197: invokevirtual 211	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   200: astore 16
    //   202: aload_0
    //   203: getfield 22	com/ijinshan/kinghelper/firewall/er:a	Landroid/database/sqlite/SQLiteDatabase;
    //   206: ldc 213
    //   208: aconst_null
    //   209: aconst_null
    //   210: aconst_null
    //   211: aconst_null
    //   212: aconst_null
    //   213: aconst_null
    //   214: invokevirtual 211	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   217: astore 18
    //   219: aload_0
    //   220: getfield 24	com/ijinshan/kinghelper/firewall/er:b	Z
    //   223: ifeq +151 -> 374
    //   226: aload 16
    //   228: ifnull +10 -> 238
    //   231: aload 16
    //   233: invokeinterface 145 1 0
    //   238: aload 18
    //   240: ifnull +10 -> 250
    //   243: aload 18
    //   245: invokeinterface 145 1 0
    //   250: aload_1
    //   251: invokevirtual 185	java/io/File:delete	()Z
    //   254: pop
    //   255: iconst_m1
    //   256: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   259: astore 7
    //   261: goto -226 -> 35
    //   264: aload_0
    //   265: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   268: astore 4
    //   270: new 215	com/ijinshan/kinghelper/firewall/eu
    //   273: dup
    //   274: aload_0
    //   275: invokespecial 216	com/ijinshan/kinghelper/firewall/eu:<init>	(Lcom/ijinshan/kinghelper/firewall/er;)V
    //   278: astore 5
    //   280: aload 4
    //   282: aload 5
    //   284: invokevirtual 162	com/ijinshan/kinghelper/firewall/SmsBackupActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   287: aload_1
    //   288: invokevirtual 185	java/io/File:delete	()Z
    //   291: pop
    //   292: iconst_m1
    //   293: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   296: astore 7
    //   298: goto -263 -> 35
    //   301: astore 10
    //   303: aconst_null
    //   304: astore 11
    //   306: aload_0
    //   307: getfield 22	com/ijinshan/kinghelper/firewall/er:a	Landroid/database/sqlite/SQLiteDatabase;
    //   310: ifnull +10 -> 320
    //   313: aload_0
    //   314: getfield 22	com/ijinshan/kinghelper/firewall/er:a	Landroid/database/sqlite/SQLiteDatabase;
    //   317: invokevirtual 75	android/database/sqlite/SQLiteDatabase:close	()V
    //   320: aload 11
    //   322: ifnull +10 -> 332
    //   325: aload 11
    //   327: invokeinterface 145 1 0
    //   332: aload_1
    //   333: invokevirtual 185	java/io/File:delete	()Z
    //   336: pop
    //   337: aload_0
    //   338: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   341: astore 13
    //   343: new 218	com/ijinshan/kinghelper/firewall/ev
    //   346: dup
    //   347: aload_0
    //   348: invokespecial 219	com/ijinshan/kinghelper/firewall/ev:<init>	(Lcom/ijinshan/kinghelper/firewall/er;)V
    //   351: astore 14
    //   353: aload 13
    //   355: aload 14
    //   357: invokevirtual 162	com/ijinshan/kinghelper/firewall/SmsBackupActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   360: aload_1
    //   361: invokevirtual 185	java/io/File:delete	()Z
    //   364: pop
    //   365: iconst_m1
    //   366: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   369: astore 7
    //   371: goto -336 -> 35
    //   374: aload 16
    //   376: ifnonnull +11 -> 387
    //   379: iconst_0
    //   380: istore 19
    //   382: aload 18
    //   384: ifnull +968 -> 1352
    //   387: iconst_0
    //   388: istore 21
    //   390: aload 16
    //   392: ifnull +12 -> 404
    //   395: aload 16
    //   397: invokeinterface 144 1 0
    //   402: istore 21
    //   404: aload 18
    //   406: ifnull +994 -> 1400
    //   409: aload 18
    //   411: invokeinterface 144 1 0
    //   416: istore 22
    //   418: iload 22
    //   420: iload 21
    //   422: iadd
    //   423: istore 23
    //   425: ldc 221
    //   427: new 88	java/lang/StringBuilder
    //   430: dup
    //   431: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   434: ldc 223
    //   436: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: iload 22
    //   441: invokevirtual 226	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   444: ldc 228
    //   446: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: iload 21
    //   451: invokevirtual 226	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   454: ldc 230
    //   456: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: iload 23
    //   461: invokevirtual 226	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   464: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   467: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   470: pop
    //   471: aload_0
    //   472: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   475: invokestatic 30	com/ijinshan/kinghelper/firewall/SmsBackupActivity:a	(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;
    //   478: iload 23
    //   480: invokevirtual 239	android/widget/ProgressBar:setMax	(I)V
    //   483: iconst_0
    //   484: istore 25
    //   486: aload 16
    //   488: ifnull +625 -> 1113
    //   491: iconst_0
    //   492: istore 25
    //   494: iload 21
    //   496: ifle +617 -> 1113
    //   499: aload_0
    //   500: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   503: invokevirtual 243	com/ijinshan/kinghelper/firewall/SmsBackupActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   506: astore 36
    //   508: new 108	android/content/ContentValues
    //   511: dup
    //   512: invokespecial 244	android/content/ContentValues:<init>	()V
    //   515: astore 37
    //   517: aload 16
    //   519: ldc 106
    //   521: invokeinterface 248 2 0
    //   526: istore 38
    //   528: aload 16
    //   530: ldc 250
    //   532: invokeinterface 248 2 0
    //   537: istore 39
    //   539: aload 16
    //   541: ldc 122
    //   543: invokeinterface 248 2 0
    //   548: istore 40
    //   550: aload 16
    //   552: ldc 252
    //   554: invokeinterface 248 2 0
    //   559: istore 41
    //   561: aload 16
    //   563: ldc 254
    //   565: invokeinterface 248 2 0
    //   570: istore 42
    //   572: aload 16
    //   574: ldc_w 256
    //   577: invokeinterface 248 2 0
    //   582: istore 43
    //   584: aload 16
    //   586: ldc_w 258
    //   589: invokeinterface 248 2 0
    //   594: istore 44
    //   596: aload 16
    //   598: ldc_w 260
    //   601: invokeinterface 248 2 0
    //   606: istore 45
    //   608: aload 16
    //   610: ldc_w 262
    //   613: invokeinterface 248 2 0
    //   618: istore 46
    //   620: aload 16
    //   622: invokeinterface 265 1 0
    //   627: ifeq +486 -> 1113
    //   630: aload 37
    //   632: invokevirtual 268	android/content/ContentValues:clear	()V
    //   635: aload 37
    //   637: ldc 106
    //   639: aload 16
    //   641: iload 38
    //   643: invokeinterface 271 2 0
    //   648: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   651: aload 37
    //   653: ldc 250
    //   655: aload 16
    //   657: iload 39
    //   659: invokeinterface 271 2 0
    //   664: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   667: aload 37
    //   669: ldc 122
    //   671: aload 16
    //   673: iload 40
    //   675: invokeinterface 271 2 0
    //   680: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   683: aload 37
    //   685: ldc 252
    //   687: aload 16
    //   689: iload 41
    //   691: invokeinterface 271 2 0
    //   696: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   699: aload 37
    //   701: ldc 254
    //   703: aload 16
    //   705: iload 42
    //   707: invokeinterface 271 2 0
    //   712: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   715: aload 37
    //   717: ldc_w 256
    //   720: aload 16
    //   722: iload 43
    //   724: invokeinterface 271 2 0
    //   729: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   732: aload 37
    //   734: ldc_w 258
    //   737: aload 16
    //   739: iload 44
    //   741: invokeinterface 271 2 0
    //   746: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   749: aload 37
    //   751: ldc_w 260
    //   754: aload 16
    //   756: iload 45
    //   758: invokeinterface 271 2 0
    //   763: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   766: aload 37
    //   768: ldc_w 262
    //   771: aload 16
    //   773: iload 46
    //   775: invokeinterface 271 2 0
    //   780: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   783: aload 37
    //   785: ldc 106
    //   787: invokevirtual 112	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   790: astore 47
    //   792: aload 47
    //   794: invokestatic 118	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   797: ifeq +7 -> 804
    //   800: ldc 120
    //   802: astore 47
    //   804: aload 37
    //   806: ldc 122
    //   808: invokevirtual 112	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   811: astore 48
    //   813: aload 48
    //   815: invokestatic 118	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   818: ifeq +7 -> 825
    //   821: ldc 120
    //   823: astore 48
    //   825: iconst_2
    //   826: anewarray 124	java/lang/String
    //   829: dup
    //   830: iconst_0
    //   831: aload 47
    //   833: aastore
    //   834: dup
    //   835: iconst_1
    //   836: aload 48
    //   838: aastore
    //   839: astore 49
    //   841: aload 36
    //   843: getstatic 129	android/a/t:a	Landroid/net/Uri;
    //   846: iconst_1
    //   847: anewarray 124	java/lang/String
    //   850: dup
    //   851: iconst_0
    //   852: ldc 131
    //   854: aastore
    //   855: ldc 133
    //   857: aload 49
    //   859: aconst_null
    //   860: invokevirtual 139	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   863: astore 50
    //   865: iconst_0
    //   866: istore 51
    //   868: aload 50
    //   870: ifnull +19 -> 889
    //   873: aload 50
    //   875: invokeinterface 144 1 0
    //   880: istore 51
    //   882: aload 50
    //   884: invokeinterface 145 1 0
    //   889: iload 51
    //   891: ifle +204 -> 1095
    //   894: iconst_1
    //   895: istore 52
    //   897: iload 52
    //   899: ifne +202 -> 1101
    //   902: aload 37
    //   904: ldc 131
    //   906: invokevirtual 278	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   909: aload 37
    //   911: ldc_w 280
    //   914: invokevirtual 278	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   917: aload 37
    //   919: ldc_w 282
    //   922: invokevirtual 278	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   925: aload 37
    //   927: ldc 106
    //   929: invokevirtual 112	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   932: invokestatic 118	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   935: ifeq +12 -> 947
    //   938: aload 37
    //   940: ldc 106
    //   942: ldc 120
    //   944: invokevirtual 275	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   947: aload 36
    //   949: getstatic 129	android/a/t:a	Landroid/net/Uri;
    //   952: aload 37
    //   954: invokevirtual 286	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   957: astore 56
    //   959: ldc 221
    //   961: new 88	java/lang/StringBuilder
    //   964: dup
    //   965: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   968: ldc_w 288
    //   971: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   974: aload 56
    //   976: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   979: ldc_w 290
    //   982: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: aload 37
    //   987: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   990: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   993: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   996: pop
    //   997: iconst_1
    //   998: aload 16
    //   1000: invokeinterface 293 1 0
    //   1005: iadd
    //   1006: istore 25
    //   1008: aload_0
    //   1009: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   1012: invokestatic 30	com/ijinshan/kinghelper/firewall/SmsBackupActivity:a	(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;
    //   1015: iload 25
    //   1017: invokevirtual 296	android/widget/ProgressBar:setProgress	(I)V
    //   1020: iconst_2
    //   1021: anewarray 49	java/lang/Integer
    //   1024: astore 54
    //   1026: aload 54
    //   1028: iconst_0
    //   1029: iload 23
    //   1031: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1034: aastore
    //   1035: aload 54
    //   1037: iconst_1
    //   1038: iload 25
    //   1040: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1043: aastore
    //   1044: aload_0
    //   1045: aload 54
    //   1047: invokevirtual 300	com/ijinshan/kinghelper/firewall/er:publishProgress	([Ljava/lang/Object;)V
    //   1050: aload_0
    //   1051: getfield 24	com/ijinshan/kinghelper/firewall/er:b	Z
    //   1054: ifeq -434 -> 620
    //   1057: aload 16
    //   1059: ifnull +10 -> 1069
    //   1062: aload 16
    //   1064: invokeinterface 145 1 0
    //   1069: aload 18
    //   1071: ifnull +10 -> 1081
    //   1074: aload 18
    //   1076: invokeinterface 145 1 0
    //   1081: aload_1
    //   1082: invokevirtual 185	java/io/File:delete	()Z
    //   1085: pop
    //   1086: iconst_m1
    //   1087: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1090: astore 7
    //   1092: goto -1057 -> 35
    //   1095: iconst_0
    //   1096: istore 52
    //   1098: goto -201 -> 897
    //   1101: ldc 221
    //   1103: ldc_w 302
    //   1106: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   1109: pop
    //   1110: goto -113 -> 997
    //   1113: iload 25
    //   1115: istore 26
    //   1117: aload 16
    //   1119: invokeinterface 145 1 0
    //   1124: aload 18
    //   1126: ifnull +222 -> 1348
    //   1129: iload 22
    //   1131: ifle +217 -> 1348
    //   1134: new 108	android/content/ContentValues
    //   1137: dup
    //   1138: invokespecial 244	android/content/ContentValues:<init>	()V
    //   1141: astore 27
    //   1143: aload_0
    //   1144: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   1147: invokestatic 307	com/jxphone/mosecurity/logic/h:a	(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;
    //   1150: astore 28
    //   1152: aload 18
    //   1154: invokeinterface 265 1 0
    //   1159: ifeq +189 -> 1348
    //   1162: aload 27
    //   1164: invokevirtual 268	android/content/ContentValues:clear	()V
    //   1167: aload 18
    //   1169: invokestatic 312	com/jxphone/mosecurity/c/l:a	(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    //   1172: astore 29
    //   1174: aload 28
    //   1176: aload 29
    //   1178: invokeinterface 318 2 0
    //   1183: ifne +128 -> 1311
    //   1186: aload 29
    //   1188: invokevirtual 319	com/jxphone/mosecurity/c/l:b	()Ljava/lang/String;
    //   1191: invokestatic 118	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1194: ifeq +10 -> 1204
    //   1197: aload 29
    //   1199: ldc 120
    //   1201: invokevirtual 321	com/jxphone/mosecurity/c/l:a	(Ljava/lang/String;)V
    //   1204: aload 28
    //   1206: aload 29
    //   1208: invokeinterface 324 2 0
    //   1213: pop
    //   1214: aload_0
    //   1215: getfield 17	com/ijinshan/kinghelper/firewall/er:c	Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
    //   1218: invokestatic 30	com/ijinshan/kinghelper/firewall/SmsBackupActivity:a	(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;
    //   1221: astore 31
    //   1223: iload 26
    //   1225: iconst_1
    //   1226: iadd
    //   1227: istore 32
    //   1229: aload 31
    //   1231: iload 26
    //   1233: invokevirtual 296	android/widget/ProgressBar:setProgress	(I)V
    //   1236: iconst_2
    //   1237: anewarray 49	java/lang/Integer
    //   1240: astore 33
    //   1242: aload 33
    //   1244: iconst_0
    //   1245: iload 23
    //   1247: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1250: aastore
    //   1251: aload 33
    //   1253: iconst_1
    //   1254: iload 32
    //   1256: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1259: aastore
    //   1260: aload_0
    //   1261: aload 33
    //   1263: invokevirtual 300	com/ijinshan/kinghelper/firewall/er:publishProgress	([Ljava/lang/Object;)V
    //   1266: aload_0
    //   1267: getfield 24	com/ijinshan/kinghelper/firewall/er:b	Z
    //   1270: ifeq +71 -> 1341
    //   1273: aload 16
    //   1275: ifnull +10 -> 1285
    //   1278: aload 16
    //   1280: invokeinterface 145 1 0
    //   1285: aload 18
    //   1287: ifnull +10 -> 1297
    //   1290: aload 18
    //   1292: invokeinterface 145 1 0
    //   1297: aload_1
    //   1298: invokevirtual 185	java/io/File:delete	()Z
    //   1301: pop
    //   1302: iconst_m1
    //   1303: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1306: astore 7
    //   1308: goto -1273 -> 35
    //   1311: ldc 221
    //   1313: new 88	java/lang/StringBuilder
    //   1316: dup
    //   1317: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   1320: ldc_w 326
    //   1323: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1326: aload 29
    //   1328: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1331: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1334: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   1337: pop
    //   1338: goto -124 -> 1214
    //   1341: iload 32
    //   1343: istore 26
    //   1345: goto -193 -> 1152
    //   1348: iload 23
    //   1350: istore 19
    //   1352: aload 16
    //   1354: ifnull +10 -> 1364
    //   1357: aload 16
    //   1359: invokeinterface 145 1 0
    //   1364: aload 18
    //   1366: ifnull +10 -> 1376
    //   1369: aload 18
    //   1371: invokeinterface 145 1 0
    //   1376: aload_1
    //   1377: invokevirtual 185	java/io/File:delete	()Z
    //   1380: pop
    //   1381: iload 19
    //   1383: invokestatic 166	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1386: astore 7
    //   1388: goto -1353 -> 35
    //   1391: astore 17
    //   1393: aload 16
    //   1395: astore 11
    //   1397: goto -1091 -> 306
    //   1400: iconst_0
    //   1401: istore 22
    //   1403: goto -985 -> 418
    //
    // Exception table:
    //   from	to	target	type
    //   171	202	301	java/lang/Exception
    //   202	219	1391	java/lang/Exception
  }

  final void a()
  {
    this.b = true;
  }

  protected final void onCancelled()
  {
    SmsBackupActivity.a(this.c).setVisibility(4);
    SmsBackupActivity.b(this.c).setEnabled(true);
    SmsBackupActivity.c(this.c).setEnabled(true);
    SmsBackupActivity.d(this.c).setText(2131427734);
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
    SmsBackupActivity.a(this.c, 0);
    SmsBackupActivity.f(this.c);
  }

  protected final void onPreExecute()
  {
    SmsBackupActivity.a(this.c, 2);
    SmsBackupActivity.a(this.c).setVisibility(0);
    SmsBackupActivity.a(this.c).setMax(100);
    SmsBackupActivity.a(this.c).setProgress(0);
    SmsBackupActivity.b(this.c).setEnabled(false);
    SmsBackupActivity.c(this.c).setEnabled(false);
    SmsBackupActivity.d(this.c).setText(this.c.getString(2131427730, new Object[] { "0" }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.er
 * JD-Core Version:    0.6.2
 */