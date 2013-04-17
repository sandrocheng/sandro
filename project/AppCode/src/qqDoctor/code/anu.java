import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class anu extends BaseView
{
  private Activity a;

  public anu(Context paramContext)
  {
    super(paramContext, 2130903161);
    this.a = ((Activity)paramContext);
  }

  public final void onCreate()
  {
    super.onCreate();
    TextView localTextView1 = (TextView)findViewById(2131231045);
    TextView localTextView2 = (TextView)findViewById(2131231046);
    String str1 = this.a.getIntent().getStringExtra("title_str");
    String str2 = this.a.getIntent().getStringExtra("info_str");
    int i = this.a.getIntent().getIntExtra("title", -1);
    int j = this.a.getIntent().getIntExtra("info", -1);
    Resources localResources = this.a.getResources();
    if ((str1 == null) || (str2 == null))
    {
      localTextView1.setText(localResources.getString(i));
      localTextView2.setText(localResources.getString(j));
    }
    while (true)
    {
      return;
      localTextView1.setText(str1);
      localTextView2.setText(str2);
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427451);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anu
 * JD-Core Version:    0.6.2
 */