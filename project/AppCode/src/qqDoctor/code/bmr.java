import android.os.Handler;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.Iterator;
import java.util.List;

final class bmr
  implements IPackageChangedListener
{
  bmr(bmp parambmp)
  {
  }

  public final void onPackageAdded(String paramString)
  {
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    Object localObject1 = null;
    Iterator localIterator = bmp.U(this.a).iterator();
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (kw)localIterator.next();
      if (((kw)localObject2).getPackageName().hashCode() != paramString.hashCode())
        break label134;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 != null)
      {
        bmp.S(this.a).a(Integer.valueOf(localObject1.getPackageName().hashCode()));
        int i = bmp.U(this.a).indexOf(localObject1);
        if (i != -1)
          ((kw)bmp.U(this.a).get(i)).z();
        bmp.V(this.a).sendEmptyMessage(4);
      }
      return;
      label134: localObject2 = localObject1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmr
 * JD-Core Version:    0.6.2
 */