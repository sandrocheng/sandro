import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bbl
  implements View.OnClickListener
{
  bbl(bbk parambbk, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    new Thread(new bbm(this)).start();
    bbk.c(this.a).clear();
    bbk.d(this.a).sendEmptyMessage(-2);
    bbk.e(this.a).a();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbl
 * JD-Core Version:    0.6.2
 */