import android.os.Handler;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.Iterator;
import java.util.List;

final class blm
  implements IPackageChangedListener
{
  blm(blh paramblh)
  {
  }

  public final void onPackageAdded(String paramString)
  {
    List localList = this.a.a().c();
    Iterator localIterator = blh.n(this.a).iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if ((localkw.getPackageName() != null) && (localkw.getPackageName().hashCode() == paramString.hashCode()))
      {
        this.a.a().c(localkw);
        if (localkw.n() == 2)
          localList.remove(new Integer(this.a.a().b(localkw)));
      }
    }
    blh.o(this.a).sendEmptyMessage(3);
    this.a.a().a(localList);
    blh.p(this.a).sendEmptyMessage(1);
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blm
 * JD-Core Version:    0.6.2
 */