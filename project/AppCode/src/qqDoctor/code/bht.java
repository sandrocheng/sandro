import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacySafeActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class bht
  implements View.OnClickListener
{
  bht(bhn parambhn, boolean paramBoolean)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a)
    {
      Context localContext = bhn.d(this.b);
      int i = bhn.e(this.b);
      String str = bhn.f(this.b);
      Intent localIntent = new Intent(localContext, PrivacySafeActivity.class);
      a.a(localIntent, i, 2, str);
      localContext.startActivity(localIntent);
      this.b.getActivity().finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bht
 * JD-Core Version:    0.6.2
 */