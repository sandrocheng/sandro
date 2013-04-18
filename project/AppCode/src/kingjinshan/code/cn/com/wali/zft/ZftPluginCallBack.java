package cn.com.wali.zft;

public abstract interface ZftPluginCallBack
{
  public static final int SYNC_SMS_FAIL = 1;
  public static final int SYNC_SMS_SUCCESS;

  public abstract void Sync_End();

  public abstract void Sync_Status(ZftPluginCallBack.SyncStatus paramSyncStatus);

  public abstract void Sync_Timeout();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.ZftPluginCallBack
 * JD-Core Version:    0.6.2
 */