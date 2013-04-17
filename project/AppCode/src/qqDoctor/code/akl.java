import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import java.util.List;

final class akl
  implements View.OnClickListener
{
  akl(akk paramakk)
  {
  }

  public final void onClick(View paramView)
  {
    kx localkx = (kx)akk.a(this.a).get(((Integer)paramView.getTag()).intValue());
    if (localkx.g)
    {
      localkx.a(false);
      new jf().a(localkx.a, false);
    }
    while (true)
    {
      new jf().a(localkx.a, localkx.e);
      ManagerCreator.getManager(PermissionManager.class);
      if (xi.a())
        xi.a(xf.a(localkx.a, localkx.e, localkx.b));
      return;
      localkx.a(true);
      new jf().a(localkx.a, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akl
 * JD-Core Version:    0.6.2
 */