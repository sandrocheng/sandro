import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

final class acx
  implements View.OnClickListener
{
  acx(acr paramacr, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.a(acr.c.b);
    acr.b(this.b).p(true);
    acr.c(this.b).continueScan();
    acr.a(this.b, acr.b.h, 0);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acx
 * JD-Core Version:    0.6.2
 */