import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.RootGuideActivity;

final class bch
  implements View.OnClickListener
{
  bch(bce parambce)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bce.e(this.a), RootGuideActivity.class);
    localIntent.setFlags(268435456);
    bce.f(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bch
 * JD-Core Version:    0.6.2
 */