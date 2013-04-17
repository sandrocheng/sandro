import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.RootGuideActivity;

final class bda
  implements View.OnClickListener
{
  bda(bcz parambcz)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bcz.a(this.a), RootGuideActivity.class);
    localIntent.setFlags(268435456);
    bcz.b(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bda
 * JD-Core Version:    0.6.2
 */