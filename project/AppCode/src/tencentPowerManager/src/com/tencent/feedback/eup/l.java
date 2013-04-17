package com.tencent.feedback.eup;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.tencent.feedback.common.a.b;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.d;
import com.tencent.feedback.common.f;
import com.tencent.feedback.upload.AbstractUploadDatas;
import common.RequestPackage;
import exceptionupload.Attachment;
import exceptionupload.ContactInfo;
import exceptionupload.ExceptionUpload;
import exceptionupload.ExceptionUploadPackage;
import exceptionupload.MobileDetail;
import exceptionupload.RunInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class l extends AbstractUploadDatas
{
  private int a = d.a().b;
  private int b = d.a().c;
  private Context c = null;
  private String d = "";
  private RequestPackage e = null;
  private Long[] f = null;
  private int g = 3;

  public l(Context paramContext)
  {
    this.c = paramContext;
  }

  private static Attachment a(byte[] paramArrayOfByte, String paramString)
  {
    Attachment localAttachment;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0) || (paramString == null) || (paramString.trim().length() <= 0))
      localAttachment = null;
    while (true)
    {
      return localAttachment;
      try
      {
        localAttachment = new Attachment();
        localAttachment.a((byte)1);
        localAttachment.a(paramString);
        localAttachment.a(paramArrayOfByte);
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localAttachment = null;
      }
    }
  }

  private static ExceptionUpload a(Context paramContext, com.tencent.feedback.common.a.e parame, String paramString)
  {
    c.c("ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() start");
    Object localObject;
    if (parame == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        ExceptionUpload localExceptionUpload = new ExceptionUpload();
        localExceptionUpload.a(parame.d());
        localExceptionUpload.a(parame.a());
        localExceptionUpload.b(parame.c());
        localExceptionUpload.d(parame.b());
        String str1 = parame.j();
        localExceptionUpload.c(f.a(str1));
        localExceptionUpload.e(str1);
        localExceptionUpload.f(parame.k());
        Attachment localAttachment = a(parame.n(), "log.txt");
        if (localAttachment != null)
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(localAttachment);
          localExceptionUpload.a(localArrayList);
        }
        RunInfo localRunInfo = new RunInfo();
        try
        {
          float f4 = Float.parseFloat(parame.e());
          f1 = f4;
          localRunInfo.a(f1);
        }
        catch (Exception localException1)
        {
          try
          {
            float f3 = Float.parseFloat(parame.f());
            f2 = f3;
            localRunInfo.b(f2);
            localRunInfo.a(parame.g());
            localRunInfo.b(parame.h());
            localRunInfo.c(parame.i());
            localExceptionUpload.a(localRunInfo);
            MobileDetail localMobileDetail = new MobileDetail();
            String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
            c.a("IMEI:" + str2);
            localMobileDetail.a("" + str2);
            localExceptionUpload.a(localMobileDetail);
            ContactInfo localContactInfo = new ContactInfo();
            localContactInfo.a(paramString);
            localExceptionUpload.a(localContactInfo);
            c.c("eupdatas:\n" + localExceptionUpload.toString());
            c.c("ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() end");
            localObject = localExceptionUpload;
            continue;
            localException1 = localException1;
            localException1.printStackTrace();
            float f1 = 0.0F;
          }
          catch (Exception localException2)
          {
            while (true)
            {
              localException2.printStackTrace();
              float f2 = 0.0F;
            }
          }
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localObject = null;
      }
    }
  }

  private static ExceptionUploadPackage a(Context paramContext, List paramList, String paramString)
  {
    c.c("ExceptionUploadDatas.encode2RequestPackage() start");
    ExceptionUploadPackage localExceptionUploadPackage;
    if ((paramContext == null) || (paramList == null) || (paramList.size() <= 0))
      localExceptionUploadPackage = null;
    while (true)
    {
      return localExceptionUploadPackage;
      try
      {
        localArrayList = new ArrayList();
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          ExceptionUpload localExceptionUpload = a(paramContext, (com.tencent.feedback.common.a.e)localIterator.next(), paramString);
          if (localExceptionUpload != null)
            localArrayList.add(localExceptionUpload);
        }
      }
      catch (Throwable localThrowable)
      {
        ArrayList localArrayList;
        localThrowable.printStackTrace();
        c.c("ExceptionUploadDatas.encode2RequestPackage() end");
        localExceptionUploadPackage = null;
        continue;
        localExceptionUploadPackage = new ExceptionUploadPackage();
        localExceptionUploadPackage.a(localArrayList);
        c.c("ExceptionUploadDatas.encode2RequestPackage() end");
      }
      finally
      {
        c.c("ExceptionUploadDatas.encode2RequestPackage() end");
      }
    }
  }

  private static List a(Context paramContext, int paramInt)
  {
    c.c("ExceptionUploadDatas.getEupDataBean() start");
    Object localObject;
    if ((paramContext == null) || (paramInt <= 0))
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        localObject = com.tencent.feedback.common.e.a(paramContext, paramInt, "desc", 1);
        if (localObject == null)
          localObject = new ArrayList();
        if (((List)localObject).size() < paramInt)
        {
          List localList = com.tencent.feedback.common.e.a(paramContext, paramInt - ((List)localObject).size(), "desc", 2);
          if ((localList != null) && (localList.size() > 0))
            ((List)localObject).addAll(localList);
        }
        c.c("ExceptionUploadDatas.getEupDataBean() end");
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localObject = null;
      }
    }
  }

  private void a(RequestPackage paramRequestPackage)
  {
    try
    {
      this.e = paramRequestPackage;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(Long[] paramArrayOfLong)
  {
    try
    {
      this.f = paramArrayOfLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private RequestPackage b()
  {
    try
    {
      RequestPackage localRequestPackage = this.e;
      return localRequestPackage;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private Long[] c()
  {
    try
    {
      Long[] arrayOfLong = this.f;
      return arrayOfLong;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a()
  {
    try
    {
      int i = this.b;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(int paramInt)
  {
    try
    {
      if (paramInt > this.a)
        paramInt = this.a;
      this.b = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString)
  {
    try
    {
      this.d = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void done(boolean paramBoolean)
  {
    c.c("ExceptionUploadDatas.done() start");
    Long[] arrayOfLong;
    Context localContext;
    if (paramBoolean)
    {
      arrayOfLong = c();
      if ((arrayOfLong == null) || (arrayOfLong.length <= 0))
        return;
      localContext = this.c;
      c.a("EUPDAO.deleteEupList() start");
      if (localContext != null)
        break label92;
      c.b("deleteEupList() have null args!");
    }
    label92: for (int i = -1; ; i = b.a(localContext, arrayOfLong))
    {
      c.c("remove num :" + i);
      a(null);
      a(null);
      c.c("ExceptionUploadDatas.done() end");
      break;
    }
  }

  // ERROR //
  public final byte[] getUploadDatas(boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc_w 300
    //   3: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 37	com/tencent/feedback/eup/l:c	Landroid/content/Context;
    //   10: ifnonnull +9 -> 19
    //   13: aconst_null
    //   14: astore 5
    //   16: aload 5
    //   18: areturn
    //   19: aload_0
    //   20: invokespecial 302	com/tencent/feedback/eup/l:b	()Lcommon/RequestPackage;
    //   23: astore_2
    //   24: aload_2
    //   25: ifnull +12 -> 37
    //   28: aload_2
    //   29: invokevirtual 307	common/RequestPackage:toByteArray	()[B
    //   32: astore 5
    //   34: goto -18 -> 16
    //   37: ldc_w 309
    //   40: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 37	com/tencent/feedback/eup/l:c	Landroid/content/Context;
    //   47: aload_0
    //   48: getfield 35	com/tencent/feedback/eup/l:b	I
    //   51: invokestatic 311	com/tencent/feedback/eup/l:a	(Landroid/content/Context;I)Ljava/util/List;
    //   54: astore 6
    //   56: aload 6
    //   58: ifnull +17 -> 75
    //   61: aload 6
    //   63: invokeinterface 226 1 0
    //   68: istore 7
    //   70: iload 7
    //   72: ifgt +30 -> 102
    //   75: iload_1
    //   76: ifeq +14 -> 90
    //   79: ldc_w 313
    //   82: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   85: aload_0
    //   86: iconst_1
    //   87: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   90: ldc_w 317
    //   93: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   96: aconst_null
    //   97: astore 5
    //   99: goto -83 -> 16
    //   102: new 190	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 191	java/lang/StringBuilder:<init>	()V
    //   109: ldc_w 319
    //   112: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload 6
    //   117: invokeinterface 226 1 0
    //   122: invokevirtual 285	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   125: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 37	com/tencent/feedback/eup/l:c	Landroid/content/Context;
    //   135: aload 6
    //   137: aload_0
    //   138: getfield 41	com/tencent/feedback/eup/l:d	Ljava/lang/String;
    //   141: invokestatic 321	com/tencent/feedback/eup/l:a	(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lexceptionupload/ExceptionUploadPackage;
    //   144: astore 8
    //   146: aload 8
    //   148: ifnull +309 -> 457
    //   151: aload 6
    //   153: invokeinterface 226 1 0
    //   158: anewarray 323	java/lang/Long
    //   161: astore 9
    //   163: iconst_0
    //   164: istore 10
    //   166: iload 10
    //   168: aload 9
    //   170: arraylength
    //   171: if_icmpge +32 -> 203
    //   174: aload 9
    //   176: iload 10
    //   178: aload 6
    //   180: iload 10
    //   182: invokeinterface 327 2 0
    //   187: checkcast 87	com/tencent/feedback/common/a/e
    //   190: invokevirtual 330	com/tencent/feedback/common/a/e:m	()J
    //   193: invokestatic 334	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   196: aastore
    //   197: iinc 10 1
    //   200: goto -34 -> 166
    //   203: aload 6
    //   205: invokeinterface 337 1 0
    //   210: aload 8
    //   212: invokevirtual 338	exceptionupload/ExceptionUploadPackage:toByteArray	()[B
    //   215: astore 11
    //   217: aload 11
    //   219: ifnonnull +30 -> 249
    //   222: iload_1
    //   223: ifeq +14 -> 237
    //   226: ldc_w 313
    //   229: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   232: aload_0
    //   233: iconst_1
    //   234: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   237: ldc_w 317
    //   240: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   243: aconst_null
    //   244: astore 5
    //   246: goto -230 -> 16
    //   249: aload_0
    //   250: getfield 37	com/tencent/feedback/eup/l:c	Landroid/content/Context;
    //   253: invokestatic 343	com/tencent/feedback/common/b/b:a	(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;
    //   256: aload_0
    //   257: getfield 37	com/tencent/feedback/eup/l:c	Landroid/content/Context;
    //   260: invokevirtual 346	com/tencent/feedback/common/b/b:b	(Landroid/content/Context;)Lcom/tencent/feedback/common/b/a;
    //   263: astore 12
    //   265: aload 12
    //   267: monitorenter
    //   268: aload 12
    //   270: invokevirtual 350	com/tencent/feedback/common/b/a:c	()I
    //   273: i2b
    //   274: istore 14
    //   276: aload 12
    //   278: invokevirtual 352	com/tencent/feedback/common/b/a:b	()I
    //   281: i2b
    //   282: istore 15
    //   284: aload 12
    //   286: invokevirtual 353	com/tencent/feedback/common/b/a:a	()Ljava/lang/String;
    //   289: astore 16
    //   291: aload 12
    //   293: monitorexit
    //   294: aload 11
    //   296: iload 14
    //   298: iload 15
    //   300: aload 16
    //   302: invokestatic 356	com/tencent/feedback/common/f:a	([BIILjava/lang/String;)[B
    //   305: astore 17
    //   307: aload 17
    //   309: ifnonnull +78 -> 387
    //   312: ldc_w 358
    //   315: invokestatic 280	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   318: iload_1
    //   319: ifeq +14 -> 333
    //   322: ldc_w 313
    //   325: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   328: aload_0
    //   329: iconst_1
    //   330: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   333: ldc_w 317
    //   336: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   339: aconst_null
    //   340: astore 5
    //   342: goto -326 -> 16
    //   345: astore 13
    //   347: aload 12
    //   349: monitorexit
    //   350: aload 13
    //   352: athrow
    //   353: astore 4
    //   355: aload 4
    //   357: invokevirtual 75	java/lang/Throwable:printStackTrace	()V
    //   360: iload_1
    //   361: ifeq +14 -> 375
    //   364: ldc_w 313
    //   367: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   370: aload_0
    //   371: iconst_1
    //   372: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   375: ldc_w 317
    //   378: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   381: aconst_null
    //   382: astore 5
    //   384: goto -368 -> 16
    //   387: aload_0
    //   388: getfield 47	com/tencent/feedback/eup/l:g	I
    //   391: invokestatic 364	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   394: aload 17
    //   396: iload 14
    //   398: iload 15
    //   400: invokestatic 367	com/tencent/feedback/common/f:a	(ILcom/tencent/feedback/common/CommonInfo;[BBB)Lcommon/RequestPackage;
    //   403: astore 18
    //   405: aload_0
    //   406: aload 18
    //   408: invokespecial 287	com/tencent/feedback/eup/l:a	(Lcommon/RequestPackage;)V
    //   411: aload 18
    //   413: ifnull +44 -> 457
    //   416: aload_0
    //   417: aload 9
    //   419: invokespecial 289	com/tencent/feedback/eup/l:a	([Ljava/lang/Long;)V
    //   422: aload 18
    //   424: invokevirtual 307	common/RequestPackage:toByteArray	()[B
    //   427: astore 19
    //   429: aload 19
    //   431: astore 5
    //   433: iload_1
    //   434: ifeq +14 -> 448
    //   437: ldc_w 313
    //   440: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   443: aload_0
    //   444: iconst_1
    //   445: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   448: ldc_w 317
    //   451: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   454: goto -438 -> 16
    //   457: iload_1
    //   458: ifeq +14 -> 472
    //   461: ldc_w 313
    //   464: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   467: aload_0
    //   468: iconst_1
    //   469: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   472: ldc_w 317
    //   475: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   478: goto -97 -> 381
    //   481: astore_3
    //   482: iload_1
    //   483: ifeq +14 -> 497
    //   486: ldc_w 313
    //   489: invokestatic 201	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   492: aload_0
    //   493: iconst_1
    //   494: invokevirtual 315	com/tencent/feedback/eup/l:done	(Z)V
    //   497: ldc_w 317
    //   500: invokestatic 82	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   503: aload_3
    //   504: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   268	294	345	finally
    //   43	70	353	java/lang/Throwable
    //   102	217	353	java/lang/Throwable
    //   249	268	353	java/lang/Throwable
    //   294	318	353	java/lang/Throwable
    //   347	353	353	java/lang/Throwable
    //   387	429	353	java/lang/Throwable
    //   43	70	481	finally
    //   102	217	481	finally
    //   249	268	481	finally
    //   294	318	481	finally
    //   347	353	481	finally
    //   355	360	481	finally
    //   387	429	481	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.l
 * JD-Core Version:    0.6.2
 */