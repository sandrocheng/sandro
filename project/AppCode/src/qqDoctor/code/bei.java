import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import java.util.List;

final class bei
  implements View.OnClickListener
{
  bei(bed parambed, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    kx localkx = (kx)bed.e(this.b).get(this.a);
    if (localkx.g)
    {
      localkx.a(false);
      bed.d(this.b).a(localkx.a, false);
    }
    while (true)
    {
      bed.d(this.b).a(localkx.a, localkx.e);
      ManagerCreator.getManager(PermissionManager.class);
      if (xi.a())
        xi.a(xf.a(localkx.a, localkx.e, localkx.b));
      bed.c(this.b).sendEmptyMessage(1);
      return;
      localkx.a(true);
      bed.d(this.b).a(localkx.a, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bei
 * JD-Core Version:    0.6.2
 */