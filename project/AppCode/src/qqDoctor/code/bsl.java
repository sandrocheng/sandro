import com.tencent.tmsecure.utils.WifiUtil;

public final class bsl
  implements Runnable
{
  public bsl(String paramString)
  {
  }

  public final void run()
  {
    WifiUtil.needWifiApprove(new bsm(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsl
 * JD-Core Version:    0.6.2
 */