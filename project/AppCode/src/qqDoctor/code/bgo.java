import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;

public final class bgo extends BaseView
{
  LockPatternView a;
  yj b;
  private ImageView c;
  private TextView d;
  private TextView e;
  private ho f = ho.a();
  private String g;
  private Intent h;
  private int i;
  private boolean j;
  private LockPatternView.c k = new bgq(this);
  private Runnable l = new bgs(this);

  public bgo(Context paramContext)
  {
    super(paramContext, 2130903355);
    this.b = new yj(paramContext);
  }

  public final void onBackClick()
  {
    if (this.i == 2)
      this.b.a();
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    View localView1 = localLayoutInflater.inflate(2130903220, null);
    View localView2 = localLayoutInflater.inflate(2130903219, null);
    this.a = ((LockPatternView)findViewById(2131230725));
    this.a.setOnPatternListener(this.k);
    this.a.setHeaderView(localView1);
    this.a.setFooterView(localView2);
    this.c = ((ImageView)findViewById(2131230905));
    this.e = ((TextView)findViewById(2131230903));
    this.d = ((TextView)findViewById(2131230906));
    this.d.setText(this.mContext.getString(2131430144));
    this.e.setText(this.mContext.getString(2131430155));
    boolean bool1 = this.f.cn();
    boolean bool2 = this.f.cm();
    if (bool1)
      this.a.setTactileFeedbackEnabled(true);
    if (bool2)
      this.a.setInStealthMode(true);
    TextView localTextView = this.e;
    String str1 = ho.a().ci();
    int m;
    int i1;
    if ((str1 != null) && (!str1.equals("")))
    {
      m = 1;
      if (m == 0)
      {
        String str2 = ho.a().n();
        if ((str2 == null) || (str2.equals("")))
          break label288;
        i1 = 1;
        label246: if (i1 == 0)
          break label294;
      }
    }
    label288: label294: for (int n = 0; ; n = 4)
    {
      localTextView.setVisibility(n);
      this.e.setOnClickListener(new bgp(this));
      this.j = false;
      return;
      m = 0;
      break;
      i1 = 0;
      break label246;
    }
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.d.setText(this.mContext.getString(2131430144));
      this.d.setTextColor(this.mContext.getResources().getColor(2131296262));
      this.c.setImageResource(2130837689);
      continue;
      this.a.a();
      this.a.a(new bgr(this));
    }
  }

  public final void onOptionClick(int paramInt)
  {
    if (!this.j)
    {
      this.j = true;
      super.onOptionClick(paramInt);
      a.a(this.mContext, this.i, this.g);
      getActivity().finish();
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.h = getActivity().getIntent();
    if (this.h != null)
    {
      this.i = this.h.getIntExtra("type", -1);
      if (this.i == 2)
      {
        this.g = this.h.getStringExtra("PkgName");
        setBackText(2131427447);
      }
    }
    this.a.a();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131430105));
    paramFrameworkTemplateUI.setTitleBarBackground(this.mContext, 2130837686);
    paramFrameworkTemplateUI.setTitleTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setBackButtonBackground(this.mContext, 2130838325);
    paramFrameworkTemplateUI.setBackButtonTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
    paramFrameworkTemplateUI.setOptionButtonBackground(null);
    if (ho.a().cH())
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130837687);
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setTitleBarLayoutPadding();
      return;
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgo
 * JD-Core Version:    0.6.2
 */