import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity.a;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

final class aem
  implements AdapterView.OnItemClickListener
{
  aem(ael paramael, ArrayList paramArrayList, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    RadioButtonMode localRadioButtonMode = (RadioButtonMode)this.a.get(paramInt);
    SyncMobileRegisterActivity.a.b(this.c.a).setText(localRadioButtonMode.getRadioButtonName());
    SyncMobileRegisterActivity.a.a(this.c.a, localRadioButtonMode.getRadioEventCode());
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aem
 * JD-Core Version:    0.6.2
 */