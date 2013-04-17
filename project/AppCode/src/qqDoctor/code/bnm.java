import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

final class bnm
  implements View.OnClickListener
{
  bnm(bnd parambnd, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bnd.w(this.b).deleteTask(bnd.n(this.b), true);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnm
 * JD-Core Version:    0.6.2
 */