import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.RootGuideActivity;

final class bdy
  implements View.OnClickListener
{
  bdy(bdr parambdr)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bdr.f(this.a), RootGuideActivity.class);
    localIntent.setFlags(268435456);
    bdr.g(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdy
 * JD-Core Version:    0.6.2
 */