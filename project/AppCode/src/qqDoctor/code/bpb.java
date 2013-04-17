import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncRemoteDataManageActivity;

final class bpb
  implements View.OnClickListener
{
  bpb(bot parambot)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bot.v(this.a), SyncRemoteDataManageActivity.class);
    bot.w(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpb
 * JD-Core Version:    0.6.2
 */