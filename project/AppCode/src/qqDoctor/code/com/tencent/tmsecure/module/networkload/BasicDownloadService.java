package com.tencent.tmsecure.module.networkload;

import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;

public class BasicDownloadService<T extends NetworkLoadTask> extends BaseService
{
  public IBinder onBind()
  {
    return new DownloadServiceBinder();
  }

  public void onDestory()
  {
    ((DownloadServiceBinder)getBinder()).clearData();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.networkload.BasicDownloadService
 * JD-Core Version:    0.6.2
 */