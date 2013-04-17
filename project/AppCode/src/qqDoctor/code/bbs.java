import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.RootGuideActivity;

final class bbs
  implements View.OnClickListener
{
  bbs(bbp parambbp)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bbp.e(this.a), RootGuideActivity.class);
    localIntent.setFlags(268435456);
    bbp.f(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbs
 * JD-Core Version:    0.6.2
 */