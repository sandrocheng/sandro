import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

public final class aed
  implements View.OnClickListener
{
  public aed(SyncMobileAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(SyncMobileAccountLoginActivity.a.i(this.a));
    localRadioButtonDialog.setTitle(2131428836);
    String[] arrayOfString1 = this.a.a.getResources().getStringArray(2131165251);
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      String[] arrayOfString2 = arrayOfString1[i].split(",");
      RadioButtonMode localRadioButtonMode = new RadioButtonMode();
      localRadioButtonMode.setRadioButtonName(arrayOfString2[1] + "(+" + arrayOfString2[2] + ")");
      localRadioButtonMode.setRadioEventCode(arrayOfString2[2]);
      localArrayList.add(localRadioButtonMode);
    }
    localRadioButtonDialog.setDataAdapter(localArrayList, -1);
    localRadioButtonDialog.setOnItemClickListener(new aee(this, localArrayList, localRadioButtonDialog));
    localRadioButtonDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aed
 * JD-Core Version:    0.6.2
 */