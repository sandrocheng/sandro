import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

final class vb
  implements View.OnClickListener
{
  vb(uo paramuo, Dialog paramDialog, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    nd.a().a(26212);
    kw localkw = new kw();
    localkw.setPackageName("com.tencent.qqphonebook");
    localkw.setAppName(uo.n(this.c).getString(2131427537));
    localkw.d(this.b);
    kv localkv = new kv(localkw);
    of.a(localkv);
    uo.a(this.c, new BaseServiceConnection(WeekRecDialog.class));
    TMSService.startService(new of());
    ((DownloadServiceBinder)TMSService.bindService(of.class, uo.o(this.c))).startTask(localkv);
    uo.n(this.c).startActivity(new Intent(uo.n(this.c), InterceptCenterActivity.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vb
 * JD-Core Version:    0.6.2
 */