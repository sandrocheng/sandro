import com.tencent.tmsecure.utils.WifiUtil;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

final class bsm
  implements WifiUtil.IWifiApproveCheckCallBack
{
  bsm(bsl parambsl)
  {
  }

  public final void onWifiApproveCheckFinished(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str = WifiUtil.getSSID();
    if ((this.a.a != null) && (this.a.a.equals(str)))
    {
      if (!paramBoolean1)
        break label49;
      ov.a().a(WifiUtil.sRedirectLocation, this.a.a);
    }
    while (true)
    {
      return;
      label49: if (!paramBoolean2)
        ov.a().a(21);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsm
 * JD-Core Version:    0.6.2
 */