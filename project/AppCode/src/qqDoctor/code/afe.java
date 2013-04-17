import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncCheckLogActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.SyncSettingsActivity.a;

public final class afe
  implements View.OnClickListener
{
  public afe(SyncSettingsActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231432:
    case 2131231431:
    case 2131231433:
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent();
      int i = SyncSettingsActivity.a.a(this.a).bf();
      if (1 == i)
      {
        localIntent2.setClass(SyncSettingsActivity.a.b(this.a), SyncQQAccountLoginActivity.class);
        localIntent2.putExtra("FIRST_TIME", false);
      }
      while (true)
      {
        SyncSettingsActivity.a.e(this.a).startActivity(localIntent2);
        break;
        if (2 == i)
        {
          localIntent2.setClass(SyncSettingsActivity.a.c(this.a), SyncMobileAccountLoginActivity.class);
        }
        else
        {
          localIntent2.setClass(SyncSettingsActivity.a.d(this.a), SyncQQAccountLoginActivity.class);
          localIntent2.putExtra("FIRST_TIME", true);
        }
      }
      SyncSettingsActivity.a.f(this.a);
      continue;
      Intent localIntent1 = new Intent(SyncSettingsActivity.a.g(this.a), SyncCheckLogActivity.class);
      SyncSettingsActivity.a.h(this.a).startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afe
 * JD-Core Version:    0.6.2
 */