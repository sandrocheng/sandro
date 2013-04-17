import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class bv extends bt
{
  private static bv r = null;
  private Uri a = null;
  private Uri b = Uri.parse("content://sms/conversations");
  private int c = -1;
  private int d = -1;
  private int e = -1;
  private int f = -1;
  private int g = -1;
  private int h = -1;
  private int i = -1;
  private int j = -1;
  private boolean k = false;
  private HashMap<Integer, String> l;
  private HashMap<String, Integer> m;
  private HashMap<String, String> n;
  private boolean o = false;
  private ContentResolver p;
  private Context q;

  private bv(Context paramContext)
  {
    super(paramContext);
    this.q = paramContext;
    this.p = paramContext.getContentResolver();
    this.a = Uri.parse("content://sms");
    this.l = new HashMap();
    this.m = new HashMap();
    this.l.put(Integer.valueOf(1), "INBOX");
    this.l.put(Integer.valueOf(2), "SENT");
    this.l.put(Integer.valueOf(3), "DRAFT");
    this.l.put(Integer.valueOf(6), "OUTBOX");
    this.l.put(Integer.valueOf(5), "OUTBOX");
    this.l.put(Integer.valueOf(4), "OUTBOX");
    this.m.put("INBOX", Integer.valueOf(1));
    this.m.put("SENT", Integer.valueOf(2));
    this.m.put("DRAFT", Integer.valueOf(3));
    this.m.put("OUTBOX", Integer.valueOf(6));
    new HashMap();
    this.n = new HashMap();
  }

  private ContentValues a(cc paramcc, AtomicInteger paramAtomicInteger)
  {
    int i1;
    Object localObject;
    if (paramcc != null)
    {
      if (paramcc.c.size() > 0)
      {
        paramcc.d = Integer.valueOf(0);
        i1 = 1;
        if (i1 != 0)
          break label40;
      }
    }
    else
      localObject = null;
    while (true)
    {
      return localObject;
      i1 = 0;
      break;
      label40: ContentValues localContentValues = new ContentValues();
      localContentValues.put("read", "1");
      if ((de.h()) && (this.o))
        localContentValues.put("seen", "1");
      int i2 = 0;
      label83: int i3;
      if (paramcc.d.intValue() < paramcc.c.size())
      {
        i3 = 0;
        label103: if (i3 != 0)
        {
          if (!ci.d)
            break label507;
          if (i2 == 0)
            localContentValues.put("address", "");
        }
      }
      label507: 
      while (i2 != 0)
      {
        localObject = localContentValues;
        break;
        cp localcp = paramcc.b();
        if (localcp == null)
          break label83;
        String str = localcp.a[2].toString();
        if ((str == null) || (str.length() == 0))
        {
          paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
          break label83;
        }
        int i4;
        if (localcp.a[0].toString().equals("FOLDER"))
        {
          Integer localInteger = (Integer)this.m.get(str);
          if (localInteger == null)
          {
            localObject = null;
            break;
          }
          dk.b("SYSSmsDaoV2", "getContentValues(), type = " + localInteger);
          if ((6 == localInteger.intValue()) || (5 == localInteger.intValue()) || (4 == localInteger.intValue()))
          {
            dk.b("SYSSmsDaoV2", "getContentValues(), type = " + localInteger + " drop");
            localObject = null;
            break;
          }
          if (paramAtomicInteger != null)
            paramAtomicInteger.set(localInteger.intValue());
          localContentValues.put("type", localInteger.toString());
          i4 = i2;
        }
        while (true)
        {
          paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
          i2 = i4;
          break;
          if (localcp.a[0].toString().equals("SENDER"))
          {
            if ((str == null) || ("".equals(str)))
              localContentValues.put("address", null);
            while (true)
            {
              i4 = 1;
              break;
              localContentValues.put("address", str);
            }
          }
          if (localcp.a[0].toString().equals("SENDDATE"))
          {
            localContentValues.put("date", Long.valueOf(de.b(str)).toString());
            i4 = i2;
          }
          else
          {
            if (localcp.a[0].toString().equals("INFORMATION"))
              localContentValues.put("body", str);
            i4 = i2;
          }
        }
        i3 = 1;
        break label103;
      }
      localObject = null;
    }
  }

  private cc a(Cursor paramCursor)
  {
    Object localObject1;
    if (paramCursor == null)
      localObject1 = null;
    while (true)
    {
      return localObject1;
      if (!this.k)
      {
        this.c = paramCursor.getColumnIndex("_id");
        this.d = paramCursor.getColumnIndex("address");
        this.e = paramCursor.getColumnIndex("body");
        this.f = paramCursor.getColumnIndex("type");
        this.g = paramCursor.getColumnIndex("protocol");
        this.h = paramCursor.getColumnIndex("thread_id");
        this.i = paramCursor.getColumnIndex("date");
        this.j = paramCursor.getColumnIndex("person");
        if ((this.c >= 0) && (this.d >= 0) && (this.e >= 0) && (this.f >= 0) && (this.g >= 0) && (this.h >= 0) && (this.i >= 0) && (this.j >= 0))
          this.k = true;
      }
      if (!this.k)
      {
        localObject1 = null;
        continue;
      }
      try
      {
        cp localcp1 = new cp();
        cp localcp2 = new cp();
        cp localcp3 = new cp();
        cp localcp4 = new cp();
        cp localcp5 = new cp();
        String str2 = paramCursor.getString(this.c);
        if (str2 == null)
        {
          localObject1 = null;
          continue;
        }
        localcp1.a[0].append("FOLDER");
        int i1 = paramCursor.getInt(this.f);
        String str3 = (String)this.l.get(Integer.valueOf(i1));
        if (str3 != null)
        {
          if (str3 != null)
            localcp1.a[2].append(str3);
          localcp2.a[0].append("SENDER");
          str4 = paramCursor.getString(this.d);
          localArrayList = new ArrayList();
          if ((i1 != 3) || ((str4 != null) && (str4.length() != 0)))
            break label985;
          str8 = paramCursor.getString(this.h);
          if (!ci.a)
            break label909;
          localStringBuffer2 = new StringBuffer();
          localList = e(str8);
          i3 = 0;
          label404: if (i3 < localList.size())
            break label879;
          str4 = localStringBuffer2.toString();
          localObject2 = localList;
          label427: if ((de.g()) && ("".equals(str4)))
            str4 = null;
          if ((ci.G) && (i1 == 3) && (str4.endsWith(",")))
            str4 = str4.substring(0, -1 + str4.length());
          if (str4 != null)
            localcp2.a[2].append(str4);
          localcp3.a[0].append("SENDNAME");
          Long.valueOf(paramCursor.getLong(this.j));
          localbn = (bn)bn.a(this.q);
          localObject3 = (String)this.n.get(str4);
          if (localObject3 == null)
          {
            if ((!ci.a) || (i1 != 3))
              break label959;
            localStringBuffer1 = new StringBuffer();
            i2 = 0;
            label585: if (i2 < ((List)localObject2).size())
              break label924;
            localObject3 = localStringBuffer1.toString();
            label604: if ((localObject3 == null) || ("".equals(localObject3)))
              break label992;
            this.n.put(str4, localObject3);
          }
          if (localObject3 != null)
            localcp3.a[2].append((String)localObject3);
          localcp4.a[0].append("SENDDATE");
          String str5 = de.a(paramCursor.getLong(this.i));
          if (str5 != null)
            localcp4.a[2].append(str5);
          localcp5.a[0].append("INFORMATION");
          String str6 = paramCursor.getString(this.e);
          if (str6 != null)
            localcp5.a[2].append(str6);
          localObject1 = new cr();
          ((cc)localObject1).b = str2;
          if (localcp1 != null)
            ((cc)localObject1).c.add(localcp1);
          if (localcp2 != null)
            ((cc)localObject1).c.add(localcp2);
          if (localcp3 != null)
            ((cc)localObject1).c.add(localcp3);
          if (localcp4 != null)
            ((cc)localObject1).c.add(localcp4);
          if (localcp5 == null)
            continue;
          ((cc)localObject1).c.add(localcp5);
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          String str4;
          ArrayList localArrayList;
          String str8;
          StringBuffer localStringBuffer2;
          List localList;
          int i3;
          bn localbn;
          StringBuffer localStringBuffer1;
          int i2;
          if ("getSMSEntity(), " + null == localThrowable.getMessage());
          for (String str1 = ""; ; str1 = localThrowable.getMessage())
          {
            dk.c("SYSSmsDaoV2", str1);
            localObject1 = null;
            break;
            localObject1 = null;
            break;
            label879: localStringBuffer2.append((String)localList.get(i3)).append(",");
            i3++;
            break label404;
            label909: str4 = d(str8);
            localObject2 = localArrayList;
            break label427;
            label924: localStringBuffer1.append(localbn.d((String)((List)localObject2).get(i2))).append(",");
            i2++;
            break label585;
            label959: String str7 = localbn.d(str4);
            localObject3 = str7;
            break label604;
          }
          label985: Object localObject2 = localArrayList;
          continue;
          label992: Object localObject3 = str4;
        }
      }
    }
  }

  private boolean a(cc paramcc, ArrayList<ContentProviderOperation> paramArrayList)
  {
    boolean bool = false;
    int i1;
    if (paramcc != null)
    {
      if (paramcc.c.size() <= 0)
        break label36;
      paramcc.d = Integer.valueOf(0);
      i1 = 1;
      bool = false;
      if (i1 != 0)
        break label42;
    }
    while (true)
    {
      return bool;
      label36: i1 = 0;
      break;
      label42: ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(this.a).withYieldAllowed(true);
      localBuilder.withValue("read", "1");
      if ((de.h()) && (this.o))
        localBuilder.withValue("seen", "1");
      int i2 = 0;
      label91: int i3;
      label111: int i5;
      if (paramcc.d.intValue() < paramcc.c.size())
      {
        i3 = 0;
        if (i3 != 0)
        {
          i5 = 0;
          label119: if (!ci.d)
            break label533;
          if (i2 == 0)
            localBuilder.withValue("address", "");
        }
      }
      while (true)
      {
        if ((paramcc.b != null) && (!"".equals(paramcc.b)))
          localBuilder.withValue("_id", paramcc.b);
        if (i5 == 0)
          break label550;
        paramArrayList.add(null);
        bool = false;
        break;
        cp localcp = paramcc.b();
        if (localcp == null)
          break label91;
        String str = localcp.a[2].toString();
        if ((str == null) || (str.length() == 0))
        {
          paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
          break label91;
        }
        Integer localInteger;
        label285: int i4;
        if (localcp.a[0].toString().equals("FOLDER"))
        {
          localInteger = (Integer)this.m.get(str);
          if (localInteger == null)
          {
            localInteger = Integer.valueOf(1);
            localBuilder.withValue("type", localInteger.toString());
            i4 = i2;
          }
        }
        while (true)
        {
          paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
          i2 = i4;
          break;
          if ((6 != localInteger.intValue()) && (5 != localInteger.intValue()) && (4 != localInteger.intValue()))
            break label285;
          dk.b("SYSSmsDaoV2", "getOperationFromEntity(), type = " + localInteger + " drop");
          i5 = 1;
          break label119;
          if (localcp.a[0].toString().equals("SENDER"))
          {
            if ((str == null) || ("".equals(str)))
              localBuilder.withValue("address", null);
            while (true)
            {
              i4 = 1;
              break;
              localBuilder.withValue("address", str);
            }
          }
          if (localcp.a[0].toString().equals("SENDDATE"))
          {
            localBuilder.withValue("date", Long.valueOf(de.b(str)).toString());
            i4 = i2;
          }
          else
          {
            if (localcp.a[0].toString().equals("INFORMATION"))
              localBuilder.withValue("body", str);
            i4 = i2;
          }
        }
        i3 = 1;
        break label111;
        label533: if (i2 == 0)
          localBuilder.withValue("address", null);
      }
      label550: paramArrayList.add(localBuilder.build());
      bool = true;
    }
  }

  protected static bv b(Context paramContext)
  {
    if (r == null)
      r = new bv(paramContext);
    return r;
  }

  private boolean b(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    int i1 = paramArrayList.size();
    int i2 = 0;
    if (i2 >= i1)
      return true;
    String str = a((cc)paramArrayList.get(i2));
    paramArrayList1.add(str);
    if (str == null)
    {
      dk.c("SYSSmsDaoV2", "addOneByOne(), insertedId == null");
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
    }
    while (true)
    {
      i2++;
      break;
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
    }
  }

  // ERROR //
  private String d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 82	bv:p	Landroid/content/ContentResolver;
    //   6: astore 11
    //   8: ldc_w 372
    //   11: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   14: astore 12
    //   16: iconst_1
    //   17: anewarray 171	java/lang/String
    //   20: astore 13
    //   22: aload 13
    //   24: iconst_0
    //   25: new 165	java/lang/StringBuilder
    //   28: dup
    //   29: ldc_w 374
    //   32: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_1
    //   36: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc_w 376
    //   42: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: aastore
    //   49: aload 11
    //   51: aload 12
    //   53: aload 13
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 382	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 14
    //   63: aload 14
    //   65: astore 4
    //   67: aload 4
    //   69: ifnull +145 -> 214
    //   72: aload 4
    //   74: invokeinterface 385 1 0
    //   79: ifeq +135 -> 214
    //   82: aload 4
    //   84: iconst_0
    //   85: invokeinterface 254 2 0
    //   90: astore 15
    //   92: aload_0
    //   93: getfield 82	bv:p	Landroid/content/ContentResolver;
    //   96: astore 16
    //   98: ldc_w 372
    //   101: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   104: astore 17
    //   106: iconst_1
    //   107: anewarray 171	java/lang/String
    //   110: astore 18
    //   112: aload 18
    //   114: iconst_0
    //   115: new 165	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 387
    //   122: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload 15
    //   127: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc_w 376
    //   133: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: aastore
    //   140: aload 16
    //   142: aload 17
    //   144: aload 18
    //   146: aconst_null
    //   147: aconst_null
    //   148: aconst_null
    //   149: invokevirtual 382	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   152: astore 19
    //   154: aload 19
    //   156: astore 6
    //   158: aload 6
    //   160: ifnull +72 -> 232
    //   163: aload 6
    //   165: invokeinterface 385 1 0
    //   170: ifeq +62 -> 232
    //   173: aload 6
    //   175: iconst_0
    //   176: invokeinterface 254 2 0
    //   181: astore 20
    //   183: aload 20
    //   185: astore 10
    //   187: aload 4
    //   189: ifnull +10 -> 199
    //   192: aload 4
    //   194: invokeinterface 390 1 0
    //   199: aload 6
    //   201: ifnull +10 -> 211
    //   204: aload 6
    //   206: invokeinterface 390 1 0
    //   211: aload 10
    //   213: areturn
    //   214: aload 4
    //   216: ifnull +10 -> 226
    //   219: aload 4
    //   221: invokeinterface 390 1 0
    //   226: aconst_null
    //   227: astore 10
    //   229: goto -18 -> 211
    //   232: aload 4
    //   234: ifnull +10 -> 244
    //   237: aload 4
    //   239: invokeinterface 390 1 0
    //   244: aload 6
    //   246: ifnull +10 -> 256
    //   249: aload 6
    //   251: invokeinterface 390 1 0
    //   256: aconst_null
    //   257: astore 10
    //   259: goto -48 -> 211
    //   262: astore 5
    //   264: aconst_null
    //   265: astore 6
    //   267: aconst_null
    //   268: astore 7
    //   270: new 165	java/lang/StringBuilder
    //   273: dup
    //   274: ldc_w 392
    //   277: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: aconst_null
    //   281: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   284: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: aload 5
    //   289: invokevirtual 314	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   292: if_acmpne +44 -> 336
    //   295: ldc 155
    //   297: astore 9
    //   299: ldc 186
    //   301: aload 9
    //   303: invokestatic 316	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   306: aload 7
    //   308: ifnull +10 -> 318
    //   311: aload 7
    //   313: invokeinterface 390 1 0
    //   318: aload 6
    //   320: ifnull +10 -> 330
    //   323: aload 6
    //   325: invokeinterface 390 1 0
    //   330: aconst_null
    //   331: astore 10
    //   333: goto -122 -> 211
    //   336: aload 5
    //   338: invokevirtual 314	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   341: astore 8
    //   343: aload 8
    //   345: astore 9
    //   347: goto -48 -> 299
    //   350: astore_3
    //   351: aconst_null
    //   352: astore 4
    //   354: aload 4
    //   356: ifnull +10 -> 366
    //   359: aload 4
    //   361: invokeinterface 390 1 0
    //   366: aload_2
    //   367: ifnull +9 -> 376
    //   370: aload_2
    //   371: invokeinterface 390 1 0
    //   376: aload_3
    //   377: athrow
    //   378: astore_3
    //   379: aconst_null
    //   380: astore_2
    //   381: goto -27 -> 354
    //   384: astore_3
    //   385: aload 6
    //   387: astore_2
    //   388: goto -34 -> 354
    //   391: astore_3
    //   392: aload 6
    //   394: astore_2
    //   395: aload 7
    //   397: astore 4
    //   399: goto -45 -> 354
    //   402: astore 5
    //   404: aload 4
    //   406: astore 7
    //   408: aconst_null
    //   409: astore 6
    //   411: goto -141 -> 270
    //   414: astore 5
    //   416: aload 4
    //   418: astore 7
    //   420: goto -150 -> 270
    //
    // Exception table:
    //   from	to	target	type
    //   2	63	262	java/lang/Throwable
    //   2	63	350	finally
    //   72	154	378	finally
    //   163	183	384	finally
    //   270	306	391	finally
    //   336	343	391	finally
    //   72	154	402	java/lang/Throwable
    //   163	183	414	java/lang/Throwable
  }

  // ERROR //
  private List<String> e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 120	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 259	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 82	bv:p	Landroid/content/ContentResolver;
    //   14: astore 12
    //   16: ldc_w 372
    //   19: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   22: astore 13
    //   24: iconst_1
    //   25: anewarray 171	java/lang/String
    //   28: astore 14
    //   30: aload 14
    //   32: iconst_0
    //   33: new 165	java/lang/StringBuilder
    //   36: dup
    //   37: ldc_w 374
    //   40: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc_w 376
    //   50: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: aastore
    //   57: aload 12
    //   59: aload 13
    //   61: aload 14
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 382	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 15
    //   71: aload 15
    //   73: astore 5
    //   75: aload 5
    //   77: ifnull +77 -> 154
    //   80: aload 5
    //   82: invokeinterface 385 1 0
    //   87: ifeq +67 -> 154
    //   90: aload 5
    //   92: iconst_0
    //   93: invokeinterface 254 2 0
    //   98: ldc_w 394
    //   101: invokevirtual 398	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   104: astore 16
    //   106: iconst_0
    //   107: istore 17
    //   109: aconst_null
    //   110: astore 18
    //   112: aload 16
    //   114: arraylength
    //   115: istore 19
    //   117: iload 17
    //   119: iload 19
    //   121: if_icmplt +51 -> 172
    //   124: aload 5
    //   126: ifnull +10 -> 136
    //   129: aload 5
    //   131: invokeinterface 390 1 0
    //   136: aload 18
    //   138: ifnull +10 -> 148
    //   141: aload 18
    //   143: invokeinterface 390 1 0
    //   148: aload_3
    //   149: astore 11
    //   151: aload 11
    //   153: areturn
    //   154: aload 5
    //   156: ifnull +10 -> 166
    //   159: aload 5
    //   161: invokeinterface 390 1 0
    //   166: aconst_null
    //   167: astore 11
    //   169: goto -18 -> 151
    //   172: aload_0
    //   173: getfield 82	bv:p	Landroid/content/ContentResolver;
    //   176: astore 20
    //   178: ldc_w 372
    //   181: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   184: astore 21
    //   186: iconst_1
    //   187: anewarray 171	java/lang/String
    //   190: astore 22
    //   192: aload 22
    //   194: iconst_0
    //   195: new 165	java/lang/StringBuilder
    //   198: dup
    //   199: ldc_w 387
    //   202: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: aload 16
    //   207: iload 17
    //   209: aaload
    //   210: invokevirtual 401	java/lang/String:trim	()Ljava/lang/String;
    //   213: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc_w 376
    //   219: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: aastore
    //   226: aload 20
    //   228: aload 21
    //   230: aload 22
    //   232: aconst_null
    //   233: aconst_null
    //   234: aconst_null
    //   235: invokevirtual 382	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   238: astore 23
    //   240: aload 23
    //   242: astore 7
    //   244: aload 7
    //   246: ifnull +38 -> 284
    //   249: aload 7
    //   251: invokeinterface 385 1 0
    //   256: ifeq +28 -> 284
    //   259: aload_3
    //   260: aload 7
    //   262: iconst_0
    //   263: invokeinterface 254 2 0
    //   268: invokeinterface 402 2 0
    //   273: pop
    //   274: iinc 17 1
    //   277: aload 7
    //   279: astore 18
    //   281: goto -169 -> 112
    //   284: aload 5
    //   286: ifnull +10 -> 296
    //   289: aload 5
    //   291: invokeinterface 390 1 0
    //   296: aload 7
    //   298: ifnull +10 -> 308
    //   301: aload 7
    //   303: invokeinterface 390 1 0
    //   308: aconst_null
    //   309: astore 11
    //   311: goto -160 -> 151
    //   314: astore 6
    //   316: aconst_null
    //   317: astore 7
    //   319: aconst_null
    //   320: astore 8
    //   322: new 165	java/lang/StringBuilder
    //   325: dup
    //   326: ldc_w 404
    //   329: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   332: aconst_null
    //   333: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   336: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   339: aload 6
    //   341: invokevirtual 314	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   344: if_acmpne +44 -> 388
    //   347: ldc 155
    //   349: astore 10
    //   351: ldc 186
    //   353: aload 10
    //   355: invokestatic 316	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   358: aload 8
    //   360: ifnull +10 -> 370
    //   363: aload 8
    //   365: invokeinterface 390 1 0
    //   370: aload 7
    //   372: ifnull +10 -> 382
    //   375: aload 7
    //   377: invokeinterface 390 1 0
    //   382: aconst_null
    //   383: astore 11
    //   385: goto -234 -> 151
    //   388: aload 6
    //   390: invokevirtual 314	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   393: astore 9
    //   395: aload 9
    //   397: astore 10
    //   399: goto -48 -> 351
    //   402: astore 4
    //   404: aconst_null
    //   405: astore 5
    //   407: aload 5
    //   409: ifnull +10 -> 419
    //   412: aload 5
    //   414: invokeinterface 390 1 0
    //   419: aload_2
    //   420: ifnull +9 -> 429
    //   423: aload_2
    //   424: invokeinterface 390 1 0
    //   429: aload 4
    //   431: athrow
    //   432: astore 4
    //   434: aconst_null
    //   435: astore_2
    //   436: goto -29 -> 407
    //   439: astore 4
    //   441: aload 7
    //   443: astore_2
    //   444: goto -37 -> 407
    //   447: astore 4
    //   449: aload 18
    //   451: astore_2
    //   452: goto -45 -> 407
    //   455: astore 4
    //   457: aload 7
    //   459: astore_2
    //   460: aload 8
    //   462: astore 5
    //   464: goto -57 -> 407
    //   467: astore 6
    //   469: aload 5
    //   471: astore 8
    //   473: aconst_null
    //   474: astore 7
    //   476: goto -154 -> 322
    //   479: astore 6
    //   481: aload 5
    //   483: astore 8
    //   485: goto -163 -> 322
    //   488: astore 6
    //   490: aload 18
    //   492: astore 7
    //   494: aload 5
    //   496: astore 8
    //   498: goto -176 -> 322
    //
    // Exception table:
    //   from	to	target	type
    //   10	71	314	java/lang/Throwable
    //   10	71	402	finally
    //   80	106	432	finally
    //   249	274	439	finally
    //   112	117	447	finally
    //   172	240	447	finally
    //   322	358	455	finally
    //   388	395	455	finally
    //   80	106	467	java/lang/Throwable
    //   249	274	479	java/lang/Throwable
    //   112	117	488	java/lang/Throwable
    //   172	240	488	java/lang/Throwable
  }

  // ERROR //
  public final int a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 82	bv:p	Landroid/content/ContentResolver;
    //   4: aload_0
    //   5: getfield 42	bv:a	Landroid/net/Uri;
    //   8: aconst_null
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: invokevirtual 382	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   15: astore 6
    //   17: aload 6
    //   19: astore_2
    //   20: aload_2
    //   21: ifnull +55 -> 76
    //   24: aload_2
    //   25: invokeinterface 407 1 0
    //   30: istore 8
    //   32: aload_2
    //   33: ldc 144
    //   35: invokeinterface 243 2 0
    //   40: istore 10
    //   42: iconst_0
    //   43: istore 11
    //   45: iload 10
    //   47: iflt +6 -> 53
    //   50: iconst_1
    //   51: istore 11
    //   53: aload_0
    //   54: iload 11
    //   56: putfield 72	bv:o	Z
    //   59: iload 8
    //   61: istore 5
    //   63: aload_2
    //   64: ifnull +9 -> 73
    //   67: aload_2
    //   68: invokeinterface 390 1 0
    //   73: iload 5
    //   75: ireturn
    //   76: ldc 186
    //   78: ldc_w 409
    //   81: invokestatic 199	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: iconst_0
    //   85: istore 5
    //   87: goto -24 -> 63
    //   90: astore_3
    //   91: aload_3
    //   92: astore 4
    //   94: aconst_null
    //   95: astore_2
    //   96: iconst_0
    //   97: istore 5
    //   99: ldc 186
    //   101: new 165	java/lang/StringBuilder
    //   104: dup
    //   105: ldc_w 411
    //   108: invokespecial 191	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   111: aload 4
    //   113: invokevirtual 412	java/lang/Throwable:toString	()Ljava/lang/String;
    //   116: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 316	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload_2
    //   126: ifnull -53 -> 73
    //   129: aload_2
    //   130: invokeinterface 390 1 0
    //   135: goto -62 -> 73
    //   138: astore_1
    //   139: aconst_null
    //   140: astore_2
    //   141: aload_2
    //   142: ifnull +9 -> 151
    //   145: aload_2
    //   146: invokeinterface 390 1 0
    //   151: aload_1
    //   152: athrow
    //   153: astore_1
    //   154: goto -13 -> 141
    //   157: astore 7
    //   159: aload 7
    //   161: astore 4
    //   163: iconst_0
    //   164: istore 5
    //   166: goto -67 -> 99
    //   169: astore 9
    //   171: iload 8
    //   173: istore 5
    //   175: aload 9
    //   177: astore 4
    //   179: goto -80 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   0	17	90	java/lang/Throwable
    //   0	17	138	finally
    //   24	32	153	finally
    //   32	59	153	finally
    //   76	84	153	finally
    //   99	125	153	finally
    //   24	32	157	java/lang/Throwable
    //   76	84	157	java/lang/Throwable
    //   32	59	169	java/lang/Throwable
  }

  public final cb.a a(String paramString)
  {
    cb.a locala;
    if (paramString == null)
      locala = cb.a.a;
    while (true)
    {
      return locala;
      if (this.p.delete(this.a, "_id=?", new String[] { paramString }) > 0)
        locala = cb.a.b;
      else
        locala = cb.a.a;
    }
  }

  public final String a(cc paramcc)
  {
    String str = null;
    if (paramcc == null);
    while (true)
    {
      return str;
      AtomicInteger localAtomicInteger = new AtomicInteger();
      try
      {
        ContentValues localContentValues = a(paramcc, localAtomicInteger);
        str = null;
        if (localContentValues != null)
        {
          if ((paramcc.b != null) && (!"".equals(paramcc.b)))
            localContentValues.put("_id", paramcc.b);
          Uri localUri = this.p.insert(this.a, localContentValues);
          str = null;
          if (localUri != null)
            str = Long.valueOf(ContentUris.parseId(localUri)).toString();
        }
      }
      catch (Exception localException)
      {
        dk.c("SYSSmsDaoV2", "add(), " + localException.toString());
        str = null;
      }
    }
  }

  public final boolean a(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    int i1 = paramArrayList.size();
    ArrayList localArrayList = new ArrayList();
    int i2 = 0;
    if (i2 >= i1);
    while (true)
    {
      int i3;
      Uri localUri;
      try
      {
        arrayOfContentProviderResult = this.p.applyBatch(this.a.getAuthority(), localArrayList);
        i3 = 0;
        if (i3 >= i1)
        {
          bool = true;
          return bool;
          a((cc)paramArrayList.get(i2), localArrayList);
          i2++;
        }
      }
      catch (RemoteException localRemoteException)
      {
        dk.c("SYSSmsDaoV2", "add(), " + localRemoteException.toString());
        bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
        continue;
      }
      catch (OperationApplicationException localOperationApplicationException)
      {
        dk.c("SYSSmsDaoV2", "add(), " + localOperationApplicationException.toString());
        bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
        continue;
      }
      catch (Exception localException1)
      {
        ContentProviderResult[] arrayOfContentProviderResult;
        dk.c("SYSSmsDaoV2", "add(), " + localException1.toString());
        boolean bool = b(paramArrayList, paramArrayList1, paramArrayOfInt);
        continue;
        localUri = arrayOfContentProviderResult[i3].uri;
      }
      try
      {
        String str2 = String.valueOf(ContentUris.parseId(localUri));
        str1 = str2;
        i4 = 1;
        if (i4 != 0)
        {
          paramArrayOfInt[i3] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
          dk.b("SYSSmsDaoV2", "add result retErrs[i]=" + paramArrayOfInt[i3] + " i =" + i3);
        }
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            paramArrayList1.add(i3, str1);
            i3++;
            break;
            localException2 = localException2;
            dk.c("SYSSmsDaoV2", "add(), " + localException2.toString());
            String str1 = "-1";
            int i4 = 0;
          }
          paramArrayOfInt[i3] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        }
        catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
        {
          while (true)
          {
            paramArrayOfInt[i3] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
            dk.c("SYSSmsDaoV2", "add(), " + localIndexOutOfBoundsException.toString());
          }
        }
      }
    }
  }

  public final cb.a b(cc paramcc)
  {
    cb.a locala;
    if (paramcc != null)
    {
      int i1 = paramcc.c.size();
      int i2 = 0;
      if (i1 > 0)
      {
        paramcc.d = Integer.valueOf(0);
        i2 = 1;
      }
      if (i2 != 0);
    }
    else
    {
      locala = cb.a.a;
    }
    while (true)
    {
      return locala;
      try
      {
        Uri localUri = Uri.withAppendedPath(this.a, paramcc.b);
        AtomicInteger localAtomicInteger = new AtomicInteger();
        ContentValues localContentValues = a(paramcc, localAtomicInteger);
        if (localContentValues == null)
        {
          locala = cb.a.a;
        }
        else if (localAtomicInteger.get() == 3)
        {
          a(paramcc.b);
          if (a(paramcc) != null)
            locala = cb.a.b;
          else
            locala = cb.a.c;
        }
        else if (this.p.update(localUri, localContentValues, null, null) > 0)
        {
          locala = cb.a.b;
        }
        else
        {
          locala = cb.a.a;
        }
      }
      catch (Exception localException)
      {
        dk.c("SYSSmsDaoV2", "update(), " + localException.toString());
        locala = cb.a.c;
      }
    }
  }

  public final void b()
  {
    Uri localUri = ContentUris.withAppendedId(this.b, -1L);
    this.p.delete(localUri, "type=3", null);
  }

  public final boolean b(String paramString)
  {
    boolean bool1 = false;
    if (paramString == null);
    Cursor localCursor;
    do
    {
      return bool1;
      Uri localUri = Uri.withAppendedPath(this.a, paramString);
      localCursor = this.p.query(localUri, new String[] { "_id" }, null, null, null);
      bool1 = false;
    }
    while (localCursor == null);
    if (localCursor.moveToFirst());
    for (boolean bool2 = true; ; bool2 = false)
    {
      localCursor.close();
      bool1 = bool2;
      break;
    }
  }

  public final cc c(String paramString)
  {
    cc localcc = null;
    if (paramString == null);
    while (true)
    {
      return localcc;
      Uri localUri = Uri.withAppendedPath(this.a, paramString);
      Cursor localCursor = this.p.query(localUri, null, null, null, null);
      if (localCursor != null)
        localCursor.moveToFirst();
      localcc = a(localCursor);
      if (localCursor != null)
        localCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bv
 * JD-Core Version:    0.6.2
 */