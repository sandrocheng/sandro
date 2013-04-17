import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity2;

public final class ahd
  implements View.OnClickListener
{
  public ahd(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    nd.a().a(26445);
    Intent localIntent = new Intent();
    localIntent.putExtra("NO_QQ_ACCOUNT", true);
    localIntent.setClass(PickproofAccountLoginActivity.a.f(this.a), PickproofGuidelActivity2.class);
    PickproofAccountLoginActivity.a.g(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahd
 * JD-Core Version:    0.6.2
 */