import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;

final class bez extends Thread
{
  bez(bew parambew)
  {
  }

  public final void run()
  {
    bew.b(this.a, true);
    ArrayList localArrayList = new ArrayList();
    String str = bew.f(this.a).getBindQQNum();
    if ((str != null) && (!"".equals(str)))
      ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getBindPhoneList(bew.f(this.a).getBindQQNum(), localArrayList);
    bew.g(this.a).a(localArrayList);
    bew.b(this.a, false);
    bew.h(this.a).sendEmptyMessage(-2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bez
 * JD-Core Version:    0.6.2
 */