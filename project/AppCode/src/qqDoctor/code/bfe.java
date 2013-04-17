import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bfe
  implements View.OnClickListener
{
  bfe(bfa parambfa, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    yb.a(bfa.a(this.b)).a(false);
    bfa.b(this.b).B(false);
    Intent localIntent = new Intent(bfa.a(this.b), MainActivity.class);
    localIntent.setFlags(67108864);
    bfa.a(this.b).startActivity(localIntent);
    this.b.getActivity().finish();
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfe
 * JD-Core Version:    0.6.2
 */