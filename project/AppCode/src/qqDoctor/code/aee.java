import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

final class aee
  implements AdapterView.OnItemClickListener
{
  aee(aed paramaed, ArrayList paramArrayList, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    RadioButtonMode localRadioButtonMode = (RadioButtonMode)this.a.get(paramInt);
    SyncMobileAccountLoginActivity.a.j(this.c.a).setText(localRadioButtonMode.getRadioButtonName());
    SyncMobileAccountLoginActivity.a.a(this.c.a, localRadioButtonMode.getRadioEventCode());
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aee
 * JD-Core Version:    0.6.2
 */