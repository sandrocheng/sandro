package com.tencent.feedback.c;

import android.content.Context;
import com.tencent.feedback.UserActionRecord;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.f.d;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.AbstractUploadDatas.UploadDataType;
import com.tencent.feedback.upload.UploadHandler;
import common.RequestPackage;
import java.util.ArrayList;
import java.util.List;

public final class f
  implements e
{
  private boolean a = true;
  private int b;
  private long c;
  private List d;
  private Context e;
  private Runnable f = new g(this);

  public f(Context paramContext)
  {
    this.e = paramContext;
    this.b = com.tencent.feedback.common.f.c().a;
    this.c = com.tencent.feedback.common.f.c().b;
    this.d = new ArrayList(this.b << 1);
    c.a().a(13, this.f, this.c, this.c);
  }

  private boolean d()
  {
    try
    {
      boolean bool = this.a;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List a()
  {
    try
    {
      ELog.debug("RealTimeProcess.getCommonList() start");
      Object localObject2;
      if ((this.d != null) && (this.d.size() > 0))
      {
        boolean bool = d();
        if (bool);
      }
      else
      {
        localObject2 = null;
      }
      while (true)
      {
        return localObject2;
        localObject2 = new ArrayList();
        ((List)localObject2).addAll(this.d);
        this.d.clear();
        ELog.debug("return list's item num:" + ((List)localObject2).size());
        ELog.debug("RealTimeProcess.getCommonList() end");
      }
    }
    finally
    {
    }
  }

  public final void a(i parami)
  {
    while (true)
    {
      try
      {
        ELog.debug("RealTimeProcess.processUA() start");
        if ((this.e == null) || (parami == null) || (!this.a))
        {
          ELog.error("context == null || bean == null return");
          return;
        }
        if (!d())
        {
          ELog.error("enable false! return");
          continue;
        }
      }
      finally
      {
      }
      int i = this.d.size();
      if (i >= this.b)
      {
        ELog.error("buffer over max num drop it!");
      }
      else
      {
        ELog.debug("add to buffer");
        this.d.add(parami);
        if (i + 1 >= this.b)
        {
          ELog.debug("buffer reach max num should do Upload!");
          c.a().a(this.f);
          c.a().a(13, this.f, this.c, this.c);
        }
        ELog.debug("RealTimeProcess.processUA() end");
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.a = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final void b()
  {
    if (!d())
    {
      ELog.warn("real time process has disable");
      return;
    }
    ELog.debug("real time process doSyncUpload start");
    List localList = a();
    if ((localList != null) && (localList.size() > 0))
    {
      ELog.info("real process will sync upload size:" + localList.size());
      UploadHandler localUploadHandler = UserActionRecord.getMyUpload();
      if (localUploadHandler == null)
        break label109;
      ELog.debug("start doUpload");
      localUploadHandler.doUpload(new a(this.e, localList), null, null);
      ELog.debug("end doUpload");
    }
    while (true)
    {
      ELog.debug("real time process  doSyncUpload end");
      break;
      label109: ELog.debug("can't start upload , insert this records");
      a.a(this.e, localList);
    }
  }

  public final void c()
  {
    try
    {
      ELog.info("realtime process close start");
      this.a = false;
      c.a().a(13, true);
      if ((this.d != null) && (this.d.size() > 0))
        a.a(this.e, this.d);
      ELog.info("realtime process close end");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  static final class a extends AbstractUploadDatas
  {
    private List a = null;
    private Context b;

    public a(Context paramContext, List paramList)
    {
      super();
      this.a = paramList;
      this.b = paramContext;
    }

    public final void done(boolean paramBoolean)
    {
      try
      {
        ELog.debug("TimeUpUploadDatas.done() start");
        if ((this.a != null) && (!paramBoolean))
        {
          ELog.debug("isHandled false , record to db");
          a.a(this.b, this.a);
        }
        if (this.a != null)
          this.a.clear();
        ELog.debug("TimeUpUploadDatas.done() end");
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final RequestPackage getUploadRequestPackage(boolean paramBoolean)
    {
      try
      {
        ELog.debug("TimeUpUploadDatas.getUploadDatas() start");
        Object localObject2;
        if (this.a != null)
        {
          int i = this.a.size();
          if (i > 0);
        }
        else
        {
          localObject2 = null;
        }
        while (true)
        {
          return localObject2;
          try
          {
            RequestPackage localRequestPackage = h.a(this.b, this.a);
            localObject2 = localRequestPackage;
            if (localObject2 != null)
              continue;
            localObject2 = null;
          }
          catch (Throwable localThrowable)
          {
            while (true)
            {
              localThrowable.printStackTrace();
              ELog.error("TimeUpUploadDatas.getUploadDatas error");
            }
          }
        }
      }
      finally
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c.f
 * JD-Core Version:    0.6.2
 */