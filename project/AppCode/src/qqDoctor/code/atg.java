import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class atg
  implements View.OnClickListener
{
  atg(atb paramatb, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    this.b.b.setMessage(atb.h(this.b).getString(2131429877));
    this.b.b.show();
    atb.i(this.b);
    atb.j(this.b).obtainMessage(1000, 2, 0).sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atg
 * JD-Core Version:    0.6.2
 */