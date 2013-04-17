import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity.a;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

public final class ael
  implements View.OnClickListener
{
  public ael(SyncMobileRegisterActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(SyncMobileRegisterActivity.a.a(this.a));
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
    localRadioButtonDialog.setOnItemClickListener(new aem(this, localArrayList, localRadioButtonDialog));
    localRadioButtonDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ael
 * JD-Core Version:    0.6.2
 */