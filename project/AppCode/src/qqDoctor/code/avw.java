import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.MMSPartAcitivty;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class avw
  implements View.OnClickListener
{
  avw(avu paramavu)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)avu.B(this.a).getTag()).intValue();
    mk localmk = (mk)avu.C(this.a).get(i);
    if (localmk.mmsData != null)
    {
      Intent localIntent = new Intent();
      localIntent.setClass(avu.D(this.a), MMSPartAcitivty.class);
      localIntent.putExtra("form", 1);
      localIntent.putExtra("smslog", localmk);
      avu.E(this.a).startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avw
 * JD-Core Version:    0.6.2
 */