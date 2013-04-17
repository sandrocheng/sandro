import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class uq
  implements View.OnClickListener
{
  uq(uo paramuo, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    nd.a().a(26213);
    uo.n(this.b).startActivity(new Intent(uo.n(this.b), InterceptCenterActivity.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     uq
 * JD-Core Version:    0.6.2
 */