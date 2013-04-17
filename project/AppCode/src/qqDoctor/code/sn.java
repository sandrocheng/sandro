import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.uilib.view.LocationShowerSuspessionView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.LocationManager;

public final class sn extends Thread
{
  public sn(String paramString, boolean paramBoolean1, Context paramContext, boolean paramBoolean2)
  {
  }

  public final void run()
  {
    String str = ((LocationManager)ManagerCreator.getManager(LocationManager.class)).getLocation(this.a);
    if (this.b);
    for (int i = LocationShowerSuspessionView.in; ; i = LocationShowerSuspessionView.out)
    {
      LocationShowerSuspessionView.isinorout = i;
      Intent localIntent = new Intent();
      localIntent.setClass(this.c, SecureService.class);
      if ((str != null) && (str.length() > 0))
      {
        localIntent.putExtra(vc.c, str);
        localIntent.putExtra(vc.d, this.d);
        localIntent.setAction(vc.a);
        this.c.startService(localIntent);
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sn
 * JD-Core Version:    0.6.2
 */