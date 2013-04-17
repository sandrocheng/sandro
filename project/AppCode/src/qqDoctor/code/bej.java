import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofFarControlActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class bej extends BaseView
  implements View.OnClickListener
{
  private ButtonView a;
  private EditText b;
  private EditText c;
  private int d = 0;
  private BroadcastReceiver e = null;

  public bej(Context paramContext)
  {
    super(paramContext, 2130903201);
  }

  private static void a(View paramView, String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(paramString2);
    if (i == -1)
      ((TextView)paramView).setText(paramString1);
    while (true)
    {
      return;
      SpannableString localSpannableString = new SpannableString(paramString1);
      localSpannableString.setSpan(new ForegroundColorSpan(-65536), i, i + paramString2.length(), 33);
      ((TextView)paramView).setText(localSpannableString);
    }
  }

  private void a(String paramString1, String paramString2)
  {
    String str;
    switch (this.d)
    {
    default:
      str = null;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      Dialog localDialog = a.a(this.mContext, this.mContext.getResources().getString(2131429415));
      localDialog.show();
      if (this.e == null)
      {
        this.e = new bek(this, localDialog);
        this.mContext.registerReceiver(this.e, new IntentFilter("com.tencent.qqpim.pickproff"));
      }
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent("com.tencent.qqpim.pickproff"), 0);
      if ((!gu.a(paramString1, str + paramString2, localPendingIntent)) && (this.e != null))
      {
        this.mContext.unregisterReceiver(this.e);
        this.e = null;
        localDialog.dismiss();
      }
      return;
      str = "#qqdeleteall#";
      continue;
      str = "#qqlock#";
      continue;
      str = "#qqlocate#";
      continue;
      str = "#qqpin#";
    }
  }

  public final void onClick(View paramView)
  {
    if (2131231228 != paramView.getId());
    while (true)
    {
      return;
      String str1 = this.b.getText().toString().trim();
      if ((str1 == null) || (str1.length() == 0))
      {
        ha.b(this.mContext, 2131429324);
      }
      else if (!ft.b(str1))
      {
        ha.b(this.mContext, 2131429323);
      }
      else
      {
        String str2 = this.c.getText().toString().trim();
        if ((str2 == null) || (str2.length() == 0))
        {
          ha.b(this.mContext, 2131429379);
        }
        else
        {
          String str3 = ft.b(this.mContext);
          if ((str3 != null) && (str1.equals(str3)))
          {
            xn.a(this.mContext, 2131429404);
          }
          else if (this.d != 0)
          {
            a(str1, str2);
          }
          else
          {
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(2131427374);
            String str4 = this.mContext.getString(2131429416);
            SpannableString localSpannableString = new SpannableString(str4);
            int i = str4.indexOf("\n");
            localSpannableString.setSpan(new ForegroundColorSpan(-65536), i, str4.length(), 33);
            localDialog.setMessage(localSpannableString);
            localDialog.setPositiveButton(2131427397, new bel(this, localDialog, str1, str2), 2);
            localDialog.setPositiveButton(2131427379, new bem(localDialog), 2);
            localDialog.show();
          }
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ((PickproofFarControlActivity)this.mContext).getIntent().getIntExtra("cmd_type", 0);
    this.b = ((EditText)findViewById(2131231225));
    this.c = ((EditText)findViewById(2131231227));
    this.a = ((ButtonView)findViewById(2131231228));
    this.a.setOnClickListener(this);
    TextView localTextView1 = (TextView)findViewById(2131231229);
    TextView localTextView2 = (TextView)findViewById(2131231230);
    ButtonView localButtonView = (ButtonView)findViewById(2131231228);
    switch (this.d)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      ((PickproofFarControlActivity)this.mContext).getWindow().setSoftInputMode(3);
      return;
      localTextView1.setText(2131429396);
      a(localTextView2, this.mContext.getResources().getString(2131429395), "＃QQDeleteAll＃手机防盗密码");
      TextView localTextView5 = (TextView)findViewById(2131231232);
      ((ImageView)findViewById(2131231231)).setVisibility(0);
      localTextView5.setVisibility(0);
      localButtonView.setText(this.mContext.getResources().getString(2131429409));
      this.c.setTransformationMethod(PasswordTransformationMethod.getInstance());
      this.c.setInputType(130);
      continue;
      localTextView1.setText(2131429399);
      a(localTextView2, this.mContext.getResources().getString(2131429398), "＃QQLock＃手机防盗密码");
      localButtonView.setText(this.mContext.getResources().getString(2131429410));
      this.c.setTransformationMethod(PasswordTransformationMethod.getInstance());
      this.c.setInputType(130);
      continue;
      localTextView1.setText(2131429401);
      a(localTextView2, this.mContext.getResources().getString(2131429400), "＃QQLocate＃手机防盗密码");
      localButtonView.setText(this.mContext.getResources().getString(2131429411));
      this.c.setTransformationMethod(PasswordTransformationMethod.getInstance());
      this.c.setInputType(130);
      continue;
      TextView localTextView3 = (TextView)findViewById(2131231224);
      TextView localTextView4 = (TextView)findViewById(2131231226);
      localTextView3.setText(2131429406);
      localTextView4.setText(2131429391);
      localTextView1.setText(2131429403);
      a(localTextView2, this.mContext.getResources().getString(2131429402), "＃QQPIN＃紧急联系人号码");
      localButtonView.setText(this.mContext.getResources().getString(2131429412));
      this.c.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    getFrameworkTemplateUI().updateInfoBarText(this.mContext.getString(2131429361));
    switch (this.d)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131429409);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131429410);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131429411);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131429412);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bej
 * JD-Core Version:    0.6.2
 */