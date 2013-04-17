import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioGroup;
import com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceExpandedWindow;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apm
  implements View.OnClickListener
{
  apm(apf paramapf, RadioGroup paramRadioGroup, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    nd localnd = nd.a();
    switch (this.a.getCheckedRadioButtonId())
    {
    default:
      apf.a(this.c).a(ho.a.a);
    case 2131230759:
    case 2131230760:
    }
    while (true)
    {
      this.b.dismiss();
      return;
      apf.a(this.c).a(ho.a.a);
      localnd.a(26265);
      DeskAssistanceExpandedWindow localDeskAssistanceExpandedWindow2 = DeskAssistanceExpandedWindow.getInstance();
      if (localDeskAssistanceExpandedWindow2 != null)
      {
        localDeskAssistanceExpandedWindow2.updateSettingViewStyle();
        continue;
        apf.a(this.c).a(ho.a.b);
        localnd.a(26266);
        DeskAssistanceExpandedWindow localDeskAssistanceExpandedWindow1 = DeskAssistanceExpandedWindow.getInstance();
        if (localDeskAssistanceExpandedWindow1 != null)
          localDeskAssistanceExpandedWindow1.updateSettingViewStyle();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apm
 * JD-Core Version:    0.6.2
 */