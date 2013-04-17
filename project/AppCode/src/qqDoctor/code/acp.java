import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.ArrayList;
import java.util.List;

public final class acp
  implements IPackageChangedListener
{
  List<QScanResultEntity> a;
  private final ho b = ho.a();
  private kl c = new kl();
  private final ov d = ov.a();
  private final QScannerManager e = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);

  private void a(String paramString)
  {
    if (!this.b.f());
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      boolean bool = this.b.aC();
      this.e.scanPackages(localArrayList, new acq(this, paramString), bool);
    }
  }

  public final void onPackageAdded(String paramString)
  {
    a(paramString);
  }

  public final void onPackageReinstall(String paramString)
  {
    a(paramString);
  }

  public final void onPackageRemoved(String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acp
 * JD-Core Version:    0.6.2
 */