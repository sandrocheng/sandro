import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.RootGuideActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class zc
  implements View.OnClickListener
{
  public zc(Activity paramActivity, Dialog paramDialog, ay paramay)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, RootGuideActivity.class);
    localIntent.setFlags(268435456);
    this.a.startActivity(localIntent);
    this.b.dismiss();
    if (this.c != null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zc
 * JD-Core Version:    0.6.2
 */