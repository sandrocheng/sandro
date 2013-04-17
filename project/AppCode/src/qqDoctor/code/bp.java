import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.text.TextUtils;
import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bp extends bn
  implements ce
{
  private boolean b = false;
  private bs c = null;

  public bp(Context paramContext)
  {
    super(paramContext);
    this.c = bs.a(paramContext);
  }

  private int a(Cursor paramCursor, StringBuffer paramStringBuffer)
  {
    int i = -1;
    try
    {
      int j = paramCursor.getInt(paramCursor.getColumnIndex("data1"));
      if (ci.j)
        this.c.a();
      String str = this.c.a(j);
      if (str != null)
      {
        if (paramStringBuffer.length() > 0)
          paramStringBuffer.append(",");
        paramStringBuffer.append(str);
        i = j;
      }
    }
    catch (Throwable localThrowable)
    {
      dk.c("SYSContactDaoV2", "getGroupMemberShip Throwable " + localThrowable.getMessage());
    }
    return i;
  }

  private static ContentProviderOperation a(cp paramcp, int paramInt1, int paramInt2)
  {
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    ContentProviderOperation.Builder localBuilder2;
    String[] arrayOfString;
    int j;
    int k;
    int m;
    int i;
    ContentProviderOperation.Builder localBuilder3;
    if (paramInt2 == 100)
    {
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
      localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", paramcp.a[2].toString());
      String str = paramcp.a[1].toString();
      if (str == null)
        break label293;
      arrayOfString = str.split(";");
      j = 0;
      k = 0;
      m = 0;
      if ((k == 0) && (j < arrayOfString.length))
        break label156;
      if (m != 0)
        break label282;
      ContentProviderOperation.Builder localBuilder4 = localBuilder2.withValue("data3", str);
      i = m;
      localBuilder3 = localBuilder4;
    }
    while (true)
    {
      return localBuilder3.withValue("data2", Integer.valueOf(i)).build();
      if (paramInt2 != 101)
        break;
      localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
      break;
      label156: int i1;
      int n;
      if (arrayOfString[j].equals("HOME"))
      {
        i1 = 1;
        n = 1;
      }
      while (true)
      {
        j++;
        int i2 = i1;
        m = n;
        k = i2;
        break;
        if (arrayOfString[j].equals("WORK"))
        {
          i1 = 1;
          n = 2;
        }
        else if (arrayOfString[j].equals("CELL"))
        {
          n = 4;
          i1 = 1;
        }
        else if ((arrayOfString[j].equals("OTHER")) || (arrayOfString[j].equals("")))
        {
          n = 3;
          i1 = 1;
        }
        else
        {
          n = m;
          i1 = 0;
        }
      }
      label282: i = m;
      localBuilder3 = localBuilder2;
      continue;
      label293: localBuilder3 = localBuilder2;
      i = 0;
    }
  }

  private static ContentProviderOperation a(cp paramcp1, cp paramcp2, int paramInt1, int paramInt2)
  {
    ContentProviderOperation localContentProviderOperation;
    if ((paramcp1 == null) && (paramcp2 == null))
    {
      localContentProviderOperation = null;
      return localContentProviderOperation;
    }
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    label42: ContentProviderOperation.Builder localBuilder2;
    String[] arrayOfString2;
    int j;
    int k;
    int m;
    int i;
    ContentProviderOperation.Builder localBuilder4;
    label128: ContentProviderOperation.Builder localBuilder3;
    String[] arrayOfString1;
    if (paramInt2 == 100)
    {
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
      localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/organization");
      if (paramcp1 == null)
        break label429;
      String str = paramcp1.a[1].toString();
      if (str == null)
        break label419;
      arrayOfString2 = str.split(";");
      j = 0;
      k = 0;
      m = 0;
      if ((k == 0) && (j < arrayOfString2.length))
        break label280;
      if (m != 0)
        break label408;
      ContentProviderOperation.Builder localBuilder5 = localBuilder2.withValue("data3", str);
      i = m;
      localBuilder4 = localBuilder5;
      localBuilder3 = localBuilder4.withValue("data2", Integer.valueOf(i));
      arrayOfString1 = paramcp1.a[2].toString().split(";");
      if (arrayOfString1.length <= 1)
        break label387;
      if ((!"".equals(arrayOfString1[0])) && (!arrayOfString1[0].equals(" ")))
        break label362;
      if ((!"".equals(arrayOfString1[1])) && (!arrayOfString1[1].equals(" ")))
        localBuilder3 = localBuilder3.withValue("data1", arrayOfString1[1]);
    }
    while (true)
    {
      if (paramcp2 != null)
        localBuilder3 = localBuilder3.withValue("data4", paramcp2.a[2].toString());
      localContentProviderOperation = localBuilder3.build();
      break;
      if (paramInt2 != 101)
        break label42;
      localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
      break label42;
      label280: int n;
      int i1;
      if ((arrayOfString2[j].equals("")) || (arrayOfString2[j].equals("WORK")))
      {
        n = 1;
        i1 = 1;
      }
      while (true)
      {
        j++;
        int i2 = n;
        m = i1;
        k = i2;
        break;
        if (arrayOfString2[j].equals("OTHER"))
        {
          n = 1;
          i1 = 2;
        }
        else
        {
          i1 = m;
          n = 0;
        }
      }
      label362: localBuilder3 = localBuilder3.withValue("data1", arrayOfString1[0]).withValue("data5", arrayOfString1[1]);
      continue;
      label387: localBuilder3 = localBuilder3.withValue("data1", paramcp1.a[2].toString());
      continue;
      label408: i = m;
      localBuilder4 = localBuilder2;
      break label128;
      label419: localBuilder4 = localBuilder2;
      i = 0;
      break label128;
      label429: localBuilder3 = localBuilder2;
    }
  }

  // ERROR //
  private cc a(String paramString, cc.b paramb)
  {
    // Byte code:
    //   0: aload_2
    //   1: getstatic 176	cc$b:d	Lcc$b;
    //   4: if_acmpne +202 -> 206
    //   7: bipush 24
    //   9: anewarray 128	java/lang/String
    //   12: astore_3
    //   13: aload_3
    //   14: iconst_0
    //   15: ldc 178
    //   17: aastore
    //   18: aload_3
    //   19: iconst_1
    //   20: ldc 113
    //   22: aastore
    //   23: aload_3
    //   24: iconst_2
    //   25: ldc 107
    //   27: aastore
    //   28: aload_3
    //   29: iconst_3
    //   30: ldc 180
    //   32: aastore
    //   33: aload_3
    //   34: iconst_4
    //   35: ldc 182
    //   37: aastore
    //   38: aload_3
    //   39: iconst_5
    //   40: ldc 184
    //   42: aastore
    //   43: aload_3
    //   44: bipush 6
    //   46: ldc 29
    //   48: aastore
    //   49: aload_3
    //   50: bipush 7
    //   52: ldc 136
    //   54: aastore
    //   55: aload_3
    //   56: bipush 8
    //   58: ldc 134
    //   60: aastore
    //   61: aload_3
    //   62: bipush 9
    //   64: ldc 167
    //   66: aastore
    //   67: aload_3
    //   68: bipush 10
    //   70: ldc 169
    //   72: aastore
    //   73: aload_3
    //   74: bipush 11
    //   76: ldc 186
    //   78: aastore
    //   79: aload_3
    //   80: bipush 12
    //   82: ldc 188
    //   84: aastore
    //   85: aload_3
    //   86: bipush 13
    //   88: ldc 190
    //   90: aastore
    //   91: aload_3
    //   92: bipush 14
    //   94: ldc 192
    //   96: aastore
    //   97: aload_3
    //   98: bipush 15
    //   100: ldc 194
    //   102: aastore
    //   103: aload_3
    //   104: bipush 16
    //   106: ldc 196
    //   108: aastore
    //   109: aload_3
    //   110: bipush 17
    //   112: ldc 198
    //   114: aastore
    //   115: aload_3
    //   116: bipush 18
    //   118: ldc 200
    //   120: aastore
    //   121: aload_3
    //   122: bipush 19
    //   124: ldc 202
    //   126: aastore
    //   127: aload_3
    //   128: bipush 20
    //   130: ldc 204
    //   132: aastore
    //   133: aload_3
    //   134: bipush 21
    //   136: ldc 206
    //   138: aastore
    //   139: aload_3
    //   140: bipush 22
    //   142: ldc 208
    //   144: aastore
    //   145: aload_3
    //   146: bipush 23
    //   148: ldc 210
    //   150: aastore
    //   151: ldc 64
    //   153: new 66	java/lang/StringBuilder
    //   156: dup
    //   157: ldc 212
    //   159: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload_1
    //   163: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: new 52	java/lang/StringBuffer
    //   175: dup
    //   176: invokespecial 216	java/lang/StringBuffer:<init>	()V
    //   179: astore 4
    //   181: aload_1
    //   182: invokestatic 220	bp:e	(Ljava/lang/String;)Lbm;
    //   185: astore 5
    //   187: aload 5
    //   189: ifnull +11 -> 200
    //   192: aload 5
    //   194: getfield 225	bm:c	I
    //   197: ifge +162 -> 359
    //   200: aconst_null
    //   201: astore 6
    //   203: aload 6
    //   205: areturn
    //   206: bipush 25
    //   208: anewarray 128	java/lang/String
    //   211: dup
    //   212: iconst_0
    //   213: ldc 178
    //   215: aastore
    //   216: dup
    //   217: iconst_1
    //   218: ldc 113
    //   220: aastore
    //   221: dup
    //   222: iconst_2
    //   223: ldc 107
    //   225: aastore
    //   226: dup
    //   227: iconst_3
    //   228: ldc 180
    //   230: aastore
    //   231: dup
    //   232: iconst_4
    //   233: ldc 182
    //   235: aastore
    //   236: dup
    //   237: iconst_5
    //   238: ldc 184
    //   240: aastore
    //   241: dup
    //   242: bipush 6
    //   244: ldc 29
    //   246: aastore
    //   247: dup
    //   248: bipush 7
    //   250: ldc 136
    //   252: aastore
    //   253: dup
    //   254: bipush 8
    //   256: ldc 134
    //   258: aastore
    //   259: dup
    //   260: bipush 9
    //   262: ldc 167
    //   264: aastore
    //   265: dup
    //   266: bipush 10
    //   268: ldc 169
    //   270: aastore
    //   271: dup
    //   272: bipush 11
    //   274: ldc 186
    //   276: aastore
    //   277: dup
    //   278: bipush 12
    //   280: ldc 188
    //   282: aastore
    //   283: dup
    //   284: bipush 13
    //   286: ldc 190
    //   288: aastore
    //   289: dup
    //   290: bipush 14
    //   292: ldc 192
    //   294: aastore
    //   295: dup
    //   296: bipush 15
    //   298: ldc 194
    //   300: aastore
    //   301: dup
    //   302: bipush 16
    //   304: ldc 196
    //   306: aastore
    //   307: dup
    //   308: bipush 17
    //   310: ldc 198
    //   312: aastore
    //   313: dup
    //   314: bipush 18
    //   316: ldc 200
    //   318: aastore
    //   319: dup
    //   320: bipush 19
    //   322: ldc 202
    //   324: aastore
    //   325: dup
    //   326: bipush 20
    //   328: ldc 227
    //   330: aastore
    //   331: dup
    //   332: bipush 21
    //   334: ldc 204
    //   336: aastore
    //   337: dup
    //   338: bipush 22
    //   340: ldc 206
    //   342: aastore
    //   343: dup
    //   344: bipush 23
    //   346: ldc 208
    //   348: aastore
    //   349: dup
    //   350: bipush 24
    //   352: ldc 210
    //   354: aastore
    //   355: astore_3
    //   356: goto -205 -> 151
    //   359: new 229	cq
    //   362: dup
    //   363: invokespecial 230	cq:<init>	()V
    //   366: astore 7
    //   368: new 232	java/util/ArrayList
    //   371: dup
    //   372: invokespecial 233	java/util/ArrayList:<init>	()V
    //   375: astore 8
    //   377: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   380: getstatic 93	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   383: aload_3
    //   384: ldc 238
    //   386: iconst_1
    //   387: anewarray 128	java/lang/String
    //   390: dup
    //   391: iconst_0
    //   392: aload_1
    //   393: aastore
    //   394: aconst_null
    //   395: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   398: astore 37
    //   400: aload 37
    //   402: astore 10
    //   404: aload 10
    //   406: ifnull +3873 -> 4279
    //   409: aload 10
    //   411: invokeinterface 248 1 0
    //   416: ifeq +3863 -> 4279
    //   419: aload_2
    //   420: getstatic 250	cc$b:c	Lcc$b;
    //   423: if_acmpne +75 -> 498
    //   426: aload 10
    //   428: aload 10
    //   430: ldc 113
    //   432: invokeinterface 35 2 0
    //   437: invokeinterface 253 2 0
    //   442: ldc 255
    //   444: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   447: ifeq +10 -> 457
    //   450: aload 10
    //   452: aload 7
    //   454: invokestatic 258	bp:a	(Landroid/database/Cursor;Lcq;)V
    //   457: aload 10
    //   459: invokeinterface 248 1 0
    //   464: pop
    //   465: aload 10
    //   467: invokeinterface 261 1 0
    //   472: istore 194
    //   474: iload 194
    //   476: ifeq -50 -> 426
    //   479: aload 10
    //   481: ifnull +10 -> 491
    //   484: aload 10
    //   486: invokeinterface 264 1 0
    //   491: aload 7
    //   493: astore 6
    //   495: goto -292 -> 203
    //   498: aload 10
    //   500: aload 10
    //   502: ldc 113
    //   504: invokeinterface 35 2 0
    //   509: invokeinterface 253 2 0
    //   514: astore 38
    //   516: aload 38
    //   518: ldc 115
    //   520: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   523: istore 39
    //   525: iload 39
    //   527: ifeq +680 -> 1207
    //   530: new 121	cp
    //   533: dup
    //   534: invokespecial 265	cp:<init>	()V
    //   537: astore 184
    //   539: aload 184
    //   541: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   544: iconst_0
    //   545: aaload
    //   546: ldc_w 267
    //   549: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   552: pop
    //   553: aload 10
    //   555: aload 10
    //   557: ldc 29
    //   559: invokeinterface 35 2 0
    //   564: invokeinterface 253 2 0
    //   569: astore 187
    //   571: aload 187
    //   573: ifnull +16 -> 589
    //   576: aload 184
    //   578: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   581: iconst_2
    //   582: aaload
    //   583: aload 187
    //   585: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: pop
    //   589: aload 10
    //   591: aload 10
    //   593: ldc 136
    //   595: invokeinterface 35 2 0
    //   600: invokeinterface 39 2 0
    //   605: istore 188
    //   607: iload 188
    //   609: iconst_1
    //   610: if_icmpne +480 -> 1090
    //   613: ldc 148
    //   615: astore 187
    //   617: aload 187
    //   619: ifnull +16 -> 635
    //   622: aload 184
    //   624: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   627: iconst_1
    //   628: aaload
    //   629: aload 187
    //   631: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   634: pop
    //   635: aload 184
    //   637: ifnull +14 -> 651
    //   640: aload 7
    //   642: getfield 272	cc:c	Ljava/util/ArrayList;
    //   645: aload 184
    //   647: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   650: pop
    //   651: aload 10
    //   653: invokeinterface 248 1 0
    //   658: pop
    //   659: aload 10
    //   661: invokeinterface 261 1 0
    //   666: istore 53
    //   668: iload 53
    //   670: ifeq -172 -> 498
    //   673: aload 10
    //   675: ifnull +10 -> 685
    //   678: aload 10
    //   680: invokeinterface 264 1 0
    //   685: new 121	cp
    //   688: dup
    //   689: invokespecial 265	cp:<init>	()V
    //   692: astore 12
    //   694: aload 12
    //   696: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   699: iconst_0
    //   700: aaload
    //   701: ldc_w 277
    //   704: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   707: pop
    //   708: aload 5
    //   710: getfield 225	bm:c	I
    //   713: ifle +3584 -> 4297
    //   716: ldc_w 279
    //   719: astore 14
    //   721: aload 12
    //   723: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   726: iconst_2
    //   727: aaload
    //   728: aload 14
    //   730: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   733: pop
    //   734: aload 12
    //   736: ifnull +14 -> 750
    //   739: aload 7
    //   741: getfield 272	cc:c	Ljava/util/ArrayList;
    //   744: aload 12
    //   746: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   749: pop
    //   750: aload 4
    //   752: invokevirtual 56	java/lang/StringBuffer:length	()I
    //   755: ifle +90 -> 845
    //   758: new 121	cp
    //   761: dup
    //   762: invokespecial 265	cp:<init>	()V
    //   765: astore 16
    //   767: aload 16
    //   769: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   772: iconst_0
    //   773: aaload
    //   774: ldc_w 281
    //   777: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   780: pop
    //   781: aload 4
    //   783: invokevirtual 282	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   786: astore 18
    //   788: aload 18
    //   790: ifnull +16 -> 806
    //   793: aload 16
    //   795: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   798: iconst_2
    //   799: aaload
    //   800: aload 18
    //   802: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   805: pop
    //   806: aload 16
    //   808: ifnull +14 -> 822
    //   811: aload 7
    //   813: getfield 272	cc:c	Ljava/util/ArrayList;
    //   816: aload 16
    //   818: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   821: pop
    //   822: ldc 64
    //   824: new 66	java/lang/StringBuilder
    //   827: dup
    //   828: ldc_w 284
    //   831: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   834: aload 18
    //   836: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   839: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   842: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   845: new 121	cp
    //   848: dup
    //   849: invokespecial 265	cp:<init>	()V
    //   852: astore 19
    //   854: aload 19
    //   856: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   859: iconst_0
    //   860: aaload
    //   861: ldc_w 286
    //   864: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   867: pop
    //   868: aload 5
    //   870: getfield 289	bm:a	Ljava/lang/String;
    //   873: astore 21
    //   875: aload 21
    //   877: ifnull +16 -> 893
    //   880: aload 19
    //   882: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   885: iconst_2
    //   886: aaload
    //   887: aload 21
    //   889: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   892: pop
    //   893: aload 19
    //   895: ifnull +14 -> 909
    //   898: aload 7
    //   900: getfield 272	cc:c	Ljava/util/ArrayList;
    //   903: aload 19
    //   905: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   908: pop
    //   909: new 121	cp
    //   912: dup
    //   913: invokespecial 265	cp:<init>	()V
    //   916: astore 22
    //   918: aload 22
    //   920: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   923: iconst_0
    //   924: aaload
    //   925: ldc_w 291
    //   928: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   931: pop
    //   932: aload 5
    //   934: getfield 293	bm:b	Ljava/lang/String;
    //   937: astore 24
    //   939: aload 24
    //   941: ifnull +16 -> 957
    //   944: aload 22
    //   946: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   949: iconst_2
    //   950: aaload
    //   951: aload 24
    //   953: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: pop
    //   957: aload 22
    //   959: ifnull +14 -> 973
    //   962: aload 7
    //   964: getfield 272	cc:c	Ljava/util/ArrayList;
    //   967: aload 22
    //   969: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   972: pop
    //   973: new 121	cp
    //   976: dup
    //   977: invokespecial 265	cp:<init>	()V
    //   980: astore 25
    //   982: aload 25
    //   984: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   987: iconst_0
    //   988: aaload
    //   989: ldc_w 295
    //   992: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   995: pop
    //   996: aload 5
    //   998: getfield 297	bm:d	Ljava/lang/String;
    //   1001: astore 27
    //   1003: aload 27
    //   1005: ifnull +16 -> 1021
    //   1008: aload 25
    //   1010: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1013: iconst_2
    //   1014: aaload
    //   1015: aload 27
    //   1017: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1020: pop
    //   1021: aload 25
    //   1023: ifnull +14 -> 1037
    //   1026: aload 7
    //   1028: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1031: aload 25
    //   1033: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1036: pop
    //   1037: ldc 64
    //   1039: new 66	java/lang/StringBuilder
    //   1042: dup
    //   1043: ldc_w 299
    //   1046: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1049: aload 7
    //   1051: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1054: invokevirtual 302	java/util/ArrayList:size	()I
    //   1057: invokevirtual 305	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1060: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1063: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1066: aload 8
    //   1068: invokeinterface 308 1 0
    //   1073: ifle +10 -> 1083
    //   1076: aload 7
    //   1078: aload 8
    //   1080: putfield 311	cc:a	Ljava/util/List;
    //   1083: aload 7
    //   1085: astore 6
    //   1087: goto -884 -> 203
    //   1090: iload 188
    //   1092: iconst_4
    //   1093: if_icmpne +3228 -> 4321
    //   1096: ldc 156
    //   1098: astore 187
    //   1100: goto -483 -> 617
    //   1103: iload 188
    //   1105: ifne -488 -> 617
    //   1108: aload 10
    //   1110: aload 10
    //   1112: ldc 134
    //   1114: invokeinterface 35 2 0
    //   1119: invokeinterface 253 2 0
    //   1124: astore 189
    //   1126: aload 189
    //   1128: astore 187
    //   1130: goto -513 -> 617
    //   1133: astore 185
    //   1135: ldc 64
    //   1137: new 66	java/lang/StringBuilder
    //   1140: dup
    //   1141: ldc_w 313
    //   1144: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1147: aload 185
    //   1149: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1152: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1155: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1158: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1161: goto -510 -> 651
    //   1164: astore 9
    //   1166: ldc 64
    //   1168: new 66	java/lang/StringBuilder
    //   1171: dup
    //   1172: ldc_w 315
    //   1175: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1178: aload 9
    //   1180: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1183: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1186: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1189: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1192: aload 10
    //   1194: ifnull -509 -> 685
    //   1197: aload 10
    //   1199: invokeinterface 264 1 0
    //   1204: goto -519 -> 685
    //   1207: aload 38
    //   1209: ldc_w 317
    //   1212: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1215: istore 40
    //   1217: iload 40
    //   1219: ifeq +165 -> 1384
    //   1222: aload 10
    //   1224: aload 10
    //   1226: ldc 136
    //   1228: invokeinterface 35 2 0
    //   1233: invokeinterface 39 2 0
    //   1238: iconst_3
    //   1239: if_icmpne -588 -> 651
    //   1242: aload 10
    //   1244: ldc 29
    //   1246: invokeinterface 35 2 0
    //   1251: istore 178
    //   1253: aload 10
    //   1255: iload 178
    //   1257: invokeinterface 321 2 0
    //   1262: ifne -611 -> 651
    //   1265: new 121	cp
    //   1268: dup
    //   1269: invokespecial 265	cp:<init>	()V
    //   1272: astore 179
    //   1274: aload 179
    //   1276: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1279: iconst_0
    //   1280: aaload
    //   1281: ldc_w 323
    //   1284: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1287: pop
    //   1288: aload 10
    //   1290: iload 178
    //   1292: invokeinterface 253 2 0
    //   1297: astore 181
    //   1299: aload 181
    //   1301: ifnull +16 -> 1317
    //   1304: aload 179
    //   1306: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1309: iconst_2
    //   1310: aaload
    //   1311: aload 181
    //   1313: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1316: pop
    //   1317: aload 179
    //   1319: ifnull -668 -> 651
    //   1322: aload 7
    //   1324: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1327: aload 179
    //   1329: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1332: pop
    //   1333: goto -682 -> 651
    //   1336: astore 177
    //   1338: ldc 64
    //   1340: new 66	java/lang/StringBuilder
    //   1343: dup
    //   1344: ldc_w 325
    //   1347: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1350: aload 177
    //   1352: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1355: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1358: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1361: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1364: goto -713 -> 651
    //   1367: astore 11
    //   1369: aload 10
    //   1371: ifnull +10 -> 1381
    //   1374: aload 10
    //   1376: invokeinterface 264 1 0
    //   1381: aload 11
    //   1383: athrow
    //   1384: aload 38
    //   1386: ldc_w 327
    //   1389: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1392: ifeq +35 -> 1427
    //   1395: aload_0
    //   1396: aload 10
    //   1398: aload 4
    //   1400: invokespecial 329	bp:a	(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I
    //   1403: istore 175
    //   1405: iload 175
    //   1407: iconst_m1
    //   1408: if_icmpeq -757 -> 651
    //   1411: aload 8
    //   1413: iload 175
    //   1415: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1418: invokeinterface 330 2 0
    //   1423: pop
    //   1424: goto -773 -> 651
    //   1427: aload 38
    //   1429: ldc_w 332
    //   1432: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1435: istore 41
    //   1437: iload 41
    //   1439: ifeq +229 -> 1668
    //   1442: new 121	cp
    //   1445: dup
    //   1446: invokespecial 265	cp:<init>	()V
    //   1449: astore 163
    //   1451: aload 163
    //   1453: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1456: iconst_0
    //   1457: aaload
    //   1458: ldc_w 334
    //   1461: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1464: pop
    //   1465: aload 10
    //   1467: aload 10
    //   1469: ldc 169
    //   1471: invokeinterface 35 2 0
    //   1476: invokeinterface 39 2 0
    //   1481: istore 166
    //   1483: iload 166
    //   1485: ifne +112 -> 1597
    //   1488: ldc_w 336
    //   1491: astore 167
    //   1493: aload 167
    //   1495: ifnull +16 -> 1511
    //   1498: aload 163
    //   1500: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1503: iconst_1
    //   1504: aaload
    //   1505: aload 167
    //   1507: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1510: pop
    //   1511: aload 10
    //   1513: aload 10
    //   1515: ldc 29
    //   1517: invokeinterface 35 2 0
    //   1522: invokeinterface 253 2 0
    //   1527: astore 171
    //   1529: aload 171
    //   1531: ifnull +16 -> 1547
    //   1534: aload 163
    //   1536: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1539: iconst_2
    //   1540: aaload
    //   1541: aload 171
    //   1543: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1546: pop
    //   1547: aload 163
    //   1549: ifnull -898 -> 651
    //   1552: aload 7
    //   1554: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1557: aload 163
    //   1559: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1562: pop
    //   1563: goto -912 -> 651
    //   1566: astore 164
    //   1568: ldc 64
    //   1570: new 66	java/lang/StringBuilder
    //   1573: dup
    //   1574: ldc_w 313
    //   1577: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1580: aload 164
    //   1582: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1585: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1588: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1591: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1594: goto -943 -> 651
    //   1597: iload 166
    //   1599: iconst_5
    //   1600: if_icmpne +2747 -> 4347
    //   1603: ldc_w 338
    //   1606: astore 167
    //   1608: goto -115 -> 1493
    //   1611: aconst_null
    //   1612: astore 167
    //   1614: iload 166
    //   1616: iconst_m1
    //   1617: if_icmpne -124 -> 1493
    //   1620: aload 10
    //   1622: ldc 186
    //   1624: invokeinterface 35 2 0
    //   1629: istore 168
    //   1631: aload 10
    //   1633: iload 168
    //   1635: invokeinterface 321 2 0
    //   1640: istore 169
    //   1642: aconst_null
    //   1643: astore 167
    //   1645: iload 169
    //   1647: ifne -154 -> 1493
    //   1650: aload 10
    //   1652: iload 168
    //   1654: invokeinterface 253 2 0
    //   1659: astore 170
    //   1661: aload 170
    //   1663: astore 167
    //   1665: goto -172 -> 1493
    //   1668: aload 38
    //   1670: ldc_w 340
    //   1673: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1676: istore 42
    //   1678: iload 42
    //   1680: ifeq +112 -> 1792
    //   1683: new 121	cp
    //   1686: dup
    //   1687: invokespecial 265	cp:<init>	()V
    //   1690: astore 157
    //   1692: aload 157
    //   1694: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1697: iconst_0
    //   1698: aaload
    //   1699: ldc_w 342
    //   1702: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1705: pop
    //   1706: aload 10
    //   1708: aload 10
    //   1710: ldc 29
    //   1712: invokeinterface 35 2 0
    //   1717: invokeinterface 253 2 0
    //   1722: astore 160
    //   1724: aload 160
    //   1726: ifnull +16 -> 1742
    //   1729: aload 157
    //   1731: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1734: iconst_2
    //   1735: aaload
    //   1736: aload 160
    //   1738: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1741: pop
    //   1742: aload 157
    //   1744: ifnull -1093 -> 651
    //   1747: aload 7
    //   1749: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1752: aload 157
    //   1754: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1757: pop
    //   1758: goto -1107 -> 651
    //   1761: astore 158
    //   1763: ldc 64
    //   1765: new 66	java/lang/StringBuilder
    //   1768: dup
    //   1769: ldc_w 344
    //   1772: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1775: aload 158
    //   1777: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1780: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1783: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1786: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1789: goto -1138 -> 651
    //   1792: aload 38
    //   1794: ldc_w 346
    //   1797: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1800: istore 43
    //   1802: iload 43
    //   1804: ifeq +112 -> 1916
    //   1807: new 121	cp
    //   1810: dup
    //   1811: invokespecial 265	cp:<init>	()V
    //   1814: astore 151
    //   1816: aload 151
    //   1818: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1821: iconst_0
    //   1822: aaload
    //   1823: ldc_w 348
    //   1826: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1829: pop
    //   1830: aload 10
    //   1832: aload 10
    //   1834: ldc 29
    //   1836: invokeinterface 35 2 0
    //   1841: invokeinterface 253 2 0
    //   1846: astore 154
    //   1848: aload 154
    //   1850: ifnull +16 -> 1866
    //   1853: aload 151
    //   1855: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1858: iconst_2
    //   1859: aaload
    //   1860: aload 154
    //   1862: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1865: pop
    //   1866: aload 151
    //   1868: ifnull -1217 -> 651
    //   1871: aload 7
    //   1873: getfield 272	cc:c	Ljava/util/ArrayList;
    //   1876: aload 151
    //   1878: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1881: pop
    //   1882: goto -1231 -> 651
    //   1885: astore 152
    //   1887: ldc 64
    //   1889: new 66	java/lang/StringBuilder
    //   1892: dup
    //   1893: ldc_w 313
    //   1896: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1899: aload 152
    //   1901: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1904: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1907: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1910: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1913: goto -1262 -> 651
    //   1916: aload 38
    //   1918: ldc 163
    //   1920: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1923: istore 44
    //   1925: iload 44
    //   1927: ifeq +295 -> 2222
    //   1930: new 121	cp
    //   1933: dup
    //   1934: invokespecial 265	cp:<init>	()V
    //   1937: astore 135
    //   1939: aload 135
    //   1941: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1944: iconst_0
    //   1945: aaload
    //   1946: ldc_w 350
    //   1949: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1952: pop
    //   1953: aload 10
    //   1955: aload 10
    //   1957: ldc 136
    //   1959: invokeinterface 35 2 0
    //   1964: invokeinterface 39 2 0
    //   1969: istore 138
    //   1971: iload 138
    //   1973: iconst_1
    //   1974: if_icmpne +202 -> 2176
    //   1977: ldc 154
    //   1979: astore 139
    //   1981: aload 139
    //   1983: ifnull +16 -> 1999
    //   1986: aload 135
    //   1988: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   1991: iconst_1
    //   1992: aaload
    //   1993: aload 139
    //   1995: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1998: pop
    //   1999: aload 10
    //   2001: aload 10
    //   2003: ldc 29
    //   2005: invokeinterface 35 2 0
    //   2010: invokeinterface 253 2 0
    //   2015: astore 141
    //   2017: aload 141
    //   2019: ifnull +16 -> 2035
    //   2022: aload 135
    //   2024: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2027: iconst_2
    //   2028: aaload
    //   2029: aload 141
    //   2031: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2034: pop
    //   2035: aload 135
    //   2037: ifnull +14 -> 2051
    //   2040: aload 7
    //   2042: getfield 272	cc:c	Ljava/util/ArrayList;
    //   2045: aload 135
    //   2047: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2050: pop
    //   2051: aload 10
    //   2053: ldc 167
    //   2055: invokeinterface 35 2 0
    //   2060: istore 142
    //   2062: aload 10
    //   2064: iload 142
    //   2066: invokeinterface 321 2 0
    //   2071: ifne -1420 -> 651
    //   2074: aload 10
    //   2076: iload 142
    //   2078: invokeinterface 253 2 0
    //   2083: astore 143
    //   2085: new 121	cp
    //   2088: dup
    //   2089: invokespecial 265	cp:<init>	()V
    //   2092: astore 144
    //   2094: aload 144
    //   2096: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2099: iconst_0
    //   2100: aaload
    //   2101: ldc_w 352
    //   2104: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2107: pop
    //   2108: aload 143
    //   2110: ifnull +16 -> 2126
    //   2113: aload 144
    //   2115: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2118: iconst_2
    //   2119: aaload
    //   2120: aload 143
    //   2122: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2125: pop
    //   2126: aload 144
    //   2128: ifnull -1477 -> 651
    //   2131: aload 7
    //   2133: getfield 272	cc:c	Ljava/util/ArrayList;
    //   2136: aload 144
    //   2138: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2141: pop
    //   2142: goto -1491 -> 651
    //   2145: astore 136
    //   2147: ldc 64
    //   2149: new 66	java/lang/StringBuilder
    //   2152: dup
    //   2153: ldc_w 313
    //   2156: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2159: aload 136
    //   2161: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   2164: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2167: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2170: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2173: goto -1522 -> 651
    //   2176: iload 138
    //   2178: iconst_2
    //   2179: if_icmpne +10 -> 2189
    //   2182: ldc 158
    //   2184: astore 139
    //   2186: goto -205 -> 1981
    //   2189: aconst_null
    //   2190: astore 139
    //   2192: iload 138
    //   2194: ifne -213 -> 1981
    //   2197: aload 10
    //   2199: aload 10
    //   2201: ldc 134
    //   2203: invokeinterface 35 2 0
    //   2208: invokeinterface 253 2 0
    //   2213: astore 140
    //   2215: aload 140
    //   2217: astore 139
    //   2219: goto -238 -> 1981
    //   2222: aload 38
    //   2224: ldc_w 354
    //   2227: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2230: istore 45
    //   2232: iload 45
    //   2234: ifeq +247 -> 2481
    //   2237: new 121	cp
    //   2240: dup
    //   2241: invokespecial 265	cp:<init>	()V
    //   2244: astore 122
    //   2246: aload 122
    //   2248: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2251: iconst_0
    //   2252: aaload
    //   2253: ldc_w 356
    //   2256: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2259: pop
    //   2260: aload 10
    //   2262: ldc 136
    //   2264: invokeinterface 35 2 0
    //   2269: istore 125
    //   2271: aload 10
    //   2273: ldc 180
    //   2275: invokeinterface 35 2 0
    //   2280: istore 126
    //   2282: aload 10
    //   2284: iload 125
    //   2286: invokeinterface 39 2 0
    //   2291: istore 127
    //   2293: aload 10
    //   2295: iload 126
    //   2297: invokeinterface 39 2 0
    //   2302: iconst_1
    //   2303: if_icmpne +124 -> 2427
    //   2306: iconst_1
    //   2307: istore 128
    //   2309: goto +2139 -> 4448
    //   2312: aload 129
    //   2314: ifnull +16 -> 2330
    //   2317: aload 122
    //   2319: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2322: iconst_1
    //   2323: aaload
    //   2324: aload 129
    //   2326: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2329: pop
    //   2330: iload 128
    //   2332: ifeq +9 -> 2341
    //   2335: aload 122
    //   2337: iconst_1
    //   2338: putfield 358	cp:c	Z
    //   2341: aload 10
    //   2343: aload 10
    //   2345: ldc 29
    //   2347: invokeinterface 35 2 0
    //   2352: invokeinterface 253 2 0
    //   2357: astore 131
    //   2359: aload 131
    //   2361: ifnull +16 -> 2377
    //   2364: aload 122
    //   2366: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2369: iconst_2
    //   2370: aaload
    //   2371: aload 131
    //   2373: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2376: pop
    //   2377: aload 122
    //   2379: ifnull -1728 -> 651
    //   2382: aload 7
    //   2384: getfield 272	cc:c	Ljava/util/ArrayList;
    //   2387: aload 122
    //   2389: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2392: pop
    //   2393: goto -1742 -> 651
    //   2396: astore 123
    //   2398: ldc 64
    //   2400: new 66	java/lang/StringBuilder
    //   2403: dup
    //   2404: ldc_w 313
    //   2407: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2410: aload 123
    //   2412: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   2415: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2418: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2421: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2424: goto -1773 -> 651
    //   2427: iconst_0
    //   2428: istore 128
    //   2430: goto +2018 -> 4448
    //   2433: iload 127
    //   2435: bipush 17
    //   2437: if_icmpne +2024 -> 4461
    //   2440: ldc_w 360
    //   2443: astore 129
    //   2445: goto -133 -> 2312
    //   2448: aconst_null
    //   2449: astore 129
    //   2451: iload 127
    //   2453: ifne -141 -> 2312
    //   2456: aload 10
    //   2458: aload 10
    //   2460: ldc 134
    //   2462: invokeinterface 35 2 0
    //   2467: invokeinterface 253 2 0
    //   2472: astore 130
    //   2474: aload 130
    //   2476: astore 129
    //   2478: goto -166 -> 2312
    //   2481: aload 38
    //   2483: ldc 255
    //   2485: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2488: ifeq +20 -> 2508
    //   2491: aload_2
    //   2492: getstatic 176	cc$b:d	Lcc$b;
    //   2495: if_acmpeq -1844 -> 651
    //   2498: aload 10
    //   2500: aload 7
    //   2502: invokestatic 258	bp:a	(Landroid/database/Cursor;Lcq;)V
    //   2505: goto -1854 -> 651
    //   2508: aload 38
    //   2510: ldc_w 362
    //   2513: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2516: ifne -1865 -> 651
    //   2519: aload 38
    //   2521: ldc_w 364
    //   2524: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2527: istore 46
    //   2529: iload 46
    //   2531: ifeq +580 -> 3111
    //   2534: aload 10
    //   2536: aload 10
    //   2538: ldc 29
    //   2540: invokeinterface 35 2 0
    //   2545: invokeinterface 253 2 0
    //   2550: astore 100
    //   2552: aload 100
    //   2554: ifnull +70 -> 2624
    //   2557: aload 100
    //   2559: ldc 160
    //   2561: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2564: ifne +60 -> 2624
    //   2567: new 121	cp
    //   2570: dup
    //   2571: invokespecial 265	cp:<init>	()V
    //   2574: astore 118
    //   2576: aload 118
    //   2578: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2581: iconst_0
    //   2582: aaload
    //   2583: ldc_w 366
    //   2586: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2589: pop
    //   2590: aload 100
    //   2592: ifnull +16 -> 2608
    //   2595: aload 118
    //   2597: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2600: iconst_2
    //   2601: aaload
    //   2602: aload 100
    //   2604: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2607: pop
    //   2608: aload 118
    //   2610: ifnull +14 -> 2624
    //   2613: aload 7
    //   2615: getfield 272	cc:c	Ljava/util/ArrayList;
    //   2618: aload 118
    //   2620: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2623: pop
    //   2624: new 368	bp$b
    //   2627: dup
    //   2628: invokespecial 369	bp$b:<init>	()V
    //   2631: astore 101
    //   2633: aload 10
    //   2635: ldc 136
    //   2637: invokeinterface 35 2 0
    //   2642: istore 102
    //   2644: aload 10
    //   2646: iload 102
    //   2648: invokeinterface 321 2 0
    //   2653: ifne +17 -> 2670
    //   2656: aload 101
    //   2658: aload 10
    //   2660: iload 102
    //   2662: invokeinterface 253 2 0
    //   2667: putfield 370	bp$b:b	Ljava/lang/String;
    //   2670: aload 10
    //   2672: ldc 169
    //   2674: invokeinterface 35 2 0
    //   2679: istore 103
    //   2681: aload 10
    //   2683: iload 103
    //   2685: invokeinterface 321 2 0
    //   2690: ifne +17 -> 2707
    //   2693: aload 101
    //   2695: aload 10
    //   2697: iload 103
    //   2699: invokeinterface 253 2 0
    //   2704: putfield 372	bp$b:c	Ljava/lang/String;
    //   2707: aload 10
    //   2709: ldc 134
    //   2711: invokeinterface 35 2 0
    //   2716: istore 104
    //   2718: aload 10
    //   2720: iload 104
    //   2722: invokeinterface 321 2 0
    //   2727: ifne +17 -> 2744
    //   2730: aload 101
    //   2732: aload 10
    //   2734: iload 104
    //   2736: invokeinterface 253 2 0
    //   2741: putfield 373	bp$b:a	Ljava/lang/String;
    //   2744: aload 10
    //   2746: ldc 167
    //   2748: invokeinterface 35 2 0
    //   2753: istore 105
    //   2755: aload 10
    //   2757: iload 105
    //   2759: invokeinterface 321 2 0
    //   2764: ifne +17 -> 2781
    //   2767: aload 101
    //   2769: aload 10
    //   2771: iload 105
    //   2773: invokeinterface 253 2 0
    //   2778: putfield 374	bp$b:d	Ljava/lang/String;
    //   2781: aload 10
    //   2783: ldc 186
    //   2785: invokeinterface 35 2 0
    //   2790: istore 106
    //   2792: aload 10
    //   2794: iload 106
    //   2796: invokeinterface 321 2 0
    //   2801: ifne +17 -> 2818
    //   2804: aload 101
    //   2806: aload 10
    //   2808: iload 106
    //   2810: invokeinterface 253 2 0
    //   2815: putfield 376	bp$b:e	Ljava/lang/String;
    //   2818: new 121	cp
    //   2821: dup
    //   2822: invokespecial 265	cp:<init>	()V
    //   2825: astore 107
    //   2827: aload 107
    //   2829: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   2832: iconst_0
    //   2833: aaload
    //   2834: ldc_w 378
    //   2837: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2840: pop
    //   2841: new 66	java/lang/StringBuilder
    //   2844: dup
    //   2845: invokespecial 379	java/lang/StringBuilder:<init>	()V
    //   2848: astore 109
    //   2850: iconst_4
    //   2851: newarray char
    //   2853: dup
    //   2854: iconst_0
    //   2855: bipush 92
    //   2857: castore
    //   2858: dup
    //   2859: iconst_1
    //   2860: bipush 59
    //   2862: castore
    //   2863: dup
    //   2864: iconst_2
    //   2865: bipush 13
    //   2867: castore
    //   2868: dup
    //   2869: iconst_3
    //   2870: bipush 10
    //   2872: castore
    //   2873: astore 110
    //   2875: aload 101
    //   2877: getfield 373	bp$b:a	Ljava/lang/String;
    //   2880: ifnull +20 -> 2900
    //   2883: aload 109
    //   2885: aload 101
    //   2887: getfield 373	bp$b:a	Ljava/lang/String;
    //   2890: aload 110
    //   2892: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   2895: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2898: astore 109
    //   2900: aload 109
    //   2902: ldc 126
    //   2904: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2907: astore 111
    //   2909: aload 101
    //   2911: getfield 370	bp$b:b	Ljava/lang/String;
    //   2914: ifnull +20 -> 2934
    //   2917: aload 111
    //   2919: aload 101
    //   2921: getfield 370	bp$b:b	Ljava/lang/String;
    //   2924: aload 110
    //   2926: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   2929: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2932: astore 111
    //   2934: aload 111
    //   2936: ldc 126
    //   2938: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2941: astore 112
    //   2943: aload 101
    //   2945: getfield 372	bp$b:c	Ljava/lang/String;
    //   2948: ifnull +20 -> 2968
    //   2951: aload 112
    //   2953: aload 101
    //   2955: getfield 372	bp$b:c	Ljava/lang/String;
    //   2958: aload 110
    //   2960: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   2963: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2966: astore 112
    //   2968: aload 112
    //   2970: ldc 126
    //   2972: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2975: astore 113
    //   2977: aload 101
    //   2979: getfield 374	bp$b:d	Ljava/lang/String;
    //   2982: ifnull +20 -> 3002
    //   2985: aload 113
    //   2987: aload 101
    //   2989: getfield 374	bp$b:d	Ljava/lang/String;
    //   2992: aload 110
    //   2994: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   2997: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3000: astore 113
    //   3002: aload 113
    //   3004: ldc 126
    //   3006: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3009: astore 114
    //   3011: aload 101
    //   3013: getfield 376	bp$b:e	Ljava/lang/String;
    //   3016: ifnull +20 -> 3036
    //   3019: aload 114
    //   3021: aload 101
    //   3023: getfield 376	bp$b:e	Ljava/lang/String;
    //   3026: aload 110
    //   3028: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3031: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3034: astore 114
    //   3036: aload 114
    //   3038: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3041: astore 115
    //   3043: aload 115
    //   3045: ifnull +16 -> 3061
    //   3048: aload 107
    //   3050: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3053: iconst_2
    //   3054: aaload
    //   3055: aload 115
    //   3057: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3060: pop
    //   3061: aload 107
    //   3063: ifnull -2412 -> 651
    //   3066: aload 7
    //   3068: getfield 272	cc:c	Ljava/util/ArrayList;
    //   3071: aload 107
    //   3073: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   3076: pop
    //   3077: goto -2426 -> 651
    //   3080: astore 99
    //   3082: ldc 64
    //   3084: new 66	java/lang/StringBuilder
    //   3087: dup
    //   3088: ldc_w 386
    //   3091: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   3094: aload 99
    //   3096: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   3099: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3102: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3105: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   3108: goto -2457 -> 651
    //   3111: aload 38
    //   3113: ldc_w 388
    //   3116: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3119: ifeq +740 -> 3859
    //   3122: ldc 64
    //   3124: ldc_w 390
    //   3127: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   3130: new 392	bp$a
    //   3133: dup
    //   3134: invokespecial 393	bp$a:<init>	()V
    //   3137: astore 73
    //   3139: aload 10
    //   3141: ldc 169
    //   3143: invokeinterface 35 2 0
    //   3148: istore 75
    //   3150: aload 10
    //   3152: iload 75
    //   3154: invokeinterface 321 2 0
    //   3159: ifne +17 -> 3176
    //   3162: aload 73
    //   3164: aload 10
    //   3166: iload 75
    //   3168: invokeinterface 253 2 0
    //   3173: putfield 394	bp$a:b	Ljava/lang/String;
    //   3176: aload 10
    //   3178: ldc 186
    //   3180: invokeinterface 35 2 0
    //   3185: istore 76
    //   3187: aload 10
    //   3189: iload 76
    //   3191: invokeinterface 321 2 0
    //   3196: ifne +17 -> 3213
    //   3199: aload 73
    //   3201: aload 10
    //   3203: iload 76
    //   3205: invokeinterface 253 2 0
    //   3210: putfield 395	bp$a:c	Ljava/lang/String;
    //   3213: aload 10
    //   3215: ldc 167
    //   3217: invokeinterface 35 2 0
    //   3222: istore 77
    //   3224: aload 10
    //   3226: iload 77
    //   3228: invokeinterface 321 2 0
    //   3233: ifne +17 -> 3250
    //   3236: aload 73
    //   3238: aload 10
    //   3240: iload 77
    //   3242: invokeinterface 253 2 0
    //   3247: putfield 396	bp$a:a	Ljava/lang/String;
    //   3250: aload 10
    //   3252: ldc 188
    //   3254: invokeinterface 35 2 0
    //   3259: istore 78
    //   3261: aload 10
    //   3263: iload 78
    //   3265: invokeinterface 321 2 0
    //   3270: ifne +17 -> 3287
    //   3273: aload 73
    //   3275: aload 10
    //   3277: iload 78
    //   3279: invokeinterface 253 2 0
    //   3284: putfield 397	bp$a:d	Ljava/lang/String;
    //   3287: aload 10
    //   3289: ldc 190
    //   3291: invokeinterface 35 2 0
    //   3296: istore 79
    //   3298: aload 10
    //   3300: iload 79
    //   3302: invokeinterface 321 2 0
    //   3307: ifne +17 -> 3324
    //   3310: aload 73
    //   3312: aload 10
    //   3314: iload 79
    //   3316: invokeinterface 253 2 0
    //   3321: putfield 398	bp$a:e	Ljava/lang/String;
    //   3324: aload 10
    //   3326: ldc 192
    //   3328: invokeinterface 35 2 0
    //   3333: istore 80
    //   3335: aload 10
    //   3337: iload 80
    //   3339: invokeinterface 321 2 0
    //   3344: ifne +17 -> 3361
    //   3347: aload 73
    //   3349: aload 10
    //   3351: iload 80
    //   3353: invokeinterface 253 2 0
    //   3358: putfield 401	bp$a:f	Ljava/lang/String;
    //   3361: aload 10
    //   3363: ldc 194
    //   3365: invokeinterface 35 2 0
    //   3370: istore 81
    //   3372: aload 10
    //   3374: iload 81
    //   3376: invokeinterface 321 2 0
    //   3381: ifne +17 -> 3398
    //   3384: aload 73
    //   3386: aload 10
    //   3388: iload 81
    //   3390: invokeinterface 253 2 0
    //   3395: putfield 404	bp$a:g	Ljava/lang/String;
    //   3398: new 121	cp
    //   3401: dup
    //   3402: invokespecial 265	cp:<init>	()V
    //   3405: astore 82
    //   3407: aload 82
    //   3409: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3412: iconst_0
    //   3413: aaload
    //   3414: ldc_w 406
    //   3417: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3420: pop
    //   3421: new 66	java/lang/StringBuilder
    //   3424: dup
    //   3425: invokespecial 379	java/lang/StringBuilder:<init>	()V
    //   3428: astore 84
    //   3430: iconst_4
    //   3431: newarray char
    //   3433: dup
    //   3434: iconst_0
    //   3435: bipush 92
    //   3437: castore
    //   3438: dup
    //   3439: iconst_1
    //   3440: bipush 59
    //   3442: castore
    //   3443: dup
    //   3444: iconst_2
    //   3445: bipush 13
    //   3447: castore
    //   3448: dup
    //   3449: iconst_3
    //   3450: bipush 10
    //   3452: castore
    //   3453: astore 85
    //   3455: aload 73
    //   3457: getfield 394	bp$a:b	Ljava/lang/String;
    //   3460: ifnull +20 -> 3480
    //   3463: aload 84
    //   3465: aload 73
    //   3467: getfield 394	bp$a:b	Ljava/lang/String;
    //   3470: aload 85
    //   3472: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3475: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3478: astore 84
    //   3480: aload 84
    //   3482: ldc 126
    //   3484: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3487: astore 86
    //   3489: aload 73
    //   3491: getfield 395	bp$a:c	Ljava/lang/String;
    //   3494: ifnull +20 -> 3514
    //   3497: aload 86
    //   3499: aload 73
    //   3501: getfield 395	bp$a:c	Ljava/lang/String;
    //   3504: aload 85
    //   3506: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3509: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3512: astore 86
    //   3514: aload 86
    //   3516: ldc 126
    //   3518: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3521: astore 87
    //   3523: aload 73
    //   3525: getfield 396	bp$a:a	Ljava/lang/String;
    //   3528: ifnull +20 -> 3548
    //   3531: aload 87
    //   3533: aload 73
    //   3535: getfield 396	bp$a:a	Ljava/lang/String;
    //   3538: aload 85
    //   3540: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3543: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3546: astore 87
    //   3548: aload 87
    //   3550: ldc 126
    //   3552: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3555: astore 88
    //   3557: aload 73
    //   3559: getfield 397	bp$a:d	Ljava/lang/String;
    //   3562: ifnull +20 -> 3582
    //   3565: aload 88
    //   3567: aload 73
    //   3569: getfield 397	bp$a:d	Ljava/lang/String;
    //   3572: aload 85
    //   3574: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3577: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3580: astore 88
    //   3582: aload 88
    //   3584: ldc 126
    //   3586: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3589: astore 89
    //   3591: aload 73
    //   3593: getfield 398	bp$a:e	Ljava/lang/String;
    //   3596: ifnull +20 -> 3616
    //   3599: aload 89
    //   3601: aload 73
    //   3603: getfield 398	bp$a:e	Ljava/lang/String;
    //   3606: aload 85
    //   3608: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3611: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3614: astore 89
    //   3616: aload 89
    //   3618: ldc 126
    //   3620: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3623: astore 90
    //   3625: aload 73
    //   3627: getfield 401	bp$a:f	Ljava/lang/String;
    //   3630: ifnull +20 -> 3650
    //   3633: aload 90
    //   3635: aload 73
    //   3637: getfield 401	bp$a:f	Ljava/lang/String;
    //   3640: aload 85
    //   3642: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3645: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3648: astore 90
    //   3650: aload 90
    //   3652: ldc 126
    //   3654: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3657: astore 91
    //   3659: aload 73
    //   3661: getfield 404	bp$a:g	Ljava/lang/String;
    //   3664: ifnull +20 -> 3684
    //   3667: aload 91
    //   3669: aload 73
    //   3671: getfield 404	bp$a:g	Ljava/lang/String;
    //   3674: aload 85
    //   3676: invokestatic 384	de:a	(Ljava/lang/String;[C)Ljava/lang/String;
    //   3679: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3682: astore 91
    //   3684: aload 91
    //   3686: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3689: astore 92
    //   3691: aload 92
    //   3693: ifnull +16 -> 3709
    //   3696: aload 82
    //   3698: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3701: iconst_2
    //   3702: aaload
    //   3703: aload 92
    //   3705: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3708: pop
    //   3709: aload 10
    //   3711: aload 10
    //   3713: ldc 136
    //   3715: invokeinterface 35 2 0
    //   3720: invokeinterface 39 2 0
    //   3725: istore 93
    //   3727: iload 93
    //   3729: iconst_1
    //   3730: if_icmpne +52 -> 3782
    //   3733: ldc 148
    //   3735: astore 94
    //   3737: aload 94
    //   3739: ifnull +16 -> 3755
    //   3742: aload 82
    //   3744: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3747: iconst_1
    //   3748: aaload
    //   3749: aload 94
    //   3751: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3754: pop
    //   3755: aload 82
    //   3757: ifnull +14 -> 3771
    //   3760: aload 7
    //   3762: getfield 272	cc:c	Ljava/util/ArrayList;
    //   3765: aload 82
    //   3767: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   3770: pop
    //   3771: ldc 64
    //   3773: ldc_w 408
    //   3776: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   3779: goto -3128 -> 651
    //   3782: iload 93
    //   3784: iconst_2
    //   3785: if_icmpne +939 -> 4724
    //   3788: ldc 154
    //   3790: astore 94
    //   3792: goto -55 -> 3737
    //   3795: aconst_null
    //   3796: astore 94
    //   3798: iload 93
    //   3800: ifne -63 -> 3737
    //   3803: aload 10
    //   3805: aload 10
    //   3807: ldc 134
    //   3809: invokeinterface 35 2 0
    //   3814: invokeinterface 253 2 0
    //   3819: astore 95
    //   3821: aload 95
    //   3823: astore 94
    //   3825: goto -88 -> 3737
    //   3828: astore 74
    //   3830: ldc 64
    //   3832: new 66	java/lang/StringBuilder
    //   3835: dup
    //   3836: ldc_w 410
    //   3839: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   3842: aload 74
    //   3844: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   3847: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3850: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3853: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   3856: goto -85 -> 3771
    //   3859: aload 38
    //   3861: ldc_w 412
    //   3864: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3867: istore 47
    //   3869: iload 47
    //   3871: ifeq +112 -> 3983
    //   3874: new 121	cp
    //   3877: dup
    //   3878: invokespecial 265	cp:<init>	()V
    //   3881: astore 67
    //   3883: aload 67
    //   3885: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3888: iconst_0
    //   3889: aaload
    //   3890: ldc_w 414
    //   3893: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3896: pop
    //   3897: aload 10
    //   3899: aload 10
    //   3901: ldc 29
    //   3903: invokeinterface 35 2 0
    //   3908: invokeinterface 253 2 0
    //   3913: astore 70
    //   3915: aload 70
    //   3917: ifnull +16 -> 3933
    //   3920: aload 67
    //   3922: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   3925: iconst_2
    //   3926: aaload
    //   3927: aload 70
    //   3929: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3932: pop
    //   3933: aload 67
    //   3935: ifnull -3284 -> 651
    //   3938: aload 7
    //   3940: getfield 272	cc:c	Ljava/util/ArrayList;
    //   3943: aload 67
    //   3945: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   3948: pop
    //   3949: goto -3298 -> 651
    //   3952: astore 68
    //   3954: ldc 64
    //   3956: new 66	java/lang/StringBuilder
    //   3959: dup
    //   3960: ldc_w 416
    //   3963: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   3966: aload 68
    //   3968: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   3971: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3974: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3977: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   3980: goto -3329 -> 651
    //   3983: aload 38
    //   3985: ldc_w 418
    //   3988: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   3991: istore 48
    //   3993: iload 48
    //   3995: ifeq +128 -> 4123
    //   3998: aload 10
    //   4000: ldc 29
    //   4002: invokeinterface 35 2 0
    //   4007: istore 61
    //   4009: aload 10
    //   4011: iload 61
    //   4013: invokeinterface 321 2 0
    //   4018: ifne -3367 -> 651
    //   4021: new 121	cp
    //   4024: dup
    //   4025: invokespecial 265	cp:<init>	()V
    //   4028: astore 62
    //   4030: aload 62
    //   4032: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   4035: iconst_0
    //   4036: aaload
    //   4037: ldc_w 323
    //   4040: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4043: pop
    //   4044: aload 10
    //   4046: iload 61
    //   4048: invokeinterface 253 2 0
    //   4053: astore 64
    //   4055: aload 64
    //   4057: ifnull +16 -> 4073
    //   4060: aload 62
    //   4062: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   4065: iconst_2
    //   4066: aaload
    //   4067: aload 64
    //   4069: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4072: pop
    //   4073: aload 62
    //   4075: ifnull -3424 -> 651
    //   4078: aload 7
    //   4080: getfield 272	cc:c	Ljava/util/ArrayList;
    //   4083: aload 62
    //   4085: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   4088: pop
    //   4089: goto -3438 -> 651
    //   4092: astore 60
    //   4094: ldc 64
    //   4096: new 66	java/lang/StringBuilder
    //   4099: dup
    //   4100: ldc_w 325
    //   4103: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   4106: aload 60
    //   4108: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   4111: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4114: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4117: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   4120: goto -3469 -> 651
    //   4123: invokestatic 421	de:e	()Lde$a;
    //   4126: getstatic 426	de$a:c	Lde$a;
    //   4129: if_acmpne -3478 -> 651
    //   4132: aload 38
    //   4134: ldc_w 428
    //   4137: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   4140: istore 49
    //   4142: iload 49
    //   4144: ifeq -3493 -> 651
    //   4147: new 121	cp
    //   4150: dup
    //   4151: invokespecial 265	cp:<init>	()V
    //   4154: astore 50
    //   4156: aload 50
    //   4158: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   4161: iconst_0
    //   4162: aaload
    //   4163: ldc_w 334
    //   4166: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4169: pop
    //   4170: aload 50
    //   4172: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   4175: iconst_1
    //   4176: aaload
    //   4177: ldc_w 430
    //   4180: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4183: pop
    //   4184: aload 10
    //   4186: ldc 190
    //   4188: invokeinterface 35 2 0
    //   4193: istore 56
    //   4195: iload 56
    //   4197: iflt -3546 -> 651
    //   4200: aload 10
    //   4202: iload 56
    //   4204: invokeinterface 253 2 0
    //   4209: astore 57
    //   4211: aload 57
    //   4213: ifnull +16 -> 4229
    //   4216: aload 50
    //   4218: getfield 124	cp:a	[Ljava/lang/StringBuilder;
    //   4221: iconst_2
    //   4222: aaload
    //   4223: aload 57
    //   4225: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4228: pop
    //   4229: aload 50
    //   4231: ifnull -3580 -> 651
    //   4234: aload 7
    //   4236: getfield 272	cc:c	Ljava/util/ArrayList;
    //   4239: aload 50
    //   4241: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   4244: pop
    //   4245: goto -3594 -> 651
    //   4248: astore 51
    //   4250: ldc 64
    //   4252: new 66	java/lang/StringBuilder
    //   4255: dup
    //   4256: ldc_w 313
    //   4259: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   4262: aload 51
    //   4264: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   4267: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4270: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4273: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   4276: goto -3625 -> 651
    //   4279: aload 10
    //   4281: ifnull +10 -> 4291
    //   4284: aload 10
    //   4286: invokeinterface 264 1 0
    //   4291: aconst_null
    //   4292: astore 6
    //   4294: goto -4091 -> 203
    //   4297: ldc_w 432
    //   4300: astore 14
    //   4302: goto -3581 -> 721
    //   4305: astore 11
    //   4307: aconst_null
    //   4308: astore 10
    //   4310: goto -2941 -> 1369
    //   4313: astore 9
    //   4315: aconst_null
    //   4316: astore 10
    //   4318: goto -3152 -> 1166
    //   4321: iload 188
    //   4323: iconst_2
    //   4324: if_icmpne +10 -> 4334
    //   4327: ldc 154
    //   4329: astore 187
    //   4331: goto -3714 -> 617
    //   4334: iload 188
    //   4336: iconst_3
    //   4337: if_icmpne -3234 -> 1103
    //   4340: ldc 158
    //   4342: astore 187
    //   4344: goto -3727 -> 617
    //   4347: iload 166
    //   4349: bipush 6
    //   4351: if_icmpne +11 -> 4362
    //   4354: ldc_w 434
    //   4357: astore 167
    //   4359: goto -2866 -> 1493
    //   4362: iload 166
    //   4364: bipush 7
    //   4366: if_icmpne +11 -> 4377
    //   4369: ldc_w 436
    //   4372: astore 167
    //   4374: goto -2881 -> 1493
    //   4377: iload 166
    //   4379: iconst_1
    //   4380: if_icmpne +11 -> 4391
    //   4383: ldc_w 438
    //   4386: astore 167
    //   4388: goto -2895 -> 1493
    //   4391: iload 166
    //   4393: bipush 8
    //   4395: if_icmpne +11 -> 4406
    //   4398: ldc_w 440
    //   4401: astore 167
    //   4403: goto -2910 -> 1493
    //   4406: iload 166
    //   4408: iconst_4
    //   4409: if_icmpne +11 -> 4420
    //   4412: ldc_w 430
    //   4415: astore 167
    //   4417: goto -2924 -> 1493
    //   4420: iload 166
    //   4422: iconst_3
    //   4423: if_icmpne +11 -> 4434
    //   4426: ldc_w 442
    //   4429: astore 167
    //   4431: goto -2938 -> 1493
    //   4434: iload 166
    //   4436: iconst_2
    //   4437: if_icmpne -2826 -> 1611
    //   4440: ldc_w 444
    //   4443: astore 167
    //   4445: goto -2952 -> 1493
    //   4448: iload 127
    //   4450: iconst_3
    //   4451: if_icmpne -2018 -> 2433
    //   4454: ldc 154
    //   4456: astore 129
    //   4458: goto -2146 -> 2312
    //   4461: iload 127
    //   4463: bipush 18
    //   4465: if_icmpne +11 -> 4476
    //   4468: ldc_w 446
    //   4471: astore 129
    //   4473: goto -2161 -> 2312
    //   4476: iload 127
    //   4478: bipush 19
    //   4480: if_icmpne +11 -> 4491
    //   4483: ldc_w 448
    //   4486: astore 129
    //   4488: goto -2176 -> 2312
    //   4491: iload 127
    //   4493: bipush 8
    //   4495: if_icmpne +11 -> 4506
    //   4498: ldc_w 450
    //   4501: astore 129
    //   4503: goto -2191 -> 2312
    //   4506: iload 127
    //   4508: bipush 9
    //   4510: if_icmpne +11 -> 4521
    //   4513: ldc_w 452
    //   4516: astore 129
    //   4518: goto -2206 -> 2312
    //   4521: iload 127
    //   4523: bipush 10
    //   4525: if_icmpne +11 -> 4536
    //   4528: ldc_w 454
    //   4531: astore 129
    //   4533: goto -2221 -> 2312
    //   4536: iload 127
    //   4538: iconst_5
    //   4539: if_icmpne +11 -> 4550
    //   4542: ldc_w 456
    //   4545: astore 129
    //   4547: goto -2235 -> 2312
    //   4550: iload 127
    //   4552: iconst_4
    //   4553: if_icmpne +11 -> 4564
    //   4556: ldc_w 458
    //   4559: astore 129
    //   4561: goto -2249 -> 2312
    //   4564: iload 127
    //   4566: iconst_1
    //   4567: if_icmpne +10 -> 4577
    //   4570: ldc 148
    //   4572: astore 129
    //   4574: goto -2262 -> 2312
    //   4577: iload 127
    //   4579: bipush 11
    //   4581: if_icmpne +11 -> 4592
    //   4584: ldc_w 460
    //   4587: astore 129
    //   4589: goto -2277 -> 2312
    //   4592: iload 127
    //   4594: bipush 12
    //   4596: if_icmpne +11 -> 4607
    //   4599: ldc_w 462
    //   4602: astore 129
    //   4604: goto -2292 -> 2312
    //   4607: iload 127
    //   4609: iconst_2
    //   4610: if_icmpne +10 -> 4620
    //   4613: ldc 156
    //   4615: astore 129
    //   4617: goto -2305 -> 2312
    //   4620: iload 127
    //   4622: bipush 7
    //   4624: if_icmpne +10 -> 4634
    //   4627: ldc 158
    //   4629: astore 129
    //   4631: goto -2319 -> 2312
    //   4634: iload 127
    //   4636: bipush 13
    //   4638: if_icmpne +11 -> 4649
    //   4641: ldc_w 464
    //   4644: astore 129
    //   4646: goto -2334 -> 2312
    //   4649: iload 127
    //   4651: bipush 6
    //   4653: if_icmpne +11 -> 4664
    //   4656: ldc_w 466
    //   4659: astore 129
    //   4661: goto -2349 -> 2312
    //   4664: iload 127
    //   4666: bipush 14
    //   4668: if_icmpne +11 -> 4679
    //   4671: ldc_w 468
    //   4674: astore 129
    //   4676: goto -2364 -> 2312
    //   4679: iload 127
    //   4681: bipush 15
    //   4683: if_icmpne +11 -> 4694
    //   4686: ldc_w 440
    //   4689: astore 129
    //   4691: goto -2379 -> 2312
    //   4694: iload 127
    //   4696: bipush 16
    //   4698: if_icmpne +11 -> 4709
    //   4701: ldc_w 470
    //   4704: astore 129
    //   4706: goto -2394 -> 2312
    //   4709: iload 127
    //   4711: bipush 20
    //   4713: if_icmpne -2265 -> 2448
    //   4716: ldc_w 472
    //   4719: astore 129
    //   4721: goto -2409 -> 2312
    //   4724: iload 93
    //   4726: iconst_3
    //   4727: if_icmpne -932 -> 3795
    //   4730: ldc 158
    //   4732: astore 94
    //   4734: goto -997 -> 3737
    //
    // Exception table:
    //   from	to	target	type
    //   530	651	1133	java/lang/Throwable
    //   1096	1126	1133	java/lang/Throwable
    //   409	474	1164	java/lang/Throwable
    //   498	525	1164	java/lang/Throwable
    //   651	668	1164	java/lang/Throwable
    //   1135	1161	1164	java/lang/Throwable
    //   1207	1217	1164	java/lang/Throwable
    //   1338	1364	1164	java/lang/Throwable
    //   1384	1437	1164	java/lang/Throwable
    //   1568	1594	1164	java/lang/Throwable
    //   1668	1678	1164	java/lang/Throwable
    //   1763	1802	1164	java/lang/Throwable
    //   1887	1925	1164	java/lang/Throwable
    //   2147	2173	1164	java/lang/Throwable
    //   2222	2232	1164	java/lang/Throwable
    //   2398	2424	1164	java/lang/Throwable
    //   2481	2529	1164	java/lang/Throwable
    //   3082	3130	1164	java/lang/Throwable
    //   3771	3779	1164	java/lang/Throwable
    //   3830	3869	1164	java/lang/Throwable
    //   3954	3993	1164	java/lang/Throwable
    //   4094	4142	1164	java/lang/Throwable
    //   4250	4276	1164	java/lang/Throwable
    //   1222	1333	1336	java/lang/Throwable
    //   409	474	1367	finally
    //   498	525	1367	finally
    //   530	651	1367	finally
    //   651	668	1367	finally
    //   1096	1126	1367	finally
    //   1135	1161	1367	finally
    //   1166	1192	1367	finally
    //   1207	1217	1367	finally
    //   1222	1333	1367	finally
    //   1338	1364	1367	finally
    //   1384	1437	1367	finally
    //   1442	1563	1367	finally
    //   1568	1594	1367	finally
    //   1603	1661	1367	finally
    //   1668	1678	1367	finally
    //   1683	1758	1367	finally
    //   1763	1802	1367	finally
    //   1807	1882	1367	finally
    //   1887	1925	1367	finally
    //   1930	2142	1367	finally
    //   2147	2173	1367	finally
    //   2182	2215	1367	finally
    //   2222	2232	1367	finally
    //   2237	2393	1367	finally
    //   2398	2424	1367	finally
    //   2440	2474	1367	finally
    //   2481	2529	1367	finally
    //   2534	3077	1367	finally
    //   3082	3130	1367	finally
    //   3130	3771	1367	finally
    //   3771	3779	1367	finally
    //   3788	3821	1367	finally
    //   3830	3869	1367	finally
    //   3874	3949	1367	finally
    //   3954	3993	1367	finally
    //   3998	4089	1367	finally
    //   4094	4142	1367	finally
    //   4147	4245	1367	finally
    //   4250	4276	1367	finally
    //   1442	1563	1566	java/lang/Throwable
    //   1603	1661	1566	java/lang/Throwable
    //   1683	1758	1761	java/lang/Throwable
    //   1807	1882	1885	java/lang/Throwable
    //   1930	2142	2145	java/lang/Throwable
    //   2182	2215	2145	java/lang/Throwable
    //   2237	2393	2396	java/lang/Throwable
    //   2440	2474	2396	java/lang/Throwable
    //   2534	3077	3080	java/lang/Throwable
    //   3130	3771	3828	java/lang/Throwable
    //   3788	3821	3828	java/lang/Throwable
    //   3874	3949	3952	java/lang/Throwable
    //   3998	4089	4092	java/lang/Throwable
    //   4147	4245	4248	java/lang/Throwable
    //   377	400	4305	finally
    //   377	400	4313	java/lang/Throwable
  }

  private static void a(Cursor paramCursor, cq paramcq)
  {
    try
    {
      int i = paramCursor.getColumnIndex("data15");
      if (!paramCursor.isNull(i))
      {
        byte[] arrayOfByte = paramCursor.getBlob(i);
        if (arrayOfByte != null)
        {
          cp localcp = new cp();
          localcp.a[0].append("PHOTO");
          localcp.b = arrayOfByte;
          if (localcp != null)
            paramcq.c.add(localcp);
        }
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        dk.c("SYSContactDaoV2", "getEmail Throwable " + localThrowable.getMessage());
    }
  }

  private void a(cc paramcc, ArrayList<ContentProviderOperation> paramArrayList, int paramInt, AtomicBoolean paramAtomicBoolean, bm parambm)
  {
    if ((paramcc == null) || (paramArrayList == null) || (paramInt < 100) || (paramInt > 101))
    {
      dk.b("SYSContactDaoV2", "getOperationFromEntity leave  参数不合法 ");
      return;
    }
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int i;
    label91: int j;
    label111: Object localObject1;
    label157: Object localObject2;
    label435: label484: int i1;
    label533: Object localObject6;
    label568: label639: Object localObject5;
    Object localObject3;
    Object localObject4;
    while (true)
    {
      ContentProviderOperation.Builder localBuilder9;
      try
      {
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
        if (paramInt != 101)
          break label1981;
        i = Integer.valueOf(paramcc.b).intValue();
        this.b = false;
        if (paramcc.c.size() <= 0)
          break label1987;
        paramcc.d = Integer.valueOf(0);
        break label1987;
        if (paramcc.d.intValue() >= paramcc.c.size())
          break label2047;
        j = 0;
        if (j == 0)
          break label639;
        if ((!ci.D) || (!";".equals(localObject1.a[2].toString())))
          break label1996;
        localObject1.a[2].append("未命名");
        break label1996;
        localBuilder9 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if (paramInt != 100)
          break label1813;
        localBuilder9 = localBuilder9.withValueBackReference("raw_contact_id", i);
        ContentProviderOperation.Builder localBuilder10 = localBuilder9.withValue("mimetype", "vnd.android.cursor.item/name");
        if (localObject2 != null)
          localBuilder10 = localBuilder10.withValue("data1", localObject2.a[2].toString());
        if (localObject1 != null)
        {
          bp.b localb = new bp.b(localObject1.a[2].toString());
          if ((localb.b != null) && (!localb.b.equals("")))
            localBuilder10.withValue("data2", localb.b);
          if ((localb.c != null) && (!localb.c.equals("")))
            localBuilder10.withValue("data5", localb.c);
          if ((localb.a != null) && (!localb.a.equals("")))
            localBuilder10.withValue("data3", localb.a);
          if ((localb.d != null) && (!localb.d.equals("")))
            localBuilder10.withValue("data4", localb.d);
          if ((localb.e != null) && (!localb.e.equals("")))
            localBuilder10.withValue("data6", localb.e);
        }
        ContentProviderOperation localContentProviderOperation10 = localBuilder10.build();
        if (localContentProviderOperation10 != null)
          paramArrayList.add(localContentProviderOperation10);
        if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0))
        {
          if (localArrayList1.size() <= localArrayList2.size())
            break label1836;
          m = localArrayList1.size();
          break label2009;
        }
        if ((!ci.I) || (this.b) || (this.c == null) || (paramArrayList == null))
          break;
        this.c.a();
        if (!ci.J)
          break label1927;
        i1 = this.c.b("AllBlurContacts");
        if (i1 == -1)
          break;
        localObject6 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if (paramInt != 100)
          break label1948;
        localObject6 = ((ContentProviderOperation.Builder)localObject6).withValueBackReference("raw_contact_id", i);
        ContentProviderOperation localContentProviderOperation11 = ((ContentProviderOperation.Builder)localObject6).withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Integer.valueOf(i1)).build();
        if (localContentProviderOperation11 == null)
          break;
        paramArrayList.add(localContentProviderOperation11);
      }
      catch (Throwable localThrowable)
      {
        dk.c("SYSContactDaoV2", "getOperationFromEntity  Throwable " + localThrowable.getMessage());
      }
      break;
      cp localcp1 = paramcc.b();
      paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
      if (localcp1 != null)
      {
        String str1 = localcp1.a[0].toString();
        if (str1.equals("FN"))
        {
          localObject5 = null;
          localObject3 = localObject1;
          localObject4 = localcp1;
        }
        while (true)
        {
          label700: if (localObject5 == null)
            break label2022;
          paramArrayList.add(localObject5);
          break label2022;
          if (str1.equals("N"))
          {
            localObject4 = localObject2;
            localObject3 = localcp1;
            localObject5 = null;
          }
          else
          {
            if (str1.equals("TEL"))
            {
              ContentProviderOperation.Builder localBuilder5 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
              label780: String str2;
              int k;
              ContentProviderOperation.Builder localBuilder7;
              if (paramInt == 100)
              {
                localBuilder5 = localBuilder5.withValueBackReference("raw_contact_id", i);
                ContentProviderOperation.Builder localBuilder6 = localBuilder5.withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", localcp1.a[2].toString());
                str2 = localcp1.a[1].toString();
                k = f(str2);
                localBuilder7 = localBuilder6.withValue("data2", Integer.valueOf(k));
                if (!localcp1.c)
                  break label931;
              }
              label931: for (ContentProviderOperation.Builder localBuilder8 = localBuilder7.withValue("is_primary", Integer.valueOf(1)).withValue("is_super_primary", Integer.valueOf(1)); ; localBuilder8 = localBuilder7.withValue("is_primary", Integer.valueOf(0)).withValue("is_super_primary", Integer.valueOf(0)))
              {
                if (k == 0)
                  localBuilder8 = localBuilder8.withValue("data3", str2);
                ContentProviderOperation localContentProviderOperation9 = localBuilder8.build();
                localObject3 = localObject1;
                localObject4 = localObject2;
                localObject5 = localContentProviderOperation9;
                break;
                if (paramInt != 101)
                  break label780;
                localBuilder5 = localBuilder5.withValue("raw_contact_id", Integer.valueOf(i));
                break label780;
              }
            }
            if (str1.equals("ADR"))
            {
              ContentProviderOperation localContentProviderOperation8 = b(localcp1, i, paramInt);
              localObject3 = localObject1;
              localObject4 = localObject2;
              localObject5 = localContentProviderOperation8;
            }
            else if (str1.equals("EMAIL"))
            {
              ContentProviderOperation localContentProviderOperation7 = a(localcp1, i, paramInt);
              localObject3 = localObject1;
              localObject4 = localObject2;
              localObject5 = localContentProviderOperation7;
            }
            else
            {
              if (str1.equals("NICKNAME"))
              {
                ContentProviderOperation.Builder localBuilder4 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
                if (paramInt == 100)
                  localBuilder4 = localBuilder4.withValueBackReference("raw_contact_id", i);
                while (true)
                {
                  ContentProviderOperation localContentProviderOperation6 = localBuilder4.withValue("mimetype", "vnd.android.cursor.item/nickname").withValue("data1", localcp1.a[2].toString()).withValue("data2", Integer.valueOf(1)).build();
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = localContentProviderOperation6;
                  break;
                  if (paramInt == 101)
                    localBuilder4 = localBuilder4.withValue("raw_contact_id", Integer.valueOf(i));
                }
              }
              if (str1.equals("NOTE"))
              {
                ContentProviderOperation.Builder localBuilder3 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
                if (paramInt == 100)
                  localBuilder3 = localBuilder3.withValueBackReference("raw_contact_id", i);
                while (true)
                {
                  ContentProviderOperation localContentProviderOperation5 = localBuilder3.withValue("mimetype", "vnd.android.cursor.item/note").withValue("data1", localcp1.a[2].toString()).build();
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = localContentProviderOperation5;
                  break;
                  if (paramInt == 101)
                    localBuilder3 = localBuilder3.withValue("raw_contact_id", Integer.valueOf(i));
                }
              }
              if (str1.equals("ORG"))
              {
                localArrayList1.add(localcp1);
                localObject3 = localObject1;
                localObject4 = localObject2;
                localObject5 = null;
              }
              else if (str1.equals("TITLE"))
              {
                localArrayList2.add(localcp1);
                localObject3 = localObject1;
                localObject4 = localObject2;
                localObject5 = null;
              }
              else
              {
                if (str1.equals("PHOTO"))
                {
                  ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
                  if (paramInt == 100)
                    localBuilder2 = localBuilder2.withValueBackReference("raw_contact_id", i);
                  while (true)
                  {
                    ContentProviderOperation localContentProviderOperation4 = localBuilder2.withValue("mimetype", "vnd.android.cursor.item/photo").withValue("data15", localcp1.b).build();
                    localObject3 = localObject1;
                    localObject4 = localObject2;
                    localObject5 = localContentProviderOperation4;
                    break;
                    if (paramInt == 101)
                      localBuilder2 = localBuilder2.withValue("raw_contact_id", Integer.valueOf(i));
                  }
                }
                if (str1.equals("URL"))
                {
                  ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
                  if (paramInt == 100)
                    localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", i);
                  while (true)
                  {
                    ContentProviderOperation localContentProviderOperation3 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/website").withValue("data1", localcp1.a[2].toString()).withValue("data2", Integer.valueOf(4)).build();
                    localObject3 = localObject1;
                    localObject4 = localObject2;
                    localObject5 = localContentProviderOperation3;
                    break;
                    if (paramInt == 101)
                      localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(i));
                  }
                }
                if (str1.equals("X-TC-IM"))
                {
                  ContentProviderOperation localContentProviderOperation2 = d(localcp1, i, paramInt);
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = localContentProviderOperation2;
                }
                else if (str1.equals("BDAY"))
                {
                  ContentProviderOperation localContentProviderOperation1 = c(localcp1, i, paramInt);
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = localContentProviderOperation1;
                }
                else if (str1.equals("X-FOCUS"))
                {
                  boolean bool = localcp1.a[2].toString().equals("1");
                  if (paramAtomicBoolean == null)
                    break label2033;
                  paramAtomicBoolean.set(bool);
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = null;
                }
                else if (str1.equals("CATEGORIES"))
                {
                  a(paramArrayList, localcp1, i, paramInt);
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = null;
                }
                else if (str1.equals("ACCOUNTNAME"))
                {
                  parambm.a = localcp1.a[2].toString();
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = null;
                }
                else
                {
                  if (!str1.equals("ACCOUNTTYPE"))
                    break;
                  parambm.b = localcp1.a[2].toString();
                  localObject3 = localObject1;
                  localObject4 = localObject2;
                  localObject5 = null;
                }
              }
            }
          }
        }
        if (!str1.equals("RINGTONE"))
          break label2033;
        parambm.d = localcp1.a[2].toString();
        break label2033;
        label1813: if (paramInt == 101)
          localBuilder9 = localBuilder9.withValue("raw_contact_id", Integer.valueOf(i));
      }
    }
    label1836: int m = localArrayList2.size();
    break label2009;
    label1848: int n;
    cp localcp2;
    if (n < localArrayList1.size())
    {
      localcp2 = (cp)localArrayList1.get(n);
      label1874: if (n >= localArrayList2.size())
        break label2065;
    }
    label1927: label2057: label2065: for (cp localcp3 = (cp)localArrayList2.get(n); ; localcp3 = null)
    {
      ContentProviderOperation localContentProviderOperation12 = a(localcp2, localcp3, i, paramInt);
      if (localContentProviderOperation12 != null)
      {
        paramArrayList.add(localContentProviderOperation12);
        break label2053;
        if (ci.K)
        {
          i1 = this.c.b("简明地址簿");
          break label533;
          label1948: if (paramInt != 101)
            break label568;
          ContentProviderOperation.Builder localBuilder11 = ((ContentProviderOperation.Builder)localObject6).withValue("raw_contact_id", Integer.valueOf(i));
          localObject6 = localBuilder11;
          break label568;
        }
        i1 = -1;
        break label533;
        label1981: i = 0;
        break;
        label1987: localObject1 = null;
        localObject2 = null;
        break label91;
        label1996: if (localObject2 != null)
          break label157;
        if (localObject1 == null)
          break label435;
        break label157;
      }
      label2009: for (n = 0; ; n++)
      {
        if (n < m)
          break label2057;
        break label484;
        label2022: localObject2 = localObject4;
        localObject1 = localObject3;
        break;
        label2033: localObject3 = localObject1;
        localObject4 = localObject2;
        localObject5 = null;
        break label700;
        label2047: j = 1;
        break label111;
      }
      break label1848;
      localcp2 = null;
      break label1874;
    }
  }

  private void a(ArrayList<ContentProviderOperation> paramArrayList, cp paramcp, int paramInt1, int paramInt2)
  {
    if ((this.c == null) || (paramArrayList == null) || (paramcp == null) || (ci.u));
    label56: long l;
    do
    {
      return;
      String str1 = paramcp.a[2].toString();
      ArrayList localArrayList = new ArrayList();
      a(str1, localArrayList);
      Iterator localIterator = localArrayList.iterator();
      if (!localIterator.hasNext())
        break;
      String str2 = (String)localIterator.next();
      if (ci.o)
        this.c.a();
      if ((ci.I) && (("AllBlurContacts".equals(str2)) || ("简明地址簿".equals(str2))))
        this.b = true;
      int i = this.c.b(str2);
      if (i != -1)
      {
        ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if (paramInt2 == 100)
          localBuilder2 = localBuilder2.withValueBackReference("raw_contact_id", paramInt1);
        while (true)
        {
          ContentProviderOperation localContentProviderOperation2 = localBuilder2.withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Integer.valueOf(i)).build();
          if (localContentProviderOperation2 == null)
            break;
          paramArrayList.add(localContentProviderOperation2);
          break;
          if (paramInt2 == 101)
            localBuilder2 = localBuilder2.withValue("raw_contact_id", Integer.valueOf(paramInt1));
        }
      }
      l = bs.a(str2);
    }
    while (-1L == l);
    this.c.a();
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    if (paramInt2 == 100)
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
    while (true)
    {
      ContentProviderOperation localContentProviderOperation1 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Long.valueOf(l)).build();
      if (localContentProviderOperation1 == null)
        break label56;
      paramArrayList.add(localContentProviderOperation1);
      break label56;
      break;
      if (paramInt2 == 101)
        localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
    }
  }

  private static long[] a(ArrayList<cc> paramArrayList)
  {
    int i = 0;
    int j = paramArrayList.size();
    long[] arrayOfLong1 = new long[j];
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    while (true)
    {
      if (k >= j);
      try
      {
        arrayOfContentProviderResult = a.applyBatch("com.android.contacts", localArrayList);
        if (i >= j)
        {
          arrayOfLong2 = arrayOfLong1;
          return arrayOfLong2;
          cq localcq = (cq)paramArrayList.get(k);
          localObject1 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("aggregation_mode", Integer.valueOf(3)).withYieldAllowed(true).withValue("dirty", "1");
          if (localcq == null)
            break label543;
          localcq.g();
          bool2 = localcq.d();
          if ((localcq.f().length() <= 0) || (localcq.e().length() <= 0))
            break label536;
          localObject2 = ((ContentProviderOperation.Builder)localObject1).withValue("account_name", localcq.f()).withValue("account_type", localcq.e());
          if (ci.s)
          {
            localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "Phone contacts").withValue("account_type", "com.sonyericsson.localcontacts");
            bool1 = bool2;
            label192: if (!bool1)
              break label421;
          }
          label421: for (String str = "1"; ; str = "0")
          {
            localArrayList.add(((ContentProviderOperation.Builder)localObject1).withValue("starred", str).build());
            k++;
            break;
            if (ci.v)
            {
              localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "Contacts").withValue("account_type", "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT").withValue("sync1", Integer.valueOf(0)).withValue("sync3", "blur");
              bool1 = bool2;
              break label192;
            }
            if (ci.x)
            {
              localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "vnd.sec.contact.phone").withValue("account_type", "vnd.sec.contact.phone");
              bool1 = bool2;
              break label192;
            }
            if (ci.k)
            {
              localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "Phone").withValue("account_type", "com.android.acersync");
              bool1 = bool2;
              break label192;
            }
            if (ci.B)
            {
              localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "local-contacts").withValue("account_type", "com.local.contacts");
              bool1 = bool2;
              break label192;
            }
            if (!ci.F)
              break label525;
            localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("account_name", "LG PC Suite").withValue("account_type", "com.mobileleader.sync");
            bool1 = bool2;
            break label192;
          }
        }
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          dk.c("SYSContactDaoV2", "insertBatchIds(), " + localRemoteException.toString());
          arrayOfLong2 = null;
        }
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        while (true)
        {
          ContentProviderResult[] arrayOfContentProviderResult;
          boolean bool2;
          dk.c("SYSContactDaoV2", "insertBatchIds(), " + localOperationApplicationException.toString());
          long[] arrayOfLong2 = null;
          continue;
          arrayOfLong1[i] = Long.valueOf(String.valueOf(ContentUris.parseId(arrayOfContentProviderResult[i].uri))).longValue();
          i++;
          continue;
          label525: Object localObject1 = localObject2;
          boolean bool1 = bool2;
          continue;
          label536: Object localObject2 = localObject1;
          continue;
          label543: bool1 = false;
        }
      }
    }
  }

  private static ContentProviderOperation b(cp paramcp, int paramInt1, int paramInt2)
  {
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    ContentProviderOperation.Builder localBuilder2;
    String[] arrayOfString;
    int j;
    int k;
    int m;
    int i;
    ContentProviderOperation.Builder localBuilder3;
    if (paramInt2 == 100)
    {
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
      localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/postal-address_v2");
      String str = paramcp.a[1].toString();
      if (str == null)
        break label432;
      arrayOfString = str.split(";");
      j = 0;
      k = 0;
      m = 0;
      if ((k == 0) && (j < arrayOfString.length))
        break label319;
      if (m != 0)
        break label421;
      ContentProviderOperation.Builder localBuilder5 = localBuilder2.withValue("data3", str);
      i = m;
      localBuilder3 = localBuilder5;
    }
    while (true)
    {
      ContentProviderOperation.Builder localBuilder4 = localBuilder3.withValue("data2", Integer.valueOf(i));
      bp.a locala = new bp.a(paramcp.a[2].toString());
      if (locala.d != null)
        localBuilder4 = localBuilder4.withValue("data7", locala.d);
      if (locala.g != null)
        localBuilder4 = localBuilder4.withValue("data10", locala.g);
      if (locala.c != null)
        localBuilder4 = localBuilder4.withValue("data6", locala.c);
      if (locala.b != null)
        localBuilder4 = localBuilder4.withValue("data5", locala.b);
      if (locala.f != null)
        localBuilder4 = localBuilder4.withValue("data9", locala.f);
      if (locala.e != null)
        localBuilder4 = localBuilder4.withValue("data8", locala.e);
      if (locala.a != null)
        localBuilder4 = localBuilder4.withValue("data4", locala.a);
      return localBuilder4.build();
      if (paramInt2 != 101)
        break;
      localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
      break;
      label319: int i1;
      int n;
      if (arrayOfString[j].equals("WORK"))
      {
        i1 = 1;
        n = 2;
      }
      while (true)
      {
        j++;
        int i2 = i1;
        m = n;
        k = i2;
        break;
        if (arrayOfString[j].equals("HOME"))
        {
          i1 = 1;
          n = 1;
        }
        else if ((arrayOfString[j].equals("OTHER")) || (arrayOfString[j].length() == 0))
        {
          n = 3;
          i1 = 1;
        }
        else
        {
          n = m;
          i1 = 0;
        }
      }
      label421: i = m;
      localBuilder3 = localBuilder2;
      continue;
      label432: localBuilder3 = localBuilder2;
      i = 0;
    }
  }

  private boolean b(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    dk.b("SYSContactDaoV2", "addOneByOne entry");
    int i = paramArrayList.size();
    int j = 0;
    if (j >= i)
      return true;
    String str = a((cc)paramArrayList.get(j));
    paramArrayList1.add(str);
    if (str == null)
    {
      paramArrayOfInt[j] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
      dk.b("SYSContactDaoV2", "addOneByOne retErrs[i]=" + paramArrayOfInt[j] + " i=" + j);
    }
    while (true)
    {
      j++;
      break;
      paramArrayOfInt[j] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
      dk.b("SYSContactDaoV2", "addOneByOne retErrs[i]=" + paramArrayOfInt[j] + " i=" + j);
    }
  }

  private static ContentProviderOperation c(cp paramcp, int paramInt1, int paramInt2)
  {
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    String str2;
    SimpleDateFormat localSimpleDateFormat;
    if (paramInt2 == 100)
    {
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
      if (!ci.f)
        break label182;
      str2 = paramcp.a[2].toString();
      localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    }
    while (true)
    {
      try
      {
        Date localDate2 = localSimpleDateFormat.parse(str2);
        localDate1 = localDate2;
        String str3 = localDate1.getTime() + TimeZone.getDefault().getRawOffset();
        localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data2", Integer.valueOf(3)).withValue("data1", str3);
        return localBuilder2.build();
        if (paramInt2 != 101)
          break;
        localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
      }
      catch (ParseException localParseException)
      {
        dk.c("SYSContactDaoV2", "getOperationFromEvent(), " + localParseException.toString());
        Date localDate1 = null;
        continue;
      }
      label182: if (ci.p)
      {
        String[] arrayOfString = paramcp.a[2].toString().split("-");
        String str1 = "";
        int i = arrayOfString.length;
        for (int j = 0; ; j++)
        {
          if (j >= i)
          {
            localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.huawei.cursor.item/google_extension").withValue("data2", Integer.valueOf(3)).withValue("data1", str1);
            break;
          }
          str1 = str1 + arrayOfString[j];
        }
      }
      ContentProviderOperation.Builder localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data2", Integer.valueOf(3)).withValue("data1", paramcp.a[2].toString());
    }
  }

  private static boolean c(cc paramcc)
  {
    if (paramcc != null);
    while (true)
    {
      try
      {
        ContentResolver localContentResolver = a;
        Uri localUri = ContactsContract.Data.CONTENT_URI;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = paramcc.b;
        int i = localContentResolver.delete(localUri, "raw_contact_id=?", arrayOfString);
        bool = false;
        if (i <= 0)
          return bool;
      }
      catch (Throwable localThrowable)
      {
        dk.c("SYSContactDaoV2", "clearEntity Throwable " + localThrowable.getMessage());
      }
      boolean bool = true;
    }
  }

  private static ContentProviderOperation d(cp paramcp, int paramInt1, int paramInt2)
  {
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
    ContentProviderOperation.Builder localBuilder2;
    String[] arrayOfString;
    int j;
    int k;
    int i;
    ContentProviderOperation.Builder localBuilder3;
    if (paramInt2 == 100)
    {
      localBuilder1 = localBuilder1.withValueBackReference("raw_contact_id", paramInt1);
      localBuilder2 = localBuilder1.withValue("mimetype", "vnd.android.cursor.item/im").withValue("data2", Integer.valueOf(3));
      String str1 = paramcp.a[1].toString();
      if (str1 == null)
        break label503;
      arrayOfString = str1.split(";");
      j = 0;
      k = 0;
      i = -1;
      if ((k == 0) && (j < arrayOfString.length))
        break label208;
      if (i != -1)
        break label496;
      localBuilder3 = localBuilder2.withValue("data6", str1);
    }
    while (true)
    {
      String str2;
      ContentProviderOperation.Builder localBuilder5;
      if ((i == 4) && (de.e() == de.a.c))
      {
        str2 = paramcp.a[2].toString();
        localBuilder5 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if (paramInt2 == 100)
          localBuilder5 = localBuilder5.withValueBackReference("raw_contact_id", paramInt1);
      }
      label163: for (ContentProviderOperation.Builder localBuilder4 = localBuilder5.withValue("mimetype", "vnd.android.cursor.item/qqnumber").withValue("data8", str2); ; localBuilder4 = localBuilder3.withValue("data5", Integer.valueOf(i)).withValue("data1", paramcp.a[2].toString()))
      {
        return localBuilder4.build();
        if (paramInt2 != 101)
          break;
        localBuilder1 = localBuilder1.withValue("raw_contact_id", Integer.valueOf(paramInt1));
        break;
        label208: int m;
        int n;
        if (arrayOfString[j].equals("QQ"))
        {
          m = 4;
          n = 1;
        }
        while (true)
        {
          j++;
          int i1 = n;
          i = m;
          k = i1;
          break;
          if (arrayOfString[j].equals("MSN"))
          {
            n = 1;
            m = 1;
          }
          else if (arrayOfString[j].equals("AIM"))
          {
            n = 1;
            m = 0;
          }
          else if (arrayOfString[j].equals("GTALK"))
          {
            m = 5;
            n = 1;
          }
          else if (arrayOfString[j].equals("ICQ"))
          {
            m = 6;
            n = 1;
          }
          else if (arrayOfString[j].equals("SKYPE"))
          {
            n = 1;
            m = 3;
          }
          else if (arrayOfString[j].equals("JABBER"))
          {
            m = 7;
            n = 1;
          }
          else if (arrayOfString[j].equals("YAHOO"))
          {
            n = 1;
            m = 2;
          }
          else if (arrayOfString[j].equals("X-NETMEETING"))
          {
            m = 8;
            n = 1;
          }
          else
          {
            m = i;
            n = 0;
          }
        }
        if (paramInt2 != 101)
          break label163;
        localBuilder5 = localBuilder5.withValue("raw_contact_id", Integer.valueOf(paramInt1));
        break label163;
      }
      label496: localBuilder3 = localBuilder2;
      continue;
      label503: i = -1;
      localBuilder3 = localBuilder2;
    }
  }

  // ERROR //
  private static bm e(String paramString)
  {
    // Byte code:
    //   0: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   3: aload_0
    //   4: invokestatic 757	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   7: astore 5
    //   9: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   12: aload 5
    //   14: iconst_4
    //   15: anewarray 128	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: ldc_w 617
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc_w 606
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc_w 608
    //   35: aastore
    //   36: dup
    //   37: iconst_3
    //   38: ldc_w 759
    //   41: aastore
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 6
    //   50: aload 6
    //   52: astore_2
    //   53: aload_2
    //   54: ifnull +98 -> 152
    //   57: aload_2
    //   58: invokeinterface 762 1 0
    //   63: ifeq +89 -> 152
    //   66: aload_2
    //   67: iconst_0
    //   68: invokeinterface 39 2 0
    //   73: istore 7
    //   75: aload_2
    //   76: iconst_1
    //   77: invokeinterface 253 2 0
    //   82: astore 8
    //   84: aload_2
    //   85: iconst_2
    //   86: invokeinterface 253 2 0
    //   91: astore 9
    //   93: aload_2
    //   94: iconst_3
    //   95: invokeinterface 253 2 0
    //   100: astore 10
    //   102: new 222	bm
    //   105: dup
    //   106: invokespecial 763	bm:<init>	()V
    //   109: astore 4
    //   111: aload 4
    //   113: iload 7
    //   115: putfield 225	bm:c	I
    //   118: aload 4
    //   120: aload 8
    //   122: putfield 289	bm:a	Ljava/lang/String;
    //   125: aload 4
    //   127: aload 9
    //   129: putfield 293	bm:b	Ljava/lang/String;
    //   132: aload 4
    //   134: aload 10
    //   136: putfield 297	bm:d	Ljava/lang/String;
    //   139: aload_2
    //   140: ifnull +9 -> 149
    //   143: aload_2
    //   144: invokeinterface 264 1 0
    //   149: aload 4
    //   151: areturn
    //   152: aload_2
    //   153: ifnull +9 -> 162
    //   156: aload_2
    //   157: invokeinterface 264 1 0
    //   162: aconst_null
    //   163: astore 4
    //   165: goto -16 -> 149
    //   168: astore_3
    //   169: aconst_null
    //   170: astore_2
    //   171: ldc 64
    //   173: new 66	java/lang/StringBuilder
    //   176: dup
    //   177: ldc_w 765
    //   180: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   183: aload_3
    //   184: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   187: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   196: aload_2
    //   197: ifnull +9 -> 206
    //   200: aload_2
    //   201: invokeinterface 264 1 0
    //   206: aconst_null
    //   207: astore 4
    //   209: goto -60 -> 149
    //   212: astore_1
    //   213: aconst_null
    //   214: astore_2
    //   215: aload_2
    //   216: ifnull +9 -> 225
    //   219: aload_2
    //   220: invokeinterface 264 1 0
    //   225: aload_1
    //   226: athrow
    //   227: astore_1
    //   228: goto -13 -> 215
    //   231: astore_3
    //   232: goto -61 -> 171
    //
    // Exception table:
    //   from	to	target	type
    //   0	50	168	java/lang/Throwable
    //   0	50	212	finally
    //   57	139	227	finally
    //   171	196	227	finally
    //   57	139	231	java/lang/Throwable
  }

  private static int f(String paramString)
  {
    int i = 7;
    int j = 1;
    int k = 0;
    if (paramString.length() == 0)
      return i;
    while (true)
    {
      int m;
      try
      {
        String[] arrayOfString = paramString.split(";");
        m = 0;
        int n = 0;
        int i1 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        if (m >= arrayOfString.length)
        {
          if (i5 != 0)
          {
            if (i1 == 0)
              break label518;
            j = 5;
            break label518;
          }
        }
        else
        {
          if (arrayOfString[m].equals("HOME"))
          {
            i5 = j;
            break label523;
          }
          if (arrayOfString[m].equals("WORK"))
          {
            i4 = j;
            break label523;
          }
          if (arrayOfString[m].equals("CELL"))
          {
            i3 = j;
            break label523;
          }
          if (arrayOfString[m].equals("FAX"))
          {
            i1 = j;
            break label523;
          }
          if (arrayOfString[m].equals("PAGER"))
          {
            i2 = j;
            break label523;
          }
          if (arrayOfString[m].equals("OTHER"))
          {
            n = j;
            break label523;
          }
          if (arrayOfString[m].equals("X-CALLBACK"))
          {
            k = 8;
            break label523;
          }
          if (arrayOfString[m].equals("CAR"))
          {
            k = 9;
            break label523;
          }
          if (arrayOfString[m].equals("X-COMPANY"))
          {
            k = 10;
            break label523;
          }
          if (arrayOfString[m].equals("X-ISDN"))
          {
            k = 11;
            break label523;
          }
          if (arrayOfString[m].equals("X-MAIN"))
          {
            k = 12;
            break label523;
          }
          if (arrayOfString[m].equals("RADIO"))
          {
            k = 14;
            break label523;
          }
          if (arrayOfString[m].equals("X-TELEX"))
          {
            k = 15;
            break label523;
          }
          if (arrayOfString[m].equals("X-TTY"))
          {
            k = 16;
            break label523;
          }
          if (arrayOfString[m].equals("X-ASSISTANT"))
          {
            k = 19;
            break label523;
          }
          boolean bool = arrayOfString[m].equals("X-MMS");
          if (!bool)
            break label523;
          k = 20;
          break label523;
        }
        if (i4 != 0)
        {
          if (i1 != 0)
            j = 4;
          else if (i2 != 0)
            j = 18;
          else if (i3 != 0)
            j = 17;
          else
            j = 3;
        }
        else if (i3 != 0)
          j = 2;
        else if (i2 != 0)
          j = 6;
        else if (n != 0)
        {
          if (i1 != 0)
            j = 13;
          else
            j = i;
        }
        else if (i1 != 0)
          j = 13;
      }
      catch (Throwable localThrowable)
      {
        j = k;
        dk.c("SYSContactDaoV2", "getPhoneTypeFromLabel Throwable " + localThrowable.getMessage());
      }
      j = k;
      label518: i = j;
      break;
      label523: m++;
    }
  }

  // ERROR //
  public final int a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 64
    //   4: ldc_w 771
    //   7: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: getstatic 774	ci:h	Z
    //   13: ifeq +152 -> 165
    //   16: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   19: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   22: iconst_1
    //   23: anewarray 128	java/lang/String
    //   26: dup
    //   27: iconst_0
    //   28: ldc 178
    //   30: aastore
    //   31: ldc_w 776
    //   34: iconst_2
    //   35: anewarray 128	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: ldc_w 432
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: ldc_w 432
    //   49: aastore
    //   50: aconst_null
    //   51: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore 18
    //   56: aload 18
    //   58: astore 17
    //   60: aload 17
    //   62: ifnull +623 -> 685
    //   65: aload 17
    //   67: invokeinterface 779 1 0
    //   72: istore 19
    //   74: iload 19
    //   76: istore 4
    //   78: aload 17
    //   80: ifnull +10 -> 90
    //   83: aload 17
    //   85: invokeinterface 264 1 0
    //   90: ldc 64
    //   92: ldc_w 781
    //   95: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   98: iload 4
    //   100: ireturn
    //   101: astore 16
    //   103: aconst_null
    //   104: astore 17
    //   106: ldc 64
    //   108: new 66	java/lang/StringBuilder
    //   111: dup
    //   112: ldc_w 783
    //   115: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload 16
    //   120: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   123: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload 17
    //   134: ifnull +521 -> 655
    //   137: aload 17
    //   139: invokeinterface 264 1 0
    //   144: iconst_0
    //   145: istore 4
    //   147: goto -57 -> 90
    //   150: astore 15
    //   152: aload_1
    //   153: ifnull +9 -> 162
    //   156: aload_1
    //   157: invokeinterface 264 1 0
    //   162: aload 15
    //   164: athrow
    //   165: getstatic 786	ci:l	Z
    //   168: ifeq +130 -> 298
    //   171: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   174: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   177: iconst_1
    //   178: anewarray 128	java/lang/String
    //   181: dup
    //   182: iconst_0
    //   183: ldc 178
    //   185: aastore
    //   186: ldc_w 788
    //   189: iconst_2
    //   190: anewarray 128	java/lang/String
    //   193: dup
    //   194: iconst_0
    //   195: ldc_w 432
    //   198: aastore
    //   199: dup
    //   200: iconst_1
    //   201: ldc_w 432
    //   204: aastore
    //   205: aconst_null
    //   206: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   209: astore_1
    //   210: aload_1
    //   211: ifnull +468 -> 679
    //   214: aload_1
    //   215: invokeinterface 779 1 0
    //   220: istore 14
    //   222: iload 14
    //   224: istore 4
    //   226: aload_1
    //   227: ifnull -137 -> 90
    //   230: aload_1
    //   231: invokeinterface 264 1 0
    //   236: goto -146 -> 90
    //   239: astore 13
    //   241: ldc 64
    //   243: new 66	java/lang/StringBuilder
    //   246: dup
    //   247: ldc_w 783
    //   250: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   253: aload 13
    //   255: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   258: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   267: aload_1
    //   268: ifnull +387 -> 655
    //   271: aload_1
    //   272: invokeinterface 264 1 0
    //   277: iconst_0
    //   278: istore 4
    //   280: goto -190 -> 90
    //   283: astore 12
    //   285: aload_1
    //   286: ifnull +9 -> 295
    //   289: aload_1
    //   290: invokeinterface 264 1 0
    //   295: aload 12
    //   297: athrow
    //   298: getstatic 791	ci:z	Z
    //   301: ifeq +115 -> 416
    //   304: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   307: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   310: iconst_1
    //   311: anewarray 128	java/lang/String
    //   314: dup
    //   315: iconst_0
    //   316: ldc 178
    //   318: aastore
    //   319: ldc_w 793
    //   322: aconst_null
    //   323: aconst_null
    //   324: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   327: astore_1
    //   328: aload_1
    //   329: ifnull +344 -> 673
    //   332: aload_1
    //   333: invokeinterface 779 1 0
    //   338: istore 11
    //   340: iload 11
    //   342: istore 4
    //   344: aload_1
    //   345: ifnull -255 -> 90
    //   348: aload_1
    //   349: invokeinterface 264 1 0
    //   354: goto -264 -> 90
    //   357: astore 10
    //   359: ldc 64
    //   361: new 66	java/lang/StringBuilder
    //   364: dup
    //   365: ldc_w 783
    //   368: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   371: aload 10
    //   373: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   376: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   382: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   385: aload_1
    //   386: ifnull +269 -> 655
    //   389: aload_1
    //   390: invokeinterface 264 1 0
    //   395: iconst_0
    //   396: istore 4
    //   398: goto -308 -> 90
    //   401: astore 9
    //   403: aload_1
    //   404: ifnull +9 -> 413
    //   407: aload_1
    //   408: invokeinterface 264 1 0
    //   413: aload 9
    //   415: athrow
    //   416: getstatic 796	ci:C	Z
    //   419: ifeq +115 -> 534
    //   422: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   425: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   428: iconst_1
    //   429: anewarray 128	java/lang/String
    //   432: dup
    //   433: iconst_0
    //   434: ldc 178
    //   436: aastore
    //   437: ldc_w 798
    //   440: aconst_null
    //   441: aconst_null
    //   442: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   445: astore_1
    //   446: aload_1
    //   447: ifnull +220 -> 667
    //   450: aload_1
    //   451: invokeinterface 779 1 0
    //   456: istore 8
    //   458: iload 8
    //   460: istore 4
    //   462: aload_1
    //   463: ifnull -373 -> 90
    //   466: aload_1
    //   467: invokeinterface 264 1 0
    //   472: goto -382 -> 90
    //   475: astore 7
    //   477: ldc 64
    //   479: new 66	java/lang/StringBuilder
    //   482: dup
    //   483: ldc_w 783
    //   486: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   489: aload 7
    //   491: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   494: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   503: aload_1
    //   504: ifnull +151 -> 655
    //   507: aload_1
    //   508: invokeinterface 264 1 0
    //   513: iconst_0
    //   514: istore 4
    //   516: goto -426 -> 90
    //   519: astore 6
    //   521: aload_1
    //   522: ifnull +9 -> 531
    //   525: aload_1
    //   526: invokeinterface 264 1 0
    //   531: aload 6
    //   533: athrow
    //   534: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   537: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   540: iconst_1
    //   541: anewarray 128	java/lang/String
    //   544: dup
    //   545: iconst_0
    //   546: ldc 178
    //   548: aastore
    //   549: ldc_w 800
    //   552: aconst_null
    //   553: aconst_null
    //   554: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   557: astore_1
    //   558: aload_1
    //   559: ifnull +102 -> 661
    //   562: aload_1
    //   563: invokeinterface 779 1 0
    //   568: istore 5
    //   570: iload 5
    //   572: istore 4
    //   574: aload_1
    //   575: ifnull -485 -> 90
    //   578: aload_1
    //   579: invokeinterface 264 1 0
    //   584: goto -494 -> 90
    //   587: astore_3
    //   588: ldc 64
    //   590: new 66	java/lang/StringBuilder
    //   593: dup
    //   594: ldc_w 783
    //   597: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   600: aload_3
    //   601: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   604: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   607: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   613: aload_1
    //   614: ifnull +41 -> 655
    //   617: aload_1
    //   618: invokeinterface 264 1 0
    //   623: iconst_0
    //   624: istore 4
    //   626: goto -536 -> 90
    //   629: astore_2
    //   630: aload_1
    //   631: ifnull +9 -> 640
    //   634: aload_1
    //   635: invokeinterface 264 1 0
    //   640: aload_2
    //   641: athrow
    //   642: astore 15
    //   644: aload 17
    //   646: astore_1
    //   647: goto -495 -> 152
    //   650: astore 16
    //   652: goto -546 -> 106
    //   655: iconst_0
    //   656: istore 4
    //   658: goto -568 -> 90
    //   661: iconst_0
    //   662: istore 4
    //   664: goto -90 -> 574
    //   667: iconst_0
    //   668: istore 4
    //   670: goto -208 -> 462
    //   673: iconst_0
    //   674: istore 4
    //   676: goto -332 -> 344
    //   679: iconst_0
    //   680: istore 4
    //   682: goto -456 -> 226
    //   685: iconst_0
    //   686: istore 4
    //   688: goto -610 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   16	56	101	java/lang/Throwable
    //   16	56	150	finally
    //   171	222	239	java/lang/Throwable
    //   171	222	283	finally
    //   241	267	283	finally
    //   304	340	357	java/lang/Throwable
    //   304	340	401	finally
    //   359	385	401	finally
    //   422	458	475	java/lang/Throwable
    //   422	458	519	finally
    //   477	503	519	finally
    //   534	570	587	java/lang/Throwable
    //   534	570	629	finally
    //   588	613	629	finally
    //   65	74	642	finally
    //   106	132	642	finally
    //   65	74	650	java/lang/Throwable
  }

  public final cb.a a(String paramString)
  {
    dk.b("SYSContactDaoV2", "delete enter");
    cb.a locala;
    if ((paramString == null) || (paramString.equals("")))
      locala = cb.a.a;
    while (true)
    {
      return locala;
      try
      {
        if (a.delete(ContactsContract.RawContacts.CONTENT_URI, "_id=?", new String[] { paramString }) > 0)
          break label90;
        locala = cb.a.a;
      }
      catch (Throwable localThrowable)
      {
        dk.c("SYSContactDaoV2", "delete Throwable " + localThrowable.getMessage());
        locala = cb.a.c;
      }
      continue;
      label90: dk.b("SYSContactDaoV2", "delete leave");
      locala = cb.a.b;
    }
  }

  public final String a(cc paramcc)
  {
    Object localObject = null;
    dk.b("SYSContactDaoV2", "add  enter");
    if (paramcc == null)
      dk.c("SYSContactDaoV2", "add  leave entity = null");
    while (true)
    {
      return localObject;
      try
      {
        localArrayList = new ArrayList();
        localAtomicBoolean = new AtomicBoolean();
        localbm = new bm();
        a(paramcc, localArrayList, 100, localAtomicBoolean, localbm);
        String str6;
        if (ci.k)
        {
          ContentProviderOperation.Builder localBuilder4 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_name", "Phone").withValue("account_type", "com.android.acersync").withValue("custom_ringtone", localbm.d).withValue("dirty", "1");
          if (localAtomicBoolean.get())
          {
            str6 = "1";
            label127: localArrayList.add(0, localBuilder4.withValue("starred", str6).build());
          }
        }
        while (true)
        {
          ContentProviderResult[] arrayOfContentProviderResult = a.applyBatch("com.android.contacts", localArrayList);
          if (arrayOfContentProviderResult == null)
            break label619;
          String str3 = String.valueOf(ContentUris.parseId(arrayOfContentProviderResult[0].uri));
          str1 = str3;
          dk.b("SYSContactDaoV2", "add  leave strEntityId = " + str1);
          localObject = str1;
          break;
          str6 = "0";
          break label127;
          if (!ci.r)
            break label365;
          ContentProviderOperation.Builder localBuilder3 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_name", "Contacts").withValue("account_type", "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT").withValue("sync1", Integer.valueOf(0)).withValue("sync3", "blur").withValue("custom_ringtone", localbm.d).withValue("dirty", "1");
          if (!localAtomicBoolean.get())
            break label357;
          str5 = "1";
          localArrayList.add(0, localBuilder3.withValue("starred", str5).build());
        }
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          dk.c("SYSContactDaoV2", "add RemoteException " + localRemoteException.getMessage());
          str1 = null;
          continue;
          String str5 = "0";
          continue;
          if ((localbm.b != null) && (localbm.b.length() != 0) && (localbm.a != null) && (localbm.b.length() != 0))
            break label507;
          ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("dirty", "1");
          if (!localAtomicBoolean.get())
            break;
          str2 = "1";
          localArrayList.add(0, localBuilder1.withValue("starred", str2).withValue("custom_ringtone", localbm.d).build());
        }
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        while (true)
        {
          ArrayList localArrayList;
          AtomicBoolean localAtomicBoolean;
          bm localbm;
          dk.c("SYSContactDaoV2", "add OperationApplicationException " + localOperationApplicationException.getMessage());
          str1 = null;
          continue;
          String str2 = "0";
          continue;
          ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("dirty", "1");
          if (!localAtomicBoolean.get())
            break;
          str4 = "1";
          localArrayList.add(0, localBuilder2.withValue("starred", str4).withValue("account_name", localbm.a).withValue("account_type", localbm.b).withValue("custom_ringtone", localbm.d).build());
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          label357: label365: label507: dk.c("SYSContactDaoV2", "add Throwable " + localThrowable.getMessage());
          label619: String str1 = null;
          continue;
          String str4 = "0";
        }
      }
    }
  }

  // ERROR //
  public final List<String> a(String[] paramArrayOfString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: ldc 64
    //   4: ldc_w 846
    //   7: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: new 232	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 233	java/util/ArrayList:<init>	()V
    //   17: astore 4
    //   19: getstatic 774	ci:h	Z
    //   22: ifeq +216 -> 238
    //   25: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   28: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   31: iconst_2
    //   32: anewarray 128	java/lang/String
    //   35: dup
    //   36: iconst_0
    //   37: ldc 178
    //   39: aastore
    //   40: dup
    //   41: iconst_1
    //   42: ldc_w 848
    //   45: aastore
    //   46: ldc_w 850
    //   49: iconst_1
    //   50: anewarray 128	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: ldc_w 432
    //   58: aastore
    //   59: aconst_null
    //   60: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   63: astore 23
    //   65: aload 23
    //   67: astore 21
    //   69: aload 21
    //   71: ifnull +27 -> 98
    //   74: aload 21
    //   76: invokeinterface 762 1 0
    //   81: ifeq +17 -> 98
    //   84: aload 21
    //   86: invokeinterface 261 1 0
    //   91: istore 24
    //   93: iload 24
    //   95: ifeq +44 -> 139
    //   98: aload 21
    //   100: ifnull +10 -> 110
    //   103: aload 21
    //   105: invokeinterface 264 1 0
    //   110: ldc 64
    //   112: new 66	java/lang/StringBuilder
    //   115: dup
    //   116: ldc_w 852
    //   119: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: aload 4
    //   124: invokevirtual 302	java/util/ArrayList:size	()I
    //   127: invokevirtual 305	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   130: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 214	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: aload 4
    //   138: areturn
    //   139: aload 21
    //   141: iconst_1
    //   142: invokeinterface 39 2 0
    //   147: ifne +17 -> 164
    //   150: aload 4
    //   152: aload 21
    //   154: iconst_0
    //   155: invokeinterface 253 2 0
    //   160: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   163: pop
    //   164: aload 21
    //   166: invokeinterface 248 1 0
    //   171: pop
    //   172: goto -88 -> 84
    //   175: astore 20
    //   177: ldc 64
    //   179: new 66	java/lang/StringBuilder
    //   182: dup
    //   183: ldc_w 854
    //   186: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: aload 20
    //   191: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   194: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: aload 21
    //   205: ifnull -95 -> 110
    //   208: aload 21
    //   210: invokeinterface 264 1 0
    //   215: goto -105 -> 110
    //   218: astore 22
    //   220: aconst_null
    //   221: astore 21
    //   223: aload 21
    //   225: ifnull +10 -> 235
    //   228: aload 21
    //   230: invokeinterface 264 1 0
    //   235: aload 22
    //   237: athrow
    //   238: getstatic 786	ci:l	Z
    //   241: ifne +9 -> 250
    //   244: getstatic 857	ci:H	Z
    //   247: ifeq +170 -> 417
    //   250: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   253: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   256: iconst_2
    //   257: anewarray 128	java/lang/String
    //   260: dup
    //   261: iconst_0
    //   262: ldc 178
    //   264: aastore
    //   265: dup
    //   266: iconst_1
    //   267: ldc_w 859
    //   270: aastore
    //   271: ldc_w 850
    //   274: iconst_1
    //   275: anewarray 128	java/lang/String
    //   278: dup
    //   279: iconst_0
    //   280: ldc_w 432
    //   283: aastore
    //   284: aconst_null
    //   285: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   288: astore_3
    //   289: aload_3
    //   290: ifnull +25 -> 315
    //   293: aload_3
    //   294: invokeinterface 762 1 0
    //   299: ifeq +16 -> 315
    //   302: aload_3
    //   303: invokeinterface 261 1 0
    //   308: istore 7
    //   310: iload 7
    //   312: ifeq +16 -> 328
    //   315: aload_3
    //   316: ifnull -206 -> 110
    //   319: aload_3
    //   320: invokeinterface 264 1 0
    //   325: goto -215 -> 110
    //   328: aload_3
    //   329: iconst_1
    //   330: invokeinterface 39 2 0
    //   335: ifne +16 -> 351
    //   338: aload 4
    //   340: aload_3
    //   341: iconst_0
    //   342: invokeinterface 253 2 0
    //   347: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   350: pop
    //   351: aload_3
    //   352: invokeinterface 248 1 0
    //   357: pop
    //   358: goto -56 -> 302
    //   361: astore 6
    //   363: ldc 64
    //   365: new 66	java/lang/StringBuilder
    //   368: dup
    //   369: ldc_w 854
    //   372: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   375: aload 6
    //   377: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   380: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   389: aload_3
    //   390: ifnull -280 -> 110
    //   393: aload_3
    //   394: invokeinterface 264 1 0
    //   399: goto -289 -> 110
    //   402: astore 5
    //   404: aload_3
    //   405: ifnull +9 -> 414
    //   408: aload_3
    //   409: invokeinterface 264 1 0
    //   414: aload 5
    //   416: athrow
    //   417: getstatic 796	ci:C	Z
    //   420: ifeq +148 -> 568
    //   423: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   426: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   429: iconst_1
    //   430: anewarray 128	java/lang/String
    //   433: dup
    //   434: iconst_0
    //   435: ldc 178
    //   437: aastore
    //   438: ldc_w 798
    //   441: aconst_null
    //   442: aconst_null
    //   443: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   446: astore_3
    //   447: aload_3
    //   448: ifnull +21 -> 469
    //   451: aload_3
    //   452: invokeinterface 762 1 0
    //   457: ifeq +12 -> 469
    //   460: aload_3
    //   461: invokeinterface 261 1 0
    //   466: ifeq +23 -> 489
    //   469: aload_0
    //   470: getfield 18	bp:c	Lbs;
    //   473: invokevirtual 47	bs:a	()V
    //   476: aload_3
    //   477: ifnull -367 -> 110
    //   480: aload_3
    //   481: invokeinterface 264 1 0
    //   486: goto -376 -> 110
    //   489: aload 4
    //   491: aload_3
    //   492: iconst_0
    //   493: invokeinterface 253 2 0
    //   498: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   501: pop
    //   502: aload_3
    //   503: invokeinterface 248 1 0
    //   508: pop
    //   509: goto -49 -> 460
    //   512: astore 17
    //   514: ldc 64
    //   516: new 66	java/lang/StringBuilder
    //   519: dup
    //   520: ldc_w 854
    //   523: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   526: aload 17
    //   528: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   531: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   534: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   537: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   540: aload_3
    //   541: ifnull -431 -> 110
    //   544: aload_3
    //   545: invokeinterface 264 1 0
    //   550: goto -440 -> 110
    //   553: astore 16
    //   555: aload_3
    //   556: ifnull +9 -> 565
    //   559: aload_3
    //   560: invokeinterface 264 1 0
    //   565: aload 16
    //   567: athrow
    //   568: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   571: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   574: iconst_3
    //   575: anewarray 128	java/lang/String
    //   578: dup
    //   579: iconst_0
    //   580: ldc 178
    //   582: aastore
    //   583: dup
    //   584: iconst_1
    //   585: ldc_w 608
    //   588: aastore
    //   589: dup
    //   590: iconst_2
    //   591: ldc_w 606
    //   594: aastore
    //   595: ldc_w 850
    //   598: iconst_1
    //   599: anewarray 128	java/lang/String
    //   602: dup
    //   603: iconst_0
    //   604: ldc_w 432
    //   607: aastore
    //   608: aconst_null
    //   609: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   612: astore_3
    //   613: aload_3
    //   614: ifnull +21 -> 635
    //   617: aload_3
    //   618: invokeinterface 762 1 0
    //   623: ifeq +12 -> 635
    //   626: aload_3
    //   627: invokeinterface 261 1 0
    //   632: ifeq +23 -> 655
    //   635: aload_0
    //   636: getfield 18	bp:c	Lbs;
    //   639: invokevirtual 47	bs:a	()V
    //   642: aload_3
    //   643: ifnull -533 -> 110
    //   646: aload_3
    //   647: invokeinterface 264 1 0
    //   652: goto -542 -> 110
    //   655: aload_3
    //   656: iconst_2
    //   657: invokeinterface 253 2 0
    //   662: astore 12
    //   664: getstatic 860	ci:c	Z
    //   667: ifeq +97 -> 764
    //   670: aload 12
    //   672: ifnull +28 -> 700
    //   675: aload 12
    //   677: invokevirtual 863	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   680: ldc_w 865
    //   683: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   686: ifne +27 -> 713
    //   689: aload 12
    //   691: invokevirtual 863	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   694: invokestatic 868	ci:a	(Ljava/lang/String;)Z
    //   697: ifne +16 -> 713
    //   700: aload 4
    //   702: aload_3
    //   703: iconst_0
    //   704: invokeinterface 253 2 0
    //   709: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   712: pop
    //   713: aload_3
    //   714: invokeinterface 248 1 0
    //   719: pop
    //   720: goto -94 -> 626
    //   723: astore 11
    //   725: ldc 64
    //   727: new 66	java/lang/StringBuilder
    //   730: dup
    //   731: ldc_w 854
    //   734: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   737: aload 11
    //   739: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   742: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   745: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   748: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   751: aload_3
    //   752: ifnull -642 -> 110
    //   755: aload_3
    //   756: invokeinterface 264 1 0
    //   761: goto -651 -> 110
    //   764: aload 12
    //   766: ifnull +17 -> 783
    //   769: aload 12
    //   771: invokevirtual 863	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   774: ldc_w 865
    //   777: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   780: ifne -67 -> 713
    //   783: aload 4
    //   785: aload_3
    //   786: iconst_0
    //   787: invokeinterface 253 2 0
    //   792: invokevirtual 275	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   795: pop
    //   796: goto -83 -> 713
    //   799: astore 10
    //   801: aload_3
    //   802: ifnull +9 -> 811
    //   805: aload_3
    //   806: invokeinterface 264 1 0
    //   811: aload 10
    //   813: athrow
    //   814: astore 22
    //   816: goto -593 -> 223
    //   819: astore 20
    //   821: aconst_null
    //   822: astore 21
    //   824: goto -647 -> 177
    //
    // Exception table:
    //   from	to	target	type
    //   74	93	175	java/lang/Throwable
    //   139	172	175	java/lang/Throwable
    //   25	65	218	finally
    //   250	310	361	java/lang/Throwable
    //   328	358	361	java/lang/Throwable
    //   250	310	402	finally
    //   328	358	402	finally
    //   363	389	402	finally
    //   423	476	512	java/lang/Throwable
    //   489	509	512	java/lang/Throwable
    //   423	476	553	finally
    //   489	509	553	finally
    //   514	540	553	finally
    //   568	642	723	java/lang/Throwable
    //   655	720	723	java/lang/Throwable
    //   769	796	723	java/lang/Throwable
    //   568	642	799	finally
    //   655	720	799	finally
    //   725	751	799	finally
    //   769	796	799	finally
    //   74	93	814	finally
    //   139	172	814	finally
    //   177	203	814	finally
    //   25	65	819	java/lang/Throwable
  }

  public final boolean a(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    dk.b("SYSContactDaoV2", "add batch: entry");
    if (ci.t);
    int i;
    long[] arrayOfLong;
    for (boolean bool = b(paramArrayList, paramArrayList1, paramArrayOfInt); ; bool = false)
    {
      return bool;
      i = paramArrayList.size();
      arrayOfLong = a(paramArrayList);
      if (arrayOfLong != null)
        break;
      dk.b("SYSContactDaoV2", "add batch: insertBatchIds and newids==null");
    }
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    label69: if (j >= i);
    while (true)
    {
      int k;
      try
      {
        a.applyBatch("com.android.contacts", localArrayList);
        k = 0;
        if (k < i)
          break label331;
        dk.b("SYSContactDaoV2", "add batch: leave");
        bool = true;
        break;
        String str1 = String.valueOf(arrayOfLong[j]);
        AtomicBoolean localAtomicBoolean = new AtomicBoolean();
        cq localcq = (cq)paramArrayList.get(j);
        paramArrayList1.add(j, str1);
        if (localcq == null)
        {
          paramArrayOfInt[j] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt();
          j++;
          break label69;
        }
        localcq.b = str1;
        bm localbm = new bm();
        a((cc)paramArrayList.get(j), localArrayList, 101, localAtomicBoolean, localbm);
        continue;
      }
      catch (RemoteException localRemoteException)
      {
        dk.c("SYSContactDaoV2", "add batch: applyBatch RemoteException=" + localRemoteException.toString());
        bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        dk.c("SYSContactDaoV2", "add batch: applyBatch OperationApplicationException=" + localOperationApplicationException.toString());
        bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
      }
      catch (Exception localException1)
      {
        dk.c("SYSContactDaoV2", "add batch: applyBatch Exception=" + localException1.toString());
        bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
      }
      break;
      try
      {
        label331: String str3 = String.valueOf(arrayOfLong[k]);
        str2 = str3;
        m = 1;
        if (m != 0)
          if (ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt() != paramArrayOfInt[k])
            paramArrayOfInt[k] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            paramArrayList1.add(k, str2);
            k++;
            break;
            localException2 = localException2;
            dk.c("SYSContactDaoV2", "add batch: String.valueOf id falied i =" + k);
            String str2 = "-1";
            int m = 0;
            continue;
            paramArrayOfInt[k] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
          }
        }
        catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
        {
          while (true)
          {
            paramArrayOfInt[k] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
            dk.c("SYSContactDaoV2", "add batch:  add return id falied i =" + k);
          }
        }
      }
    }
  }

  public final cb.a b(cc paramcc)
  {
    dk.b("SYSContactDaoV2", "update enter");
    Object localObject;
    if ((paramcc == null) || (!b(paramcc.b)))
    {
      dk.b("SYSContactDaoV2", "update leave ENUM_IDaoReturnValue.ENTITY_NOT_FOUND");
      localObject = cb.a.a;
    }
    while (true)
    {
      return localObject;
      cb.a locala = cb.a.c;
      ArrayList localArrayList = new ArrayList();
      try
      {
        AtomicBoolean localAtomicBoolean = new AtomicBoolean();
        bm localbm = new bm();
        c(paramcc);
        a(paramcc, localArrayList, 101, localAtomicBoolean, localbm);
        String str6;
        label137: ContentProviderOperation localContentProviderOperation;
        if (ci.s)
        {
          ContentProviderOperation.Builder localBuilder6 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
          if (localAtomicBoolean.get())
          {
            str6 = "1";
            localContentProviderOperation = localBuilder6.withValue("starred", str6).withValue("account_name", "Phone contacts").withValue("account_type", "com.sonyericsson.localcontacts").withValue("custom_ringtone", localbm.d).build();
          }
        }
        while (true)
        {
          localArrayList.add(localContentProviderOperation);
          a.applyBatch("com.android.contacts", localArrayList);
          localObject = cb.a.b;
          dk.b("SYSContactDaoV2", "update leave ENUM_IDaoReturnValue.ACTION_SUCCEED");
          break;
          str6 = "0";
          break label137;
          if (ci.w)
          {
            ContentProviderOperation.Builder localBuilder5 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
            if (!localAtomicBoolean.get())
              break label832;
            str5 = "1";
            localContentProviderOperation = localBuilder5.withValue("starred", str5).withValue("account_name", "pcsc").withValue("account_type", "com.htc.android.pcsc").withValue("custom_ringtone", localbm.d).build();
          }
          else if (ci.x)
          {
            ContentProviderOperation.Builder localBuilder4 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
            if (!localAtomicBoolean.get())
              break label840;
            str4 = "1";
            localContentProviderOperation = localBuilder4.withValue("starred", str4).withValue("account_name", "vnd.sec.contact.phone").withValue("account_type", "vnd.sec.contact.phone").withValue("custom_ringtone", localbm.d).build();
          }
          else if (ci.k)
          {
            ContentProviderOperation.Builder localBuilder3 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
            if (!localAtomicBoolean.get())
              break label848;
            str3 = "1";
            localContentProviderOperation = localBuilder3.withValue("starred", str3).withValue("account_name", "Phone").withValue("account_type", "com.android.acersync").withValue("custom_ringtone", localbm.d).build();
          }
          else
          {
            if ((!TextUtils.isEmpty(localbm.a)) && (!TextUtils.isEmpty(localbm.b)))
              break label614;
            ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
            if (!localAtomicBoolean.get())
              break label856;
            str1 = "1";
            localContentProviderOperation = localBuilder1.withValue("starred", str1).withValue("custom_ringtone", localbm.d).build();
          }
        }
        label614: ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id=" + paramcc.b, null);
        if (localAtomicBoolean.get());
        for (String str2 = "1"; ; str2 = "0")
        {
          localContentProviderOperation = localBuilder2.withValue("starred", str2).withValue("account_name", localbm.a).withValue("account_type", localbm.b).withValue("custom_ringtone", localbm.d).build();
          break;
        }
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          dk.c("SYSContactDaoV2", "update RemoteException " + localRemoteException.getMessage());
          localRemoteException.printStackTrace();
          localObject = locala;
        }
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        while (true)
        {
          dk.c("SYSContactDaoV2", "update OperationApplicationException " + localOperationApplicationException.getMessage());
          localOperationApplicationException.printStackTrace();
          localObject = locala;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          dk.c("SYSContactDaoV2", "update Throwable " + localThrowable.getMessage());
          localThrowable.printStackTrace();
          localObject = locala;
          continue;
          label832: String str5 = "0";
          continue;
          label840: String str4 = "0";
          continue;
          label848: String str3 = "0";
          continue;
          label856: String str1 = "0";
        }
      }
    }
  }

  // ERROR //
  public final boolean b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   5: getstatic 591	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   8: iconst_1
    //   9: anewarray 128	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc 178
    //   16: aastore
    //   17: ldc_w 947
    //   20: iconst_2
    //   21: anewarray 128	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: aload_1
    //   27: aastore
    //   28: dup
    //   29: iconst_1
    //   30: ldc_w 432
    //   33: aastore
    //   34: aconst_null
    //   35: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore 7
    //   40: aload 7
    //   42: astore 5
    //   44: aload 5
    //   46: ifnull +115 -> 161
    //   49: aload 5
    //   51: invokeinterface 779 1 0
    //   56: istore 8
    //   58: iload 8
    //   60: ifle +101 -> 161
    //   63: iconst_1
    //   64: istore 6
    //   66: aload 5
    //   68: ifnull +10 -> 78
    //   71: aload 5
    //   73: invokeinterface 264 1 0
    //   78: iload 6
    //   80: ireturn
    //   81: astore 4
    //   83: aconst_null
    //   84: astore 5
    //   86: ldc 64
    //   88: new 66	java/lang/StringBuilder
    //   91: dup
    //   92: ldc_w 949
    //   95: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   98: aload 4
    //   100: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   103: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload 5
    //   114: ifnull +41 -> 155
    //   117: aload 5
    //   119: invokeinterface 264 1 0
    //   124: iconst_0
    //   125: istore 6
    //   127: goto -49 -> 78
    //   130: astore_3
    //   131: aload_2
    //   132: ifnull +9 -> 141
    //   135: aload_2
    //   136: invokeinterface 264 1 0
    //   141: aload_3
    //   142: athrow
    //   143: astore_3
    //   144: aload 5
    //   146: astore_2
    //   147: goto -16 -> 131
    //   150: astore 4
    //   152: goto -66 -> 86
    //   155: iconst_0
    //   156: istore 6
    //   158: goto -80 -> 78
    //   161: iconst_0
    //   162: istore 6
    //   164: goto -98 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   2	40	81	java/lang/Throwable
    //   2	40	130	finally
    //   49	58	143	finally
    //   86	112	143	finally
    //   49	58	150	java/lang/Throwable
  }

  public final cc c(String paramString)
  {
    return a(paramString, cc.b.d);
  }

  // ERROR //
  public final String d(String paramString)
  {
    // Byte code:
    //   0: getstatic 957	ci:g	Z
    //   3: ifeq +11 -> 14
    //   6: aconst_null
    //   7: astore_2
    //   8: aload_1
    //   9: ifnonnull +5 -> 14
    //   12: aload_2
    //   13: areturn
    //   14: getstatic 962	android/provider/ContactsContract$PhoneLookup:CONTENT_FILTER_URI	Landroid/net/Uri;
    //   17: aload_1
    //   18: invokestatic 965	android/net/Uri:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   21: invokestatic 757	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   24: astore 7
    //   26: iconst_1
    //   27: anewarray 128	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc_w 967
    //   35: aastore
    //   36: astore 8
    //   38: getstatic 236	bp:a	Landroid/content/ContentResolver;
    //   41: aload 7
    //   43: aload 8
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: invokevirtual 244	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   51: astore 9
    //   53: aload 9
    //   55: astore 4
    //   57: aload 4
    //   59: ifnull +127 -> 186
    //   62: aload 4
    //   64: invokeinterface 762 1 0
    //   69: ifeq +117 -> 186
    //   72: aload 4
    //   74: iconst_0
    //   75: invokeinterface 253 2 0
    //   80: astore 10
    //   82: aload 10
    //   84: astore 6
    //   86: aload 4
    //   88: ifnull +10 -> 98
    //   91: aload 4
    //   93: invokeinterface 264 1 0
    //   98: aload 6
    //   100: astore_2
    //   101: goto -89 -> 12
    //   104: astore 5
    //   106: aconst_null
    //   107: astore 4
    //   109: ldc 64
    //   111: new 66	java/lang/StringBuilder
    //   114: dup
    //   115: ldc_w 969
    //   118: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload 5
    //   123: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   126: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokestatic 86	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   135: aload 4
    //   137: ifnull +43 -> 180
    //   140: aload 4
    //   142: invokeinterface 264 1 0
    //   147: aconst_null
    //   148: astore 6
    //   150: goto -52 -> 98
    //   153: astore_3
    //   154: aconst_null
    //   155: astore 4
    //   157: aload 4
    //   159: ifnull +10 -> 169
    //   162: aload 4
    //   164: invokeinterface 264 1 0
    //   169: aload_3
    //   170: athrow
    //   171: astore_3
    //   172: goto -15 -> 157
    //   175: astore 5
    //   177: goto -68 -> 109
    //   180: aconst_null
    //   181: astore 6
    //   183: goto -85 -> 98
    //   186: aconst_null
    //   187: astore 6
    //   189: goto -103 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   14	53	104	java/lang/Throwable
    //   14	53	153	finally
    //   62	82	171	finally
    //   109	135	171	finally
    //   62	82	175	java/lang/Throwable
  }

  public static final class a
  {
    public String a = null;
    public String b = null;
    public String c = null;
    public String d = null;
    public String e = null;
    public String f = null;
    public String g = null;
    private String h = null;

    public a()
    {
    }

    public a(String paramString)
    {
      List localList = de.b(paramString, new char[] { '\\', ';', 'r', 'n' });
      if (localList == null);
      while (true)
      {
        return;
        if (localList.size() > 0)
          this.b = ((String)localList.get(0));
        if (localList.size() > 1)
          this.c = ((String)localList.get(1));
        if (localList.size() > 2)
          this.a = ((String)localList.get(2));
        if (localList.size() > 3)
          this.d = ((String)localList.get(3));
        if (localList.size() > 4)
          this.e = ((String)localList.get(4));
        if (localList.size() > 5)
          this.f = ((String)localList.get(5));
        if (localList.size() > 6)
          this.g = ((String)localList.get(6));
        this.h = toString();
      }
    }

    public final String toString()
    {
      if (this.h == null)
      {
        StringBuilder localStringBuilder1 = new StringBuilder();
        if (this.b != null)
          localStringBuilder1 = localStringBuilder1.append(this.b);
        StringBuilder localStringBuilder2 = localStringBuilder1.append(";");
        if (this.c != null)
          localStringBuilder2 = localStringBuilder2.append(this.c);
        StringBuilder localStringBuilder3 = localStringBuilder2.append(";");
        if (this.a != null)
          localStringBuilder3 = localStringBuilder3.append(this.a);
        StringBuilder localStringBuilder4 = localStringBuilder3.append(";");
        if (this.d != null)
          localStringBuilder4 = localStringBuilder4.append(this.d);
        StringBuilder localStringBuilder5 = localStringBuilder4.append(";");
        if (this.e != null)
          localStringBuilder5 = localStringBuilder5.append(this.e);
        StringBuilder localStringBuilder6 = localStringBuilder5.append(";");
        if (this.f != null)
          localStringBuilder6 = localStringBuilder6.append(this.f);
        StringBuilder localStringBuilder7 = localStringBuilder6.append(";");
        if (this.g != null)
          localStringBuilder7 = localStringBuilder7.append(this.g);
        this.h = localStringBuilder7.toString();
      }
      return this.h;
    }
  }

  public static final class b
  {
    public String a = null;
    public String b = null;
    public String c = null;
    public String d = null;
    public String e = null;

    public b()
    {
    }

    public b(String paramString)
    {
      List localList = de.b(paramString, new char[] { '\\', ';', 'r', 'n' });
      if (localList == null);
      while (true)
      {
        return;
        if (localList.size() > 0)
          this.a = ((String)localList.get(0));
        if (localList.size() > 1)
          this.b = ((String)localList.get(1));
        if (localList.size() > 2)
          this.c = ((String)localList.get(2));
        if (localList.size() > 3)
          this.d = ((String)localList.get(3));
        if (localList.size() > 4)
          this.e = ((String)localList.get(4));
      }
    }

    public final String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      if (this.a != null)
        localStringBuilder1 = localStringBuilder1.append(this.a);
      StringBuilder localStringBuilder2 = localStringBuilder1.append(";");
      if (this.b != null)
        localStringBuilder2 = localStringBuilder2.append(this.b);
      StringBuilder localStringBuilder3 = localStringBuilder2.append(";");
      if (this.c != null)
        localStringBuilder3 = localStringBuilder3.append(this.c);
      StringBuilder localStringBuilder4 = localStringBuilder3.append(";");
      if (this.d != null)
        localStringBuilder4 = localStringBuilder4.append(this.d);
      StringBuilder localStringBuilder5 = localStringBuilder4.append(";");
      if (this.e != null)
        localStringBuilder5 = localStringBuilder5.append(this.e);
      return localStringBuilder5.toString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bp
 * JD-Core Version:    0.6.2
 */