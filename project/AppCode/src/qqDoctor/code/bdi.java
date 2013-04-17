import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;

final class bdi
  implements View.OnClickListener
{
  bdi(bcz parambcz)
  {
  }

  public final void onClick(View paramView)
  {
    if (!((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isFinishInit())
    {
      bcz.l(this.a).show();
      xi.a(bcz.m(this.a), new bdj(this));
    }
    while (true)
    {
      return;
      bcz.f(this.a).sendEmptyMessage(2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdi
 * JD-Core Version:    0.6.2
 */