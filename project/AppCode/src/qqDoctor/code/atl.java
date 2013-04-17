import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafePrivacySafeActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class atl extends bft
{
  public atl(Context paramContext, String paramString)
  {
    super(paramContext);
  }

  protected final void a()
  {
    boolean bool = true;
    jj localjj = new jj();
    String[] arrayOfString = new String[bool];
    arrayOfString[0] = "module_file_safe";
    mg localmg = localjj.a("privacy_secret_info", "Module=?", arrayOfString, "Module ASC");
    this.e = localmg.a();
    this.g = localmg.b();
    if ((this.g != null) && (!this.g.equals("")));
    while (true)
    {
      this.f = bool;
      return;
      bool = false;
    }
  }

  protected final void b()
  {
    this.b.setText(this.mContext.getString(2131430158));
    this.b.setTextColor(this.mContext.getResources().getColor(2131296262));
  }

  protected final void c()
  {
    super.c();
    Intent localIntent = new Intent(this.mContext, FileSafePrivacySafeActivity.class);
    localIntent.setFlags(33554432);
    getActivity().startActivity(localIntent);
    getActivity().finish();
  }

  public final void d()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("VerifyResult", true);
    getActivity().setResult(-1, localIntent);
    getActivity().finish();
  }

  public final void onCreate()
  {
    super.onCreate();
    b();
    if (this.f)
      this.c.setText(this.mContext.getString(2131430157));
    this.c.setVisibility(4);
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    c();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    if (this.f)
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838151);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atl
 * JD-Core Version:    0.6.2
 */