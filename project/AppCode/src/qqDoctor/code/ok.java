import android.content.Context;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.List;

public final class ok
{
  public static ok a;
  public Context b;
  final QScannerManager c = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);
  public acj d;
  public acj.a e;
  public kf f = null;
  public boolean g = false;
  Handler h = new om(this);
  public QScanResultEntity i = null;
  List<QScanResultEntity> j = null;
  public abv.a k = new abv.a(this);
  private ho l;

  public ok(Context paramContext)
  {
    this.b = paramContext;
    this.l = ho.a();
    if (this.l.ds())
      a();
  }

  public final void a()
  {
    if (this.g);
    while (true)
    {
      return;
      if (this.f == null)
        this.f = new kf();
      abv.a().a(this.k);
      this.g = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ok
 * JD-Core Version:    0.6.2
 */