import android.os.Handler;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.Collections;
import java.util.List;

final class boj
  implements IPackageChangedListener
{
  boj(bod parambod)
  {
  }

  public final void onPackageAdded(String paramString)
  {
    kw localkw = a.a(this.a.c.getAppInfo(paramString, 125), false);
    localkw.b(0);
    while (true)
    {
      synchronized (bod.l(this.a))
      {
        if (localkw.isSystemApp())
        {
          bod.e(this.a).add(localkw);
          List localList2 = bod.e(this.a);
          if ((localList2 == null) || (localList2.size() == 0))
          {
            bod.m(this.a).sendEmptyMessage(-2);
            return;
          }
          Collections.sort(localList2, new gx.a((byte)0));
        }
      }
      bod.d(this.a).add(localkw);
      List localList1 = bod.d(this.a);
      if ((localList1 != null) && (localList1.size() != 0))
        Collections.sort(localList1, new gx.a((byte)0));
    }
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    kw localkw = new kw();
    localkw.setPackageName(paramString);
    synchronized (bod.i(this.a))
    {
      if ((bod.d(this.a).remove(localkw)) || (bod.e(this.a).remove(localkw)) || (bod.j(this.a).remove(localkw)))
      {
        List localList = this.a.a().c();
        localList.remove(Integer.valueOf(this.a.a().b(localkw)));
        this.a.a().a(localList);
        bod.k(this.a).sendEmptyMessage(-2);
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     boj
 * JD-Core Version:    0.6.2
 */