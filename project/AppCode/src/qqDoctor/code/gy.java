import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.BaseView.IBatchNext;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

final class gy
  implements BaseView.IBatchNext
{
  gy(List paramList, SoftwareManager paramSoftwareManager, BaseView paramBaseView)
  {
  }

  public final void netxToDo()
  {
    if (this.a.size() > 0);
    while (true)
    {
      try
      {
        this.b.uninstallApp((String)this.a.remove(0), this.c.getActivity(), 0);
        return;
      }
      catch (Exception localException)
      {
        ha.b(TMSApplication.getApplicaionContext(), 2131427510);
        continue;
      }
      if (gx.b != null)
      {
        gx.b localb = gx.b;
        Message localMessage = aoa.Z(localb.a.a).obtainMessage(110);
        aoa.Z(localb.a.a).sendMessage(localMessage);
      }
      this.c.setBatchNext(null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gy
 * JD-Core Version:    0.6.2
 */