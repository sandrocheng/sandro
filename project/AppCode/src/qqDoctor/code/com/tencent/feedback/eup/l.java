package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.a.b;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.f.a;
import com.tencent.feedback.common.g;
import com.tencent.feedback.common.strategy.SecurityStrategyBean;
import com.tencent.feedback.common.strategy.a;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.AbstractUploadDatas.UploadDataType;
import common.RequestPackage;
import exceptionupload.Attachment;
import exceptionupload.ContactInfo;
import exceptionupload.ExceptionUpload;
import exceptionupload.ExceptionUploadPackage;
import exceptionupload.MobileDetail;
import exceptionupload.RunInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class l extends AbstractUploadDatas
{
  private int a = f.a().b;
  private int b = f.a().c;
  private Context c = null;
  private String d = "";
  private RequestPackage e = null;
  private Long[] f = null;
  private int g = 3;
  private boolean h = false;

  public l(Context paramContext)
  {
    super(AbstractUploadDatas.UploadDataType.RQD_EUPData);
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

  private static ExceptionUpload a(k paramk, String paramString)
  {
    ELog.debug("ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() start");
    Object localObject = null;
    if (paramk == null);
    while (true)
    {
      return localObject;
      try
      {
        ExceptionUpload localExceptionUpload = new ExceptionUpload();
        localExceptionUpload.a(paramk.d());
        localExceptionUpload.a("" + paramk.a());
        localExceptionUpload.b("" + paramk.c());
        localExceptionUpload.d("" + paramk.b());
        String str = paramk.j();
        localExceptionUpload.c(paramk.q());
        localExceptionUpload.e("" + str);
        localExceptionUpload.f("" + paramk.k());
        ArrayList localArrayList = new ArrayList();
        Attachment localAttachment1 = a(paramk.n(), "log.txt");
        localObject = null;
        if (localAttachment1 != null)
          localArrayList.add(localAttachment1);
        Attachment localAttachment2 = a(paramk.r().getBytes("utf8"), "alltimes.txt");
        localObject = null;
        if (localAttachment2 != null)
          localArrayList.add(localAttachment2);
        localExceptionUpload.a(localArrayList);
        RunInfo localRunInfo = new RunInfo();
        try
        {
          float f4 = Float.parseFloat(paramk.e());
          f1 = f4;
          localRunInfo.a(f1);
        }
        catch (Exception localException1)
        {
          try
          {
            float f1;
            float f3 = Float.parseFloat(paramk.f());
            f2 = f3;
            localRunInfo.b(f2);
            localRunInfo.a(paramk.g());
            localRunInfo.b(paramk.h());
            localRunInfo.c(paramk.i());
            localExceptionUpload.a(localRunInfo);
            MobileDetail localMobileDetail = new MobileDetail();
            localMobileDetail.a("" + CommonInfo.getCommonInfo().getImei());
            localExceptionUpload.a(localMobileDetail);
            localContactInfo = new ContactInfo();
            localObject = null;
            if (paramString != null)
            {
              boolean bool = paramString.equals("");
              localObject = null;
              if (!bool);
            }
            else
            {
              localContactInfo.a("" + paramk.o());
              localContactInfo.b("" + paramk.p());
              localExceptionUpload.a(localContactInfo);
              ELog.debug("eupdatas:\n" + localExceptionUpload.toString());
              ELog.debug("ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() end");
              localObject = localExceptionUpload;
              continue;
              localException1 = localException1;
              localException1.printStackTrace();
              f1 = 0.0F;
              localObject = null;
            }
          }
          catch (Exception localException2)
          {
            while (true)
            {
              ContactInfo localContactInfo;
              localException2.printStackTrace();
              float f2 = 0.0F;
              localObject = null;
              continue;
              localContactInfo.a("" + paramString);
            }
          }
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  }

  private static ExceptionUploadPackage a(Context paramContext, List paramList, String paramString)
  {
    ELog.debug("ExceptionUploadDatas.encode2RequestPackage() start");
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
          ExceptionUpload localExceptionUpload = a((k)localIterator.next(), paramString);
          if (localExceptionUpload != null)
            localArrayList.add(localExceptionUpload);
        }
      }
      catch (Throwable localThrowable)
      {
        ArrayList localArrayList;
        localThrowable.printStackTrace();
        ELog.debug("ExceptionUploadDatas.encode2RequestPackage() end");
        localExceptionUploadPackage = null;
        continue;
        localExceptionUploadPackage = new ExceptionUploadPackage();
        localExceptionUploadPackage.a(localArrayList);
        ELog.debug("ExceptionUploadDatas.encode2RequestPackage() end");
      }
      finally
      {
        ELog.debug("ExceptionUploadDatas.encode2RequestPackage() end");
      }
    }
  }

  private static List a(Context paramContext, int paramInt)
  {
    ELog.debug("ExceptionUploadDatas.getEupDataBean() start");
    Object localObject1;
    if ((paramContext == null) || (paramInt <= 0))
    {
      ELog.error("context == null || maxNum <= 0!pls check");
      localObject1 = null;
    }
    while (true)
    {
      return localObject1;
      try
      {
        Object localObject2 = f.a.a(paramContext, paramInt, "desc", 1, null, -1, -1, -1L, -1L);
        if (localObject2 == null)
          localObject2 = new ArrayList();
        if (((List)localObject2).size() < paramInt)
        {
          List localList = f.a.a(paramContext, paramInt - ((List)localObject2).size(), "desc", 2, null, -1, -1, -1L, -1L);
          if ((localList != null) && (localList.size() > 0))
            ((List)localObject2).addAll(localList);
        }
        ELog.debug("ExceptionUploadDatas.getEupDataBean() end");
        localObject1 = localObject2;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localObject1 = null;
      }
    }
  }

  private static List b(Context paramContext, int paramInt)
  {
    ELog.debug("ExceptionUploadDatas.getEupDataBeansInMerge() start");
    Object localObject;
    if ((paramContext == null) || (paramInt <= 0))
    {
      ELog.error("context == null || maxNum <= 0!pls check");
      localObject = null;
    }
    while (true)
    {
      return localObject;
      try
      {
        long l = g.b();
        if (l < 0L)
        {
          ELog.error("get today times fail!pls check!");
          l = new Date().getTime() - 43200000L;
        }
        ArrayList localArrayList = new ArrayList();
        List localList1 = f.a.a(paramContext, paramInt, "desc", -1, null, 0, 0, l, -1L);
        if ((localList1 != null) && (localList1.size() > 0))
        {
          ELog.debug("today catch 1 :" + localList1.size());
          localArrayList.addAll(localList1);
          localList1.clear();
        }
        if (localArrayList.size() < paramInt)
        {
          List localList2 = f.a.a(paramContext, paramInt, "desc", -1, null, 2, -1, -1L, l);
          if ((localList2 != null) && (localList2.size() > 0))
          {
            ELog.debug("yestoday catch 2 :" + localList2.size());
            localArrayList.addAll(localList2);
            localList2.clear();
          }
        }
        ELog.debug("ExceptionUploadDatas.getEupDataBeansInMerge() end");
        localObject = localArrayList;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localObject = null;
      }
    }
  }

  private boolean b()
  {
    try
    {
      boolean bool = this.h;
      return bool;
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

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.h = paramBoolean;
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
    while (true)
    {
      Context localContext;
      Long[] arrayOfLong;
      try
      {
        ELog.debug("ExceptionUploadDatas.done() start");
        if (paramBoolean)
        {
          if (b())
            break label133;
          if (this.f != null)
          {
            int j = this.f.length;
            if (j > 0);
          }
          else
          {
            return;
          }
          localContext = this.c;
          arrayOfLong = this.f;
          ELog.debug("EUPDAO.deleteEupList() start");
          if (localContext == null)
          {
            ELog.warn("deleteEupList() have null args!");
            k = -1;
            ELog.debug("remove num :" + k);
            this.e = null;
            this.f = null;
          }
        }
        else
        {
          ELog.debug("ExceptionUploadDatas.done() end");
          continue;
        }
      }
      finally
      {
      }
      int k = b.a(localContext, arrayOfLong);
      continue;
      label133: ELog.debug("in merge");
      long l = g.b();
      int i = f.a.a(this.c, -1L, l);
      ELog.debug("remove num :" + i);
    }
  }

  public final RequestPackage getUploadRequestPackage(boolean paramBoolean)
  {
    RequestPackage localRequestPackage;
    List localList;
    label139: ExceptionUploadPackage localExceptionUploadPackage;
    try
    {
      ELog.debug("ExceptionUploadDatas.getUploadDatas() start");
      if (this.c == null)
      {
        ELog.error("mContext == null");
        localRequestPackage = null;
      }
      while (true)
      {
        return localRequestPackage;
        if (this.e != null)
        {
          localRequestPackage = this.e;
        }
        else
        {
          ELog.debug("should query for upload datas!");
          try
          {
            boolean bool1 = b();
            if (!bool1);
            for (localList = a(this.c, this.b); ; localList = b(this.c, this.b))
            {
              if ((localList != null) && (localList.size() > 0))
                break label139;
              ELog.warn("list == null");
              if (paramBoolean)
              {
                ELog.info("finally call done(true)");
                done(true);
              }
              ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
              localRequestPackage = null;
              break;
            }
            ELog.debug("current size:" + localList.size());
            localExceptionUploadPackage = a(this.c, localList, this.d);
            if (localExceptionUploadPackage == null)
              break label623;
            if (!bool1)
              break label404;
            localIterator = localList.iterator();
            while (true)
            {
              if (!localIterator.hasNext())
                break label314;
              k localk = (k)localIterator.next();
              if (localk.s() != 0)
                break;
              localk.b(1);
            }
          }
          catch (Throwable localThrowable)
          {
            while (true)
            {
              Iterator localIterator;
              localThrowable.printStackTrace();
              if (paramBoolean)
              {
                ELog.info("finally call done(true)");
                done(true);
              }
              ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
              label269: localRequestPackage = null;
              break;
              localIterator.remove();
            }
          }
          finally
          {
            if (paramBoolean)
            {
              ELog.info("finally call done(true)");
              done(true);
            }
            ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
          }
        }
      }
    }
    finally
    {
    }
    label314: boolean bool2 = f.a.a(this.c, localList);
    ELog.debug("update today exception count : " + bool2);
    label404: Long[] arrayOfLong;
    for (Object localObject3 = null; ; localObject3 = arrayOfLong)
    {
      while (true)
      {
        localList.clear();
        byte[] arrayOfByte1 = localExceptionUploadPackage.toByteArray();
        if (arrayOfByte1 == null)
        {
          ELog.error("datas == null");
          if (paramBoolean)
          {
            ELog.info("finally call done(true)");
            done(true);
          }
          ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
          localRequestPackage = null;
          break;
          arrayOfLong = new Long[localList.size()];
          for (int i = 0; i < arrayOfLong.length; i++)
            arrayOfLong[i] = Long.valueOf(((k)localList.get(i)).m());
        }
        int j;
        int k;
        byte[] arrayOfByte2;
        synchronized (a.a(this.c).b(this.c))
        {
          j = (byte)???.getZipAlgorithm();
          k = (byte)???.getEncryAlgorithm();
          String str = ???.getEncryKey();
          arrayOfByte2 = g.a(arrayOfByte1, j, k, str);
          if (arrayOfByte2 == null)
          {
            ELog.error("encodeDatasByZipAndEncry failed!");
            if (paramBoolean)
            {
              ELog.info("finally call done(true)");
              done(true);
            }
            ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
            localRequestPackage = null;
          }
        }
      }
      if (this.e != null)
      {
        this.f = localObject3;
        localRequestPackage = this.e;
        if (paramBoolean)
        {
          ELog.info("finally call done(true)");
          done(true);
        }
        ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
        break;
      }
      label623: if (paramBoolean)
      {
        ELog.info("finally call done(true)");
        done(true);
      }
      ELog.debug("ExceptionUploadDatas.getUploadDatas() end");
      break label269;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.l
 * JD-Core Version:    0.6.2
 */