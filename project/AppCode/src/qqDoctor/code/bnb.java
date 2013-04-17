import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.util.Iterator;
import java.util.List;

final class bnb
  implements View.OnClickListener
{
  bnb(bmp parambmp, List paramList1, List paramList2, List paramList3, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      nd.a().a(26233);
      bmp.O(this.e).startRunning();
      SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
      gx.a(this.e, localSoftwareManager, this.a);
      if (this.b.size() != 0)
        fy.a(this.e.getActivity(), this.b);
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        kw localkw = (kw)localIterator.next();
        File localFile = new File(localkw.getApkPath());
        if ((localFile.exists()) && (localFile.delete()))
          localkw.z();
      }
    }
    catch (Exception localException)
    {
      Toast.makeText(bmp.T(this.e), 2131427777, 0).show();
    }
    while (true)
    {
      bmp.O(this.e).stopRunning();
      this.d.dismiss();
      nd.a().a(26080);
      return;
      bmp.P(this.e).sendEmptyMessage(4);
      bmp.Q(this.e);
      bmp.R(this.e).sendEmptyMessage(6);
      bmp.S(this.e).c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnb
 * JD-Core Version:    0.6.2
 */