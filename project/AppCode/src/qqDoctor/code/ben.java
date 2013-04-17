import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.Window;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity3;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.ArrayList;
import java.util.List;

public final class ben extends BaseView
{
  private EditText a;
  private EditText b;
  private EditText c;
  private ho d;
  private AntitheftManager e;
  private List<OperatingModel> f = new ArrayList();

  public ben(Context paramContext)
  {
    super(paramContext, 2130903203);
  }

  private void a()
  {
    String str1 = this.a.getText().toString().trim();
    String str2 = this.b.getText().toString().trim();
    if ((str1.length() == 0) && (str2.length() == 0))
      ha.b(this.mContext, 2131427786);
    while (true)
    {
      nd.a().a(26385);
      return;
      if ((str1.length() == 0) || (str2.length() == 0))
      {
        if ((str2.length() == 0) && (!this.b.isFocused()))
        {
          this.b.setFocusable(true);
          this.b.setFocusableInTouchMode(true);
          this.b.requestFocus();
        }
        else
        {
          ha.b(this.mContext, 2131427787);
        }
      }
      else if (!str1.equals(str2))
      {
        ha.b(this.mContext, 2131427788);
      }
      else
      {
        this.e.setPassword(str2);
        Intent localIntent = new Intent();
        localIntent.setClass(this.mContext, PickproofGuidelActivity3.class);
        this.mContext.startActivity(localIntent);
        ((Activity)this.mContext).finish();
      }
    }
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    this.f.clear();
    OperatingModel localOperatingModel1 = new OperatingModel(0, this.mContext.getString(2131429313));
    localOperatingModel1.setStyle(0);
    this.f.add(localOperatingModel1);
    OperatingModel localOperatingModel2 = new OperatingModel(1, this.mContext.getString(2131427407));
    this.f.add(localOperatingModel2);
    return this.f;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ho.a();
    this.e = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    ((Activity)this.mContext).getWindow().setSoftInputMode(3);
    this.a = ((EditText)findViewById(2131231239));
    this.c = ((EditText)findViewById(2131231237));
    this.b = ((EditText)findViewById(2131231241));
    this.a.setHint(2131429303);
    this.b.setHint(2131429304);
    ((OperatingModel)this.f.get(0)).setVisible(8);
    refreshOperatingBar((OperatingModel)this.f.get(0));
    ((OperatingModel)this.f.get(1)).setText(this.mContext.getString(2131427407));
    refreshOperatingBar((OperatingModel)this.f.get(1));
    if (getActivity().getIntent().getBooleanExtra("NO_QQ_ACCOUNT", false))
    {
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131430244);
      localDialog.setMessage(2131429435);
      localDialog.setNeutralButton(2131429537, new beo(localDialog), 1);
      localDialog.show();
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      String str1 = this.c.getText().toString();
      String str2 = this.a.getText().toString();
      String str3 = this.b.getText().toString();
      String str4 = this.e.getPassword();
      if (str4 == null)
      {
        str4 = this.d.bF();
        this.e.setPassword(str4);
      }
      int i;
      if (str2.length() == 0)
        i = 2131427786;
      while (true)
      {
        ha.b(this.mContext, i);
        break;
        if (!str4.equals(str1))
        {
          i = 2131429387;
        }
        else if (!str2.equals(str3))
        {
          i = 2131427788;
        }
        else if (str1.equals(str2))
        {
          i = 2131429388;
        }
        else
        {
          i = 2131427783;
          this.e.setPassword(str2);
          a();
        }
      }
      a();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429298);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ben
 * JD-Core Version:    0.6.2
 */