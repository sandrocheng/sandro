import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;

final class bdt
  implements View.OnClickListener
{
  bdt(bdr parambdr, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (!((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isFinishInit())
    {
      bdr.c(this.a).show();
      xi.a(bdr.d(this.a), new bdu(this));
    }
    while (true)
    {
      this.b.dismiss();
      return;
      bdr.b(this.a).sendEmptyMessage(2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdt
 * JD-Core Version:    0.6.2
 */