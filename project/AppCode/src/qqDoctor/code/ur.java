import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;

final class ur
  implements DialogInterface.OnCancelListener
{
  ur(uo paramuo)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    uo.p(this.a).J("");
    uo.p(this.a).H("");
    uo.p(this.a).I("");
    nd.a().a(26213);
    uo.n(this.a).startActivity(new Intent(uo.n(this.a), InterceptCenterActivity.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ur
 * JD-Core Version:    0.6.2
 */