import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeRestorePatternPasswordEnterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class atm extends bfy
{
  public atm(Context paramContext, String paramString)
  {
    super(paramContext);
  }

  protected final void a()
  {
    this.a = new jj().a("privacy_secret_info", "Module=?", new String[] { "module_file_safe" }, "Module ASC").b();
  }

  public final void b()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("VerifyResult", true);
    getActivity().setResult(-1, localIntent);
    super.b();
  }

  public final void c()
  {
    Intent localIntent = new Intent(this.mContext, FileSafeRestorePatternPasswordEnterActivity.class);
    localIntent.setFlags(33554432);
    getActivity().startActivity(localIntent);
    getActivity().finish();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b.setVisibility(4);
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    c();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838150);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atm
 * JD-Core Version:    0.6.2
 */