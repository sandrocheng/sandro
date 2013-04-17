import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

final class acw
  implements View.OnClickListener
{
  acw(acr paramacr, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.a(acr.c.b);
    acr.c(this.b).cancelScan();
    acr.l(this.b);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acw
 * JD-Core Version:    0.6.2
 */