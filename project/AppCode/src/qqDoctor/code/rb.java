import android.app.Activity;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;

public final class rb
{
  Activity a;
  ki b;

  public rb(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
  }

  public final void a(hq paramhq, Handler paramHandler)
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(2131427376);
    localDialog.setMessage(2131427819);
    localDialog.setPositiveButton(2131427397, new rh(this, paramhq, localDialog, paramHandler), 2);
    localDialog.setNegativeButton(2131427379, new ri(localDialog), 2);
    localDialog.show();
  }

  public final void a(lf paramlf, int paramInt, dv paramdv)
  {
    lf locallf = paramlf.b();
    String str = locallf.phonenum;
    boolean bool1 = false;
    boolean bool3;
    if (str != null)
    {
      int j = locallf.phonenum.length();
      bool1 = false;
      if (j > 0)
      {
        if ((!locallf.phonenum.endsWith("*")) || (paramInt == 2))
          break label424;
        bool3 = true;
        bool1 = bool3;
      }
    }
    View localView = LayoutInflater.from(this.a).inflate(2130903046, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131230741);
    EditText localEditText2 = (EditText)localView.findViewById(2131230743);
    LinearLayout localLinearLayout1 = (LinearLayout)localView.findViewById(2131230744);
    LinearLayout localLinearLayout2 = (LinearLayout)localView.findViewById(2131230746);
    CheckBoxView localCheckBoxView1 = (CheckBoxView)localView.findViewById(2131230745);
    CheckBoxView localCheckBoxView2 = (CheckBoxView)localView.findViewById(2131230747);
    localCheckBoxView1.setChecked(true);
    localCheckBoxView2.setChecked(true);
    localEditText1.setText(locallf.phonenum);
    localEditText1.addTextChangedListener(new adn(localEditText1));
    localEditText2.setText(locallf.name);
    localCheckBoxView1.setChecked(locallf.enableForCalling);
    localCheckBoxView2.setChecked(locallf.enableForSMS);
    if (paramInt != 0)
    {
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(8);
      localCheckBoxView1.setVisibility(8);
      localCheckBoxView2.setVisibility(8);
    }
    TextView localTextView;
    label283: int i;
    label305: ButtonView localButtonView;
    if (bool1)
    {
      localTextView = (TextView)localView.findViewById(2131230749);
      localTextView.setVisibility(0);
      if (paramInt == 0)
        localTextView.setText(2131427507);
    }
    else
    {
      Dialog localDialog = new Dialog(this.a);
      if (paramInt != 2)
        break label440;
      i = 2131427730;
      localDialog.setTitle(i);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new rc(this, localEditText1, bool1, localEditText2, locallf, localCheckBoxView1, localCheckBoxView2, paramdv, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new re(localDialog), 2);
      localDialog.show();
      localButtonView = localDialog.getButton(-1);
      if (localEditText1.getText().toString().trim().length() <= 0)
        break label447;
    }
    label424: label440: label447: for (boolean bool2 = true; ; bool2 = false)
    {
      localButtonView.setEnabled(bool2);
      localEditText1.addTextChangedListener(new adn(localEditText1, localButtonView));
      return;
      bool3 = false;
      break;
      localTextView.setText(2131427508);
      break label283;
      i = 2131427729;
      break label305;
    }
  }

  public final void a(lf paramlf, hq paramhq, Handler paramHandler)
  {
    Resources localResources = this.a.getResources();
    String str1 = localResources.getString(2131428737);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramlf.phonenum;
    String str2 = String.format(str1, arrayOfObject);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(2131427759);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131427397, new rf(this, paramhq, paramlf, localResources, localDialog, paramHandler), 2);
    localDialog.setNegativeButton(2131427379, new rg(localDialog), 2);
    localDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rb
 * JD-Core Version:    0.6.2
 */