import QQPIM.SoftAction;
import QQPIM.SoftActionConfig;
import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class aan
{
  static aan b;
  Context a;
  List<SoftAction> c;
  jf d;
  SoftwareManager e;
  private List<SoftActionConfig> f;

  aan(Context paramContext)
  {
    this.a = paramContext;
    this.c = ((List)fj.a(this.a, "label_sa", "sa.dat"));
    if (this.c == null)
      this.c = new ArrayList();
    this.f = ((List)fj.a(this.a, "label_sa_cfg", "sa_cfg.dat"));
    if (this.f == null)
      this.f = new ArrayList();
    this.d = new jf();
    this.e = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aan
 * JD-Core Version:    0.6.2
 */