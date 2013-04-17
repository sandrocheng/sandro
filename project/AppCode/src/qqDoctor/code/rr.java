import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.BaseWindow;

final class rr
  implements View.OnClickListener
{
  rr(rn.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    new Thread(new rs(this)).start();
    this.a.a.unShow();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rr
 * JD-Core Version:    0.6.2
 */