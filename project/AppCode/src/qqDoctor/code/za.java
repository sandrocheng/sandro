import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;

public final class za extends Thread
{
  public za(Context paramContext)
  {
  }

  public final void run()
  {
    new fv(this.a).a();
    abk.a(this.a).b();
    if (ho.a().W())
    {
      if ((SDKUtil.getSDKVersion() >= 14) || (ScriptHelper.canRunAtRoot() != 0))
      {
        ho.a().F(false);
        TMSService.stopService(abp.class);
      }
    }
    else
    {
      boolean bool1 = ho.a().by();
      boolean bool2 = ho.a().di();
      if ((!bool1) && (!bool2))
        break label157;
      xi.a(this.a, bool1, bool2, new zb(this));
    }
    while (true)
    {
      return;
      if (ho.a().bK())
      {
        Intent localIntent = new Intent(this.a, abp.class);
        localIntent.setAction("open_screenshot_service_action");
        TMSService.startService(new abp(), localIntent);
        break;
      }
      TMSService.stopService(abp.class);
      break;
      label157: if (ih.a(QQPimApplication.a()).e())
        a.a(this.a, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     za
 * JD-Core Version:    0.6.2
 */