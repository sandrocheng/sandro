import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class bu extends bt
{
  private static bu r = null;
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

  private bu(Context paramContext)
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
            break label458;
          if (i2 == 0)
            localContentValues.put("address", "");
        }
      }
      label458: 
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
          if ((6 == localInteger.intValue()) || (5 == localInteger.intValue()) || (4 == localInteger.intValue()))
          {
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
    if (paramCursor == null);
    for (Object localObject1 = null; ; localObject1 = null)
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
      if (this.k)
        break;
    }
    while (true)
    {
      ArrayList localArrayList;
      String str7;
      StringBuffer localStringBuffer2;
      List localList;
      int i3;
      bn localbn;
      StringBuffer localStringBuffer1;
      int i2;
      try
      {
        cp localcp1 = new cp();
        cp localcp2 = new cp();
        cp localcp3 = new cp();
        cp localcp4 = new cp();
        cp localcp5 = new cp();
        String str1 = paramCursor.getString(this.c);
        if (str1 == null)
        {
          localObject1 = null;
          break;
        }
        localcp1.a[0].append("FOLDER");
        int i1 = paramCursor.getInt(this.f);
        String str2 = (String)this.l.get(Integer.valueOf(i1));
        if (str2 == null)
          break label833;
        if (str2 != null)
          localcp1.a[2].append(str2);
        localcp2.a[0].append("SENDER");
        str3 = paramCursor.getString(this.d);
        localArrayList = new ArrayList();
        if ((i1 != 3) || ((str3 != null) && (str3.length() != 0)))
          break label934;
        str7 = paramCursor.getString(this.h);
        if (!ci.a)
          break label868;
        localStringBuffer2 = new StringBuffer();
        localList = e(str7);
        i3 = 0;
        if (i3 < localList.size())
          break label838;
        str3 = localStringBuffer2.toString();
        localObject2 = localList;
        if ((de.g()) && ("".equals(str3)))
          str3 = null;
        if (str3 != null)
          localcp2.a[2].append(str3);
        localcp3.a[0].append("SENDNAME");
        Long.valueOf(paramCursor.getLong(this.j));
        localbn = (bn)bn.a(this.q);
        localObject3 = (String)this.n.get(str3);
        if (localObject3 == null)
        {
          if ((!ci.a) || (i1 != 3))
            break label918;
          localStringBuffer1 = new StringBuffer();
          i2 = 0;
          if (i2 < ((List)localObject2).size())
            break label883;
          localObject3 = localStringBuffer1.toString();
          if ((localObject3 == null) || ("".equals(localObject3)))
            break label941;
          this.n.put(str3, localObject3);
        }
        if (localObject3 != null)
          localcp3.a[2].append((String)localObject3);
        localcp4.a[0].append("SENDDATE");
        String str4 = de.a(paramCursor.getLong(this.i));
        if (str4 != null)
          localcp4.a[2].append(str4);
        localcp5.a[0].append("INFORMATION");
        String str5 = paramCursor.getString(this.e);
        if (str5 != null)
          localcp5.a[2].append(str5);
        localObject1 = new cr();
        ((cc)localObject1).b = str1;
        if (localcp1 != null)
          ((cc)localObject1).c.add(localcp1);
        if (localcp2 != null)
          ((cc)localObject1).c.add(localcp2);
        if (localcp3 != null)
          ((cc)localObject1).c.add(localcp3);
        if (localcp4 != null)
          ((cc)localObject1).c.add(localcp4);
        if (localcp5 == null)
          break;
        ((cc)localObject1).c.add(localcp5);
      }
      catch (Throwable localThrowable)
      {
        localThrowable.getMessage();
        dk.c("SYSSmsDaoV1", "getSMSEntity(), " + localThrowable.toString());
        localObject1 = null;
      }
      break;
      label833: localObject1 = null;
      break;
      label838: localStringBuffer2.append((String)localList.get(i3)).append(",");
      i3++;
      continue;
      label868: String str3 = d(str7);
      Object localObject2 = localArrayList;
      continue;
      label883: localStringBuffer1.append(localbn.d((String)((List)localObject2).get(i2))).append(",");
      i2++;
      continue;
      label918: String str6 = localbn.d(str3);
      Object localObject3 = str6;
      continue;
      label934: localObject2 = localArrayList;
      continue;
      label941: localObject3 = str3;
    }
  }

  protected static bu b(Context paramContext)
  {
    if (r == null)
      r = new bu(paramContext);
    return r;
  }

  // ERROR //
  private String d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 82	bu:p	Landroid/content/ContentResolver;
    //   6: astore 9
    //   8: ldc_w 311
    //   11: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   14: astore 10
    //   16: iconst_1
    //   17: anewarray 171	java/lang/String
    //   20: astore 11
    //   22: aload 11
    //   24: iconst_0
    //   25: new 165	java/lang/StringBuilder
    //   28: dup
    //   29: ldc_w 313
    //   32: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_1
    //   36: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc_w 315
    //   42: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: aastore
    //   49: aload 9
    //   51: aload 10
    //   53: aload 11
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 321	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 12
    //   63: aload 12
    //   65: astore 4
    //   67: aload 4
    //   69: ifnull +145 -> 214
    //   72: aload 4
    //   74: invokeinterface 324 1 0
    //   79: ifeq +135 -> 214
    //   82: aload 4
    //   84: iconst_0
    //   85: invokeinterface 234 2 0
    //   90: astore 13
    //   92: aload_0
    //   93: getfield 82	bu:p	Landroid/content/ContentResolver;
    //   96: astore 14
    //   98: ldc_w 311
    //   101: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   104: astore 15
    //   106: iconst_1
    //   107: anewarray 171	java/lang/String
    //   110: astore 16
    //   112: aload 16
    //   114: iconst_0
    //   115: new 165	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 326
    //   122: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload 13
    //   127: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc_w 315
    //   133: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: aastore
    //   140: aload 14
    //   142: aload 15
    //   144: aload 16
    //   146: aconst_null
    //   147: aconst_null
    //   148: aconst_null
    //   149: invokevirtual 321	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   152: astore 17
    //   154: aload 17
    //   156: astore 6
    //   158: aload 6
    //   160: ifnull +72 -> 232
    //   163: aload 6
    //   165: invokeinterface 324 1 0
    //   170: ifeq +62 -> 232
    //   173: aload 6
    //   175: iconst_0
    //   176: invokeinterface 234 2 0
    //   181: astore 18
    //   183: aload 18
    //   185: astore 8
    //   187: aload 4
    //   189: ifnull +10 -> 199
    //   192: aload 4
    //   194: invokeinterface 329 1 0
    //   199: aload 6
    //   201: ifnull +10 -> 211
    //   204: aload 6
    //   206: invokeinterface 329 1 0
    //   211: aload 8
    //   213: areturn
    //   214: aload 4
    //   216: ifnull +10 -> 226
    //   219: aload 4
    //   221: invokeinterface 329 1 0
    //   226: aconst_null
    //   227: astore 8
    //   229: goto -18 -> 211
    //   232: aload 4
    //   234: ifnull +10 -> 244
    //   237: aload 4
    //   239: invokeinterface 329 1 0
    //   244: aload 6
    //   246: ifnull +10 -> 256
    //   249: aload 6
    //   251: invokeinterface 329 1 0
    //   256: aconst_null
    //   257: astore 8
    //   259: goto -48 -> 211
    //   262: astore 5
    //   264: aconst_null
    //   265: astore 6
    //   267: aconst_null
    //   268: astore 7
    //   270: ldc_w 285
    //   273: new 165	java/lang/StringBuilder
    //   276: dup
    //   277: ldc_w 331
    //   280: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   283: aload 5
    //   285: invokevirtual 283	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   288: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokestatic 295	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   297: aload 7
    //   299: ifnull +10 -> 309
    //   302: aload 7
    //   304: invokeinterface 329 1 0
    //   309: aload 6
    //   311: ifnull +10 -> 321
    //   314: aload 6
    //   316: invokeinterface 329 1 0
    //   321: aconst_null
    //   322: astore 8
    //   324: goto -113 -> 211
    //   327: astore_3
    //   328: aconst_null
    //   329: astore 4
    //   331: aload 4
    //   333: ifnull +10 -> 343
    //   336: aload 4
    //   338: invokeinterface 329 1 0
    //   343: aload_2
    //   344: ifnull +9 -> 353
    //   347: aload_2
    //   348: invokeinterface 329 1 0
    //   353: aload_3
    //   354: athrow
    //   355: astore_3
    //   356: aconst_null
    //   357: astore_2
    //   358: goto -27 -> 331
    //   361: astore_3
    //   362: aload 6
    //   364: astore_2
    //   365: goto -34 -> 331
    //   368: astore_3
    //   369: aload 6
    //   371: astore_2
    //   372: aload 7
    //   374: astore 4
    //   376: goto -45 -> 331
    //   379: astore 5
    //   381: aload 4
    //   383: astore 7
    //   385: aconst_null
    //   386: astore 6
    //   388: goto -118 -> 270
    //   391: astore 5
    //   393: aload 4
    //   395: astore 7
    //   397: goto -127 -> 270
    //
    // Exception table:
    //   from	to	target	type
    //   2	63	262	java/lang/Throwable
    //   2	63	327	finally
    //   72	154	355	finally
    //   163	183	361	finally
    //   270	297	368	finally
    //   72	154	379	java/lang/Throwable
    //   163	183	391	java/lang/Throwable
  }

  // ERROR //
  private List<String> e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 120	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 243	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 82	bu:p	Landroid/content/ContentResolver;
    //   14: astore 10
    //   16: ldc_w 311
    //   19: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   22: astore 11
    //   24: iconst_1
    //   25: anewarray 171	java/lang/String
    //   28: astore 12
    //   30: aload 12
    //   32: iconst_0
    //   33: new 165	java/lang/StringBuilder
    //   36: dup
    //   37: ldc_w 313
    //   40: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc_w 315
    //   50: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: aastore
    //   57: aload 10
    //   59: aload 11
    //   61: aload 12
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 321	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 13
    //   71: aload 13
    //   73: astore 5
    //   75: aload 5
    //   77: ifnull +77 -> 154
    //   80: aload 5
    //   82: invokeinterface 324 1 0
    //   87: ifeq +67 -> 154
    //   90: aload 5
    //   92: iconst_0
    //   93: invokeinterface 234 2 0
    //   98: ldc_w 333
    //   101: invokevirtual 337	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   104: astore 14
    //   106: iconst_0
    //   107: istore 15
    //   109: aconst_null
    //   110: astore 16
    //   112: aload 14
    //   114: arraylength
    //   115: istore 17
    //   117: iload 15
    //   119: iload 17
    //   121: if_icmplt +51 -> 172
    //   124: aload 5
    //   126: ifnull +10 -> 136
    //   129: aload 5
    //   131: invokeinterface 329 1 0
    //   136: aload 16
    //   138: ifnull +10 -> 148
    //   141: aload 16
    //   143: invokeinterface 329 1 0
    //   148: aload_3
    //   149: astore 9
    //   151: aload 9
    //   153: areturn
    //   154: aload 5
    //   156: ifnull +10 -> 166
    //   159: aload 5
    //   161: invokeinterface 329 1 0
    //   166: aconst_null
    //   167: astore 9
    //   169: goto -18 -> 151
    //   172: aload_0
    //   173: getfield 82	bu:p	Landroid/content/ContentResolver;
    //   176: astore 18
    //   178: ldc_w 311
    //   181: invokestatic 50	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   184: astore 19
    //   186: iconst_1
    //   187: anewarray 171	java/lang/String
    //   190: astore 20
    //   192: aload 20
    //   194: iconst_0
    //   195: new 165	java/lang/StringBuilder
    //   198: dup
    //   199: ldc_w 326
    //   202: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: aload 14
    //   207: iload 15
    //   209: aaload
    //   210: invokevirtual 340	java/lang/String:trim	()Ljava/lang/String;
    //   213: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc_w 315
    //   219: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: aastore
    //   226: aload 18
    //   228: aload 19
    //   230: aload 20
    //   232: aconst_null
    //   233: aconst_null
    //   234: aconst_null
    //   235: invokevirtual 321	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   238: astore 21
    //   240: aload 21
    //   242: astore 7
    //   244: aload 7
    //   246: ifnull +38 -> 284
    //   249: aload 7
    //   251: invokeinterface 324 1 0
    //   256: ifeq +28 -> 284
    //   259: aload_3
    //   260: aload 7
    //   262: iconst_0
    //   263: invokeinterface 234 2 0
    //   268: invokeinterface 341 2 0
    //   273: pop
    //   274: iinc 15 1
    //   277: aload 7
    //   279: astore 16
    //   281: goto -169 -> 112
    //   284: aload 5
    //   286: ifnull +10 -> 296
    //   289: aload 5
    //   291: invokeinterface 329 1 0
    //   296: aload 7
    //   298: ifnull +10 -> 308
    //   301: aload 7
    //   303: invokeinterface 329 1 0
    //   308: aconst_null
    //   309: astore 9
    //   311: goto -160 -> 151
    //   314: astore 6
    //   316: aconst_null
    //   317: astore 7
    //   319: aconst_null
    //   320: astore 8
    //   322: ldc_w 285
    //   325: new 165	java/lang/StringBuilder
    //   328: dup
    //   329: ldc_w 343
    //   332: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   335: aload 6
    //   337: invokevirtual 283	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   340: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: invokestatic 295	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   349: aload 8
    //   351: ifnull +10 -> 361
    //   354: aload 8
    //   356: invokeinterface 329 1 0
    //   361: aload 7
    //   363: ifnull +10 -> 373
    //   366: aload 7
    //   368: invokeinterface 329 1 0
    //   373: aconst_null
    //   374: astore 9
    //   376: goto -225 -> 151
    //   379: astore 4
    //   381: aconst_null
    //   382: astore 5
    //   384: aload 5
    //   386: ifnull +10 -> 396
    //   389: aload 5
    //   391: invokeinterface 329 1 0
    //   396: aload_2
    //   397: ifnull +9 -> 406
    //   400: aload_2
    //   401: invokeinterface 329 1 0
    //   406: aload 4
    //   408: athrow
    //   409: astore 4
    //   411: aconst_null
    //   412: astore_2
    //   413: goto -29 -> 384
    //   416: astore 4
    //   418: aload 7
    //   420: astore_2
    //   421: goto -37 -> 384
    //   424: astore 4
    //   426: aload 16
    //   428: astore_2
    //   429: goto -45 -> 384
    //   432: astore 4
    //   434: aload 7
    //   436: astore_2
    //   437: aload 8
    //   439: astore 5
    //   441: goto -57 -> 384
    //   444: astore 6
    //   446: aload 5
    //   448: astore 8
    //   450: aconst_null
    //   451: astore 7
    //   453: goto -131 -> 322
    //   456: astore 6
    //   458: aload 5
    //   460: astore 8
    //   462: goto -140 -> 322
    //   465: astore 6
    //   467: aload 16
    //   469: astore 7
    //   471: aload 5
    //   473: astore 8
    //   475: goto -153 -> 322
    //
    // Exception table:
    //   from	to	target	type
    //   10	71	314	java/lang/Throwable
    //   10	71	379	finally
    //   80	106	409	finally
    //   249	274	416	finally
    //   112	117	424	finally
    //   172	240	424	finally
    //   322	349	432	finally
    //   80	106	444	java/lang/Throwable
    //   249	274	456	java/lang/Throwable
    //   112	117	465	java/lang/Throwable
    //   172	240	465	java/lang/Throwable
  }

  public final int a()
  {
    boolean bool1 = true;
    int i1;
    boolean bool2;
    if (ci.E)
    {
      ContentResolver localContentResolver = this.p;
      Uri localUri = this.a;
      String[] arrayOfString = new String[bool1];
      arrayOfString[0] = "0";
      Cursor localCursor2 = localContentResolver.query(localUri, null, "type>?", arrayOfString, null);
      i1 = 0;
      if (localCursor2 != null)
      {
        int i3 = localCursor2.getCount();
        if (localCursor2.getColumnIndex("seen") < 0)
          break label98;
        bool2 = bool1;
        this.o = bool2;
        localCursor2.close();
        i1 = i3;
      }
    }
    label98: Cursor localCursor1;
    do
    {
      return i1;
      bool2 = false;
      break;
      localCursor1 = this.p.query(this.a, null, null, null, null);
      i1 = 0;
    }
    while (localCursor1 == null);
    int i2 = localCursor1.getCount();
    if (localCursor1.getColumnIndex("seen") >= 0);
    while (true)
    {
      this.o = bool1;
      localCursor1.close();
      i1 = i2;
      break;
      bool1 = false;
    }
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
        dk.c("SYSSmsDaoV1", "add(), " + localException.toString());
        str = null;
      }
    }
  }

  public final boolean a(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    int i1 = paramArrayList.size();
    int i2 = 0;
    if (i2 >= i1)
      return true;
    String str = a((cc)paramArrayList.get(i2));
    paramArrayList1.add(str);
    if (str == null)
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
    while (true)
    {
      i2++;
      break;
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
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
        dk.c("SYSSmsDaoV1", "update(), " + localException.toString());
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
 * Qualified Name:     bu
 * JD-Core Version:    0.6.2
 */