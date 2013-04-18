package cn.com.wali.zft;

public enum ZftPluginCallBack$SyncStatus
{
  static
  {
    sms_fail = new SyncStatus("sms_fail", 1);
    SyncStatus[] arrayOfSyncStatus = new SyncStatus[2];
    arrayOfSyncStatus[0] = sms_success;
    arrayOfSyncStatus[1] = sms_fail;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.ZftPluginCallBack.SyncStatus
 * JD-Core Version:    0.6.2
 */