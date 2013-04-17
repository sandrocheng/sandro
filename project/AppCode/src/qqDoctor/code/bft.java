import android.content.Context;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;

public abstract class bft extends BaseView
{
  public static final String[] a = { "module_file_safe" };
  protected TextView b;
  protected TextView c;
  LockPatternView d;
  protected String e;
  protected boolean f;
  protected String g;
  private ImageView h;
  private ho i = ho.a();
  private LockPatternView.c j = new bfv(this);
  private Runnable k = new bfx(this);

  public bft(Context paramContext)
  {
    super(paramContext, 2130903041);
    a();
  }

  protected abstract void a();

  protected void b()
  {
  }

  public void c()
  {
  }

  public abstract void d();

  public void onBackClick()
  {
    super.onBackClick();
  }

  public void onCreate()
  {
    super.onCreate();
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    View localView1 = localLayoutInflater.inflate(2130903119, null);
    View localView2 = localLayoutInflater.inflate(2130903118, null);
    this.d = ((LockPatternView)findViewById(2131230725));
    this.d.setOnPatternListener(this.j);
    this.d.setHeaderView(localView1);
    this.d.setFooterView(localView2);
    this.h = ((ImageView)findViewById(2131230905));
    this.c = ((TextView)findViewById(2131230903));
    boolean bool1 = this.i.cn();
    boolean bool2 = this.i.cm();
    if (bool1)
      this.d.setTactileFeedbackEnabled(true);
    if (bool2)
      this.d.setInStealthMode(true);
    this.b = ((TextView)findViewById(2131230906));
    this.b.setText(this.mContext.getString(2131430144));
    TextView localTextView = this.c;
    if (this.f);
    for (String str = this.mContext.getString(2131430155); ; str = this.mContext.getString(2131430299))
    {
      localTextView.setText(str);
      this.c.setOnClickListener(new bfu(this));
      return;
    }
  }

  public void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      b();
      this.h.setImageResource(2130837689);
    }
  }

  public void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
  }

  public void onResume()
  {
    super.onResume();
    this.d.a();
  }

  public void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131430105));
    paramFrameworkTemplateUI.setTitleBarBackground(this.mContext, 2130837686);
    paramFrameworkTemplateUI.setTitleTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setBackButtonBackground(this.mContext, 2130838325);
    paramFrameworkTemplateUI.setBackButtonTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
    paramFrameworkTemplateUI.setOptionButtonBackground(null);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleBarLayoutPadding();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bft
 * JD-Core Version:    0.6.2
 */