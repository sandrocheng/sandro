import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafePrivacySafeActivity;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeRestorePatternPasswordEnterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class atd
  implements View.OnClickListener
{
  atd(atb paramatb)
  {
  }

  public final void onClick(View paramView)
  {
    if (atb.c(this.a));
    for (Intent localIntent = new Intent(atb.d(this.a), FileSafePrivacySafeActivity.class); ; localIntent = new Intent(atb.e(this.a), FileSafeRestorePatternPasswordEnterActivity.class))
    {
      this.a.getActivity().startActivityForResult(localIntent, 102);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atd
 * JD-Core Version:    0.6.2
 */