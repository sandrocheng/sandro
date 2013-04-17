import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SecureSmsDialogueActivity;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class bie
  implements View.OnClickListener
{
  bie(bhz parambhz)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)bhz.j(this.a).getTag()).intValue();
    ky localky = (ky)bhz.k(this.a).get(i);
    Intent localIntent = new Intent();
    localIntent.putExtra("smslogname", localky.name);
    localIntent.putExtra("smslogphonenum", localky.phonenum);
    localIntent.setClass(bhz.l(this.a), SecureSmsDialogueActivity.class);
    bhz.m(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bie
 * JD-Core Version:    0.6.2
 */