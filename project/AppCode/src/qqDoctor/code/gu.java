import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader.ExtraAddress;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import com.tencent.tmsecure.module.aresengine.MmsPart;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class gu
{
  public static final Uri a = Uri.parse("content://sms/inbox");
  public static final Uri b;
  public static final Uri c;
  public static final Uri d;

  static
  {
    Uri.parse("content://sms/outbox");
    b = Uri.parse("content://sms");
    c = Uri.parse("content://mms");
    Uri.parse("content://mms-sms/inbox");
    d = Uri.parse("content://mms/inbox");
    Uri.parse("content://mms/outbox");
    Uri.parse("content://mms/sent");
    Uri.parse("content://mms/draft");
    Uri.parse("content://mms/part");
  }

  public static ContentValues a(mk parammk, int paramInt)
  {
    ContentValues localContentValues = null;
    if (parammk != null)
    {
      MmsData localMmsData = parammk.mmsData;
      localContentValues = null;
      if (localMmsData != null)
      {
        localContentValues = null;
        if (paramInt >= 0)
          break label25;
      }
    }
    while (true)
    {
      return localContentValues;
      label25: if (parammk.mmsData.mmsContentConfigHeader != null)
      {
        MmsContentConfigHeader localMmsContentConfigHeader = parammk.mmsData.mmsContentConfigHeader;
        int j = localMmsContentConfigHeader.messageType;
        if ((j != 128) && (j != 132))
        {
          new StringBuilder("a valid content pdu type: ").append(j).toString();
          localContentValues = null;
        }
        else
        {
          localContentValues = new ContentValues(26);
          localContentValues.put("sl_id", Integer.valueOf(paramInt));
          localContentValues.put("m_type", Integer.valueOf(j));
          localContentValues.put("pn_cs", Integer.valueOf(localMmsContentConfigHeader.phonenumCharset));
          localContentValues.put("sub", localMmsContentConfigHeader.subject);
          localContentValues.put("sub_cs", Integer.valueOf(localMmsContentConfigHeader.subjectCharset));
          localContentValues.put("m_cls", localMmsContentConfigHeader.messageclass);
          localContentValues.put("tr_id", localMmsContentConfigHeader.transactionId);
          localContentValues.put("v", Integer.valueOf(localMmsContentConfigHeader.mmsVersion));
          localContentValues.put("m_id", localMmsContentConfigHeader.messageId);
          localContentValues.put("ct_t", localMmsContentConfigHeader.contentType);
          localContentValues.put("pri", Integer.valueOf(localMmsContentConfigHeader.priority));
          localContentValues.put("rr", Integer.valueOf(localMmsContentConfigHeader.readReport));
          localContentValues.put("rpt_a", Integer.valueOf(localMmsContentConfigHeader.reportAllowed));
          localContentValues.put("retr_st", Integer.valueOf(localMmsContentConfigHeader.retrieveStatus));
          localContentValues.put("retr_txt", localMmsContentConfigHeader.retrieveText);
          localContentValues.put("retr_txt_cs", Integer.valueOf(localMmsContentConfigHeader.retrieveTextCharset));
          localContentValues.put("resp_st", Integer.valueOf(localMmsContentConfigHeader.responseStatus));
          localContentValues.put("resp_txt", localMmsContentConfigHeader.responseText);
          localContentValues.put("exp", Long.valueOf(localMmsContentConfigHeader.expiry));
          localContentValues.put("m_size", Long.valueOf(localMmsContentConfigHeader.messageSize));
          localContentValues.put("d_tm", Integer.valueOf(localMmsContentConfigHeader.deliverytime));
          localContentValues.put("d_rpt", Integer.valueOf(localMmsContentConfigHeader.deliveryReport));
          if (localMmsContentConfigHeader.toAddresses != null)
            localContentValues.put("to_addr", a(localMmsContentConfigHeader.toAddresses));
          if (localMmsContentConfigHeader.ccAddresses != null)
            localContentValues.put("cc_addr", a(localMmsContentConfigHeader.ccAddresses));
          if (localMmsContentConfigHeader.bccAddresses != null)
            localContentValues.put("bcc_addr", a(localMmsContentConfigHeader.bccAddresses));
        }
      }
      else
      {
        while (true)
        {
          if (localContentValues == null)
            break label722;
          if (parammk.f == null)
            break label724;
          localContentValues.put("f_c", parammk.f);
          break;
          MmsNotificationIndHeader localMmsNotificationIndHeader1 = parammk.mmsData.mmsNotificationIndHeader;
          localContentValues = null;
          if (localMmsNotificationIndHeader1 != null)
          {
            MmsNotificationIndHeader localMmsNotificationIndHeader2 = parammk.mmsData.mmsNotificationIndHeader;
            int i = localMmsNotificationIndHeader2.messageType;
            if (i != 130)
            {
              new StringBuilder("a valid content pdu type: ").append(i).toString();
              localContentValues = null;
              break;
            }
            localContentValues = new ContentValues(15);
            localContentValues.put("sl_id", Integer.valueOf(paramInt));
            localContentValues.put("m_type", Integer.valueOf(i));
            localContentValues.put("pn_cs", Integer.valueOf(localMmsNotificationIndHeader2.phonenumCharset));
            localContentValues.put("sub", localMmsNotificationIndHeader2.subject);
            localContentValues.put("sub_cs", Integer.valueOf(localMmsNotificationIndHeader2.subjectCharset));
            localContentValues.put("ct_l", localMmsNotificationIndHeader2.contentLocation);
            localContentValues.put("m_cls", localMmsNotificationIndHeader2.messageclass);
            localContentValues.put("m_type", Integer.valueOf(localMmsNotificationIndHeader2.messageType));
            localContentValues.put("tr_id", localMmsNotificationIndHeader2.transactionId);
            localContentValues.put("v", Integer.valueOf(localMmsNotificationIndHeader2.mmsVersion));
            localContentValues.put("exp", Long.valueOf(localMmsNotificationIndHeader2.expiry));
            localContentValues.put("m_size", Long.valueOf(localMmsNotificationIndHeader2.messageSize));
            localContentValues.put("ct_cls", Integer.valueOf(localMmsNotificationIndHeader2.contentClass));
            localContentValues.put("d_rpt", Integer.valueOf(localMmsNotificationIndHeader2.deliveryReport));
          }
        }
        label722: continue;
        label724: if ((parammk.raw != null) && (u.a().b() > 1))
        {
          String str1 = u.a().c();
          if (str1 != null)
          {
            String str2 = parammk.raw.getStringExtra(str1);
            if (str2 == null)
              str2 = u.a().a(parammk.raw);
            if (str2 != null)
              localContentValues.put("f_c", str2);
          }
        }
      }
    }
  }

  public static ContentValues a(mk parammk, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (parammk != null)
    {
      localContentValues.put("address", parammk.phonenum);
      localContentValues.put("person", Integer.valueOf(parammk.b));
      localContentValues.put("date", Long.valueOf(parammk.date));
      localContentValues.put("protocol", Integer.valueOf((parammk.j << 8) + parammk.protocolType));
      localContentValues.put("read", Integer.valueOf(parammk.read));
      localContentValues.put("status", Integer.valueOf(parammk.h));
      localContentValues.put("type", Integer.valueOf(parammk.type));
      localContentValues.put("subject", parammk.c);
      localContentValues.put("body", parammk.getBody());
      localContentValues.put("service_center", parammk.d);
      if (!paramBoolean)
      {
        localContentValues.put("thread_id", Integer.valueOf(parammk.e));
        localContentValues.put("read_extend", Integer.valueOf(parammk.a));
        localContentValues.put("displayName", parammk.name);
      }
    }
    return localContentValues;
  }

  private static String a(MmsContentConfigHeader.ExtraAddress[] paramArrayOfExtraAddress)
  {
    if ((paramArrayOfExtraAddress == null) || (paramArrayOfExtraAddress.length == 0));
    StringBuffer localStringBuffer;
    for (String str = null; ; str = localStringBuffer.toString())
    {
      return str;
      localStringBuffer = new StringBuffer();
      int i = paramArrayOfExtraAddress.length;
      for (int j = 0; j < i; j++)
      {
        MmsContentConfigHeader.ExtraAddress localExtraAddress = paramArrayOfExtraAddress[j];
        localStringBuffer.append("|" + localExtraAddress.characterSet + "." + localExtraAddress.phonenumber);
      }
    }
  }

  public static List<mk> a(Cursor paramCursor, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    String str1;
    int i8;
    mk localmk;
    if (paramCursor != null)
    {
      if (!paramBoolean)
        break label432;
      try
      {
        str1 = "_id";
        int i = paramCursor.getColumnIndex(str1);
        int j = paramCursor.getColumnIndexOrThrow("thread_id");
        int k = paramCursor.getColumnIndexOrThrow("address");
        int m = paramCursor.getColumnIndexOrThrow("person");
        int n = paramCursor.getColumnIndexOrThrow("date");
        int i1 = paramCursor.getColumnIndexOrThrow("protocol");
        int i2 = paramCursor.getColumnIndexOrThrow("read");
        int i3 = paramCursor.getColumnIndexOrThrow("status");
        int i4 = paramCursor.getColumnIndexOrThrow("type");
        int i5 = paramCursor.getColumnIndexOrThrow("subject");
        int i6 = paramCursor.getColumnIndexOrThrow("body");
        int i7 = paramCursor.getColumnIndexOrThrow("service_center");
        i8 = paramCursor.getColumnIndex("read_extend");
        int i9 = paramCursor.getColumnIndex("displayName");
        paramCursor.moveToFirst();
        while (true)
        {
          if (paramCursor.isAfterLast())
            break label522;
          localmk = new mk();
          localmk.id = paramCursor.getInt(i);
          localmk.e = paramCursor.getInt(j);
          localmk.a(paramCursor.getString(k));
          localmk.b = paramCursor.getInt(m);
          localmk.date = paramCursor.getLong(n);
          int i10 = paramCursor.getInt(i1);
          localmk.protocolType = (i10 & 0xFF);
          localmk.j = (i10 >> 8);
          localmk.read = paramCursor.getInt(i2);
          localmk.h = paramCursor.getInt(i3);
          localmk.type = paramCursor.getInt(i4);
          localmk.c = paramCursor.getString(i5);
          localmk.body = paramCursor.getString(i6);
          localmk.d = paramCursor.getString(i7);
          if (paramBoolean)
            break label455;
          if (i8 != -1)
            break;
          localmk.a = localmk.read;
          label391: localmk.name = paramCursor.getString(i9);
          localArrayList.add(localmk);
          paramCursor.moveToNext();
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    while (true)
    {
      return localArrayList;
      label432: str1 = "id";
      break;
      localmk.a = paramCursor.getInt(i8);
      break label391;
      label455: if (i8 == -1);
      for (localmk.a = localmk.read; ; localmk.a = 0)
      {
        String str2 = localmk.phonenum;
        if ((str2 == null) || (!str2.contains(" ")))
          break;
        localmk.phonenum = str2.replaceAll(" ", "");
        break;
      }
      label522: paramCursor.close();
    }
  }

  // ERROR //
  public static mk a(Cursor paramCursor)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnull +367 -> 370
    //   6: aload_0
    //   7: invokeinterface 395 1 0
    //   12: istore_3
    //   13: aconst_null
    //   14: astore_1
    //   15: iload_3
    //   16: ifeq +348 -> 364
    //   19: aload_0
    //   20: ldc_w 382
    //   23: invokeinterface 388 2 0
    //   28: istore 4
    //   30: aload_0
    //   31: ldc_w 340
    //   34: invokeinterface 391 2 0
    //   39: istore 5
    //   41: aload_0
    //   42: ldc_w 294
    //   45: invokeinterface 391 2 0
    //   50: istore 6
    //   52: aload_0
    //   53: ldc_w 299
    //   56: invokeinterface 391 2 0
    //   61: istore 7
    //   63: aload_0
    //   64: ldc_w 303
    //   67: invokeinterface 391 2 0
    //   72: istore 8
    //   74: aload_0
    //   75: ldc_w 307
    //   78: invokeinterface 391 2 0
    //   83: istore 9
    //   85: aload_0
    //   86: ldc_w 315
    //   89: invokeinterface 391 2 0
    //   94: istore 10
    //   96: aload_0
    //   97: ldc_w 319
    //   100: invokeinterface 391 2 0
    //   105: istore 11
    //   107: aload_0
    //   108: ldc_w 324
    //   111: invokeinterface 391 2 0
    //   116: istore 12
    //   118: aload_0
    //   119: ldc_w 327
    //   122: invokeinterface 391 2 0
    //   127: istore 13
    //   129: aload_0
    //   130: ldc_w 331
    //   133: invokeinterface 391 2 0
    //   138: istore 14
    //   140: aload_0
    //   141: ldc_w 336
    //   144: invokeinterface 391 2 0
    //   149: istore 15
    //   151: aload_0
    //   152: ldc_w 345
    //   155: invokeinterface 388 2 0
    //   160: istore 16
    //   162: new 48	mk
    //   165: dup
    //   166: invokespecial 399	mk:<init>	()V
    //   169: astore 17
    //   171: aload 17
    //   173: aload_0
    //   174: iload 4
    //   176: invokeinterface 403 2 0
    //   181: putfield 406	mk:id	I
    //   184: aload 17
    //   186: aload_0
    //   187: iload 5
    //   189: invokeinterface 403 2 0
    //   194: putfield 343	mk:e	I
    //   197: aload 17
    //   199: aload_0
    //   200: iload 6
    //   202: invokeinterface 410 2 0
    //   207: invokevirtual 412	mk:a	(Ljava/lang/String;)V
    //   210: aload 17
    //   212: aload_0
    //   213: iload 7
    //   215: invokeinterface 403 2 0
    //   220: putfield 301	mk:b	I
    //   223: aload 17
    //   225: aload_0
    //   226: iload 8
    //   228: invokeinterface 416 2 0
    //   233: putfield 305	mk:date	J
    //   236: aload_0
    //   237: iload 9
    //   239: invokeinterface 403 2 0
    //   244: istore 19
    //   246: aload 17
    //   248: iload 19
    //   250: sipush 255
    //   253: iand
    //   254: putfield 313	mk:protocolType	I
    //   257: aload 17
    //   259: iload 19
    //   261: bipush 8
    //   263: ishr
    //   264: putfield 310	mk:j	I
    //   267: aload 17
    //   269: aload_0
    //   270: iload 10
    //   272: invokeinterface 403 2 0
    //   277: putfield 317	mk:read	I
    //   280: aload 17
    //   282: aload_0
    //   283: iload 11
    //   285: invokeinterface 403 2 0
    //   290: putfield 322	mk:h	I
    //   293: aload 17
    //   295: aload_0
    //   296: iload 12
    //   298: invokeinterface 403 2 0
    //   303: putfield 326	mk:type	I
    //   306: aload 17
    //   308: aload_0
    //   309: iload 13
    //   311: invokeinterface 410 2 0
    //   316: putfield 329	mk:c	Ljava/lang/String;
    //   319: aload 17
    //   321: aload_0
    //   322: iload 14
    //   324: invokeinterface 410 2 0
    //   329: putfield 418	mk:body	Ljava/lang/String;
    //   332: aload 17
    //   334: aload_0
    //   335: iload 15
    //   337: invokeinterface 410 2 0
    //   342: putfield 338	mk:d	Ljava/lang/String;
    //   345: iload 16
    //   347: iconst_m1
    //   348: if_icmpne +24 -> 372
    //   351: aload 17
    //   353: aload 17
    //   355: getfield 317	mk:read	I
    //   358: putfield 347	mk:a	I
    //   361: aload 17
    //   363: astore_1
    //   364: aload_0
    //   365: invokeinterface 448 1 0
    //   370: aload_1
    //   371: areturn
    //   372: aload 17
    //   374: iconst_0
    //   375: putfield 347	mk:a	I
    //   378: aload 17
    //   380: astore_1
    //   381: goto -17 -> 364
    //   384: astore_2
    //   385: aload_2
    //   386: invokevirtual 430	java/lang/Exception:printStackTrace	()V
    //   389: goto -19 -> 370
    //   392: astore 18
    //   394: aload 17
    //   396: astore_1
    //   397: aload 18
    //   399: astore_2
    //   400: goto -15 -> 385
    //
    // Exception table:
    //   from	to	target	type
    //   6	171	384	java/lang/Exception
    //   364	370	384	java/lang/Exception
    //   171	361	392	java/lang/Exception
    //   372	378	392	java/lang/Exception
  }

  public static void a(int paramInt)
  {
    String str = "";
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      ft.a(str);
      return;
      str = "10010";
      continue;
      str = "10086";
      continue;
      str = "10001";
    }
  }

  public static void a(Context paramContext)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramContext.getString(2131428010);
    arrayOfString[1] = paramContext.getString(2131428011);
    arrayOfString[2] = paramContext.getString(2131428012);
    ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(paramContext);
    ArrayList localArrayList = new ArrayList();
    ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
    localContextMenuModel1.name = arrayOfString[0];
    localContextMenuModel1.eventCode = 0;
    localArrayList.add(localContextMenuModel1);
    ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
    localContextMenuModel2.name = arrayOfString[1];
    localContextMenuModel2.eventCode = 1;
    localArrayList.add(localContextMenuModel2);
    if (di.b().m())
    {
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = arrayOfString[2];
      localContextMenuModel3.eventCode = 2;
      localArrayList.add(localContextMenuModel3);
    }
    localContextMenuDialog.setDataAdapter(localArrayList);
    localContextMenuDialog.setOnItemClickListener(new gv(localContextMenuDialog, 0, paramContext));
    localContextMenuDialog.setTitle(2131429802);
    localContextMenuDialog.show();
  }

  public static void a(Context paramContext, int paramInt)
  {
    String str1 = "";
    String str2 = "";
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      a(paramContext, str2, str1);
      return;
      str2 = "10010";
      str1 = "CXLL";
      continue;
      str2 = "10086";
      str1 = "cxgprstc";
      continue;
      str2 = "10001";
      str1 = "108";
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + paramString));
    localIntent.putExtra("address", paramString);
    localIntent.setType("vnd.android-dir/mms-sms");
    paramContext.startActivity(localIntent);
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + paramString1));
    localIntent.putExtra("address", paramString1);
    localIntent.putExtra("sms_body", paramString2);
    localIntent.setType("vnd.android-dir/mms-sms");
    paramContext.startActivity(localIntent);
  }

  public static void a(String paramString1, String paramString2)
  {
    Object localObject;
    if (SDKUtil.getSDKVersion() > 3)
      localObject = new gu.c();
    try
    {
      while (true)
      {
        ((gu.a)localObject).a(paramString1, paramString2);
        return;
        localObject = new gu.b();
      }
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          a(QQPimApplication.a(), paramString1, paramString2);
        }
        catch (Exception localException2)
        {
          ha.b(QQPimApplication.a(), QQPimApplication.a().getString(2131428356));
        }
    }
  }

  public static boolean a(String paramString1, String paramString2, PendingIntent paramPendingIntent)
  {
    Object localObject;
    if (SDKUtil.getSDKVersion() > 3)
      localObject = new gu.c();
    try
    {
      while (true)
      {
        ((gu.a)localObject).a(paramString1, paramString2, paramPendingIntent);
        bool = true;
        return bool;
        localObject = new gu.b();
      }
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static MmsContentConfigHeader.ExtraAddress[] a(String paramString)
  {
    MmsContentConfigHeader.ExtraAddress[] arrayOfExtraAddress = null;
    if (paramString != null)
    {
      int i = paramString.length();
      arrayOfExtraAddress = null;
      if (i != 0)
        break label19;
    }
    while (true)
    {
      return arrayOfExtraAddress;
      label19: String[] arrayOfString1 = paramString.split("\\|");
      arrayOfExtraAddress = null;
      if (arrayOfString1 != null)
      {
        int j = arrayOfString1.length;
        arrayOfExtraAddress = null;
        if (j != 0)
        {
          int k = arrayOfString1.length;
          ArrayList localArrayList = new ArrayList(k);
          for (int m = 0; m < k; m++)
          {
            String[] arrayOfString2 = arrayOfString1[m].split("\\.");
            if ((arrayOfString2 != null) && (2 == arrayOfString2.length))
              localArrayList.add(new MmsContentConfigHeader.ExtraAddress(arrayOfString2[1], Integer.valueOf(arrayOfString2[0]).intValue()));
          }
          int n = localArrayList.size();
          arrayOfExtraAddress = null;
          if (n != 0)
            arrayOfExtraAddress = (MmsContentConfigHeader.ExtraAddress[])localArrayList.toArray(new MmsContentConfigHeader.ExtraAddress[localArrayList.size()]);
        }
      }
    }
  }

  public static List<ContentValues> b(mk parammk, int paramInt)
    throws NullPointerException
  {
    if ((parammk == null) || (parammk.mmsData == null) || (parammk.mmsData.mmsParts == null) || (paramInt < 0));
    ArrayList localArrayList;
    for (Object localObject = null; ; localObject = localArrayList)
    {
      return localObject;
      localArrayList = new ArrayList();
      Iterator localIterator = parammk.mmsData.mmsParts.iterator();
      if (localIterator.hasNext())
      {
        MmsPart localMmsPart = (MmsPart)localIterator.next();
        if ((localMmsPart.data == null) && (localMmsPart.dataPath == null))
          throw new NullPointerException("Both part data and dataPath are null, invalid!");
        if (localMmsPart.contentType == null)
          throw new NullPointerException("part's contentType(MIME) null");
        ContentValues localContentValues = new ContentValues(12);
        localContentValues.put("data", localMmsPart.data);
        localContentValues.put("dp", localMmsPart.dataPath);
        String str = new String(localMmsPart.contentType);
        localContentValues.put("ct", localMmsPart.contentType);
        if ("application/smil".equals(str))
          localContentValues.put("seq", Integer.valueOf(-1));
        while (true)
        {
          localContentValues.put("sl_id", Integer.valueOf(paramInt));
          localContentValues.put("name", localMmsPart.name);
          localContentValues.put("chset", Integer.valueOf(localMmsPart.charset));
          localContentValues.put("cd", localMmsPart.contentDispositon);
          localContentValues.put("fn", localMmsPart.fileName);
          localContentValues.put("cid", localMmsPart.contentId);
          localContentValues.put("cl", localMmsPart.contentLocation);
          localArrayList.add(localContentValues);
          break;
          localContentValues.put("seq", Integer.valueOf(0));
        }
      }
    }
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString1));
    if (paramString2 == null)
      paramString2 = "";
    localIntent.putExtra("sms_body", paramString2);
    localIntent.setType("vnd.android-dir/mms-sms");
    paramContext.startActivity(localIntent);
  }

  static abstract interface a
  {
    public abstract void a(String paramString1, String paramString2);

    public abstract void a(String paramString1, String paramString2, PendingIntent paramPendingIntent);
  }

  static final class b
    implements gu.a
  {
    private android.telephony.gsm.SmsManager a = android.telephony.gsm.SmsManager.getDefault();

    public final void a(String paramString1, String paramString2)
    {
      if (paramString2.length() > 70)
      {
        Iterator localIterator = this.a.divideMessage(paramString2).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          this.a.sendTextMessage(paramString1, null, str, null, null);
        }
      }
      this.a.sendTextMessage(paramString1, null, paramString2, null, null);
    }

    public final void a(String paramString1, String paramString2, PendingIntent paramPendingIntent)
    {
      this.a.sendTextMessage(paramString1, null, paramString2, paramPendingIntent, null);
    }
  }

  static final class c
    implements gu.a
  {
    private android.telephony.SmsManager a = android.telephony.SmsManager.getDefault();

    public final void a(String paramString1, String paramString2)
    {
      if (paramString2.length() > 70)
      {
        Iterator localIterator = this.a.divideMessage(paramString2).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          this.a.sendTextMessage(paramString1, null, str, null, null);
        }
      }
      this.a.sendTextMessage(paramString1, null, paramString2, null, null);
    }

    public final void a(String paramString1, String paramString2, PendingIntent paramPendingIntent)
    {
      this.a.sendTextMessage(paramString1, null, paramString2, paramPendingIntent, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gu
 * JD-Core Version:    0.6.2
 */