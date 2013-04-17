import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.PhoneCheckActivity;
import com.tencent.qqpimsecure.view.MainPageView;

public final class anx
  implements View.OnClickListener
{
  public anx(MainPageView paramMainPageView)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView == MainPageView.c(this.a))
    {
      if (!qc.g)
        break label43;
      ha.b(MainPageView.d(this.a), MainPageView.e(this.a).getResources().getString(2131428228));
    }
    while (true)
    {
      return;
      label43: Intent localIntent = new Intent(MainPageView.f(this.a), PhoneCheckActivity.class);
      MainPageView.g(this.a).startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anx
 * JD-Core Version:    0.6.2
 */