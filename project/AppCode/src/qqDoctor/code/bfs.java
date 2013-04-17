import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity1;

final class bfs
  implements View.OnClickListener
{
  bfs(bfq parambfq)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(bfq.e(this.a), PickproofGuidelActivity1.class);
    bfq.f(this.a).startActivity(localIntent);
    nd.a().a(26102);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfs
 * JD-Core Version:    0.6.2
 */