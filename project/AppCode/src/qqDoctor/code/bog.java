import QQPIM.EIllegaReason;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

final class bog
  implements View.OnClickListener
{
  bog(bod parambod, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    ge localge = new ge(bod.h(this.c));
    kw localkw = this.a;
    String[] arrayOfString1 = new String[9];
    arrayOfString1[0] = localge.a.getString(2131428774);
    arrayOfString1[1] = localge.a.getString(2131428775);
    arrayOfString1[2] = localge.a.getString(2131428776);
    arrayOfString1[3] = localge.a.getString(2131428777);
    arrayOfString1[4] = localge.a.getString(2131428778);
    arrayOfString1[5] = localge.a.getString(2131428779);
    arrayOfString1[6] = localge.a.getString(2131428780);
    arrayOfString1[7] = localge.a.getString(2131428781);
    arrayOfString1[8] = localge.a.getString(2131428782);
    String[] arrayOfString2 = new String[9];
    arrayOfString2[0] = EIllegaReason.IR_Pay.value();
    arrayOfString2[1] = EIllegaReason.IR_Conn.value();
    arrayOfString2[2] = EIllegaReason.IR_SMS.value();
    arrayOfString2[3] = EIllegaReason.IR_GetInfo.value();
    arrayOfString2[4] = EIllegaReason.IR_Plugin.value();
    arrayOfString2[5] = EIllegaReason.IR_Ad.value();
    arrayOfString2[6] = EIllegaReason.IR_TermProc.value();
    arrayOfString2[7] = EIllegaReason.IR_Damage.value();
    arrayOfString2[8] = EIllegaReason.IR_Other.value();
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      RadioButtonMode localRadioButtonMode = new RadioButtonMode();
      localRadioButtonMode.setRadioButtonName(arrayOfString1[i]);
      localRadioButtonMode.setRadioEventCode(arrayOfString2[i]);
      localArrayList.add(localRadioButtonMode);
    }
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(localge.a);
    localRadioButtonDialog.setDataAdapter(localArrayList, 0);
    String str = localge.a.getString(2131428773);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localkw.getAppName();
    localRadioButtonDialog.setTitle(String.format(str, arrayOfObject));
    localRadioButtonDialog.setOnItemClickListener(new gf(localge, arrayOfString2, localkw, localRadioButtonDialog));
    localRadioButtonDialog.show();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bog
 * JD-Core Version:    0.6.2
 */