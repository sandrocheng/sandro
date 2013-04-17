import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.GridView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

public final class asq extends BaseView
{
  private int a;
  private GridView b;
  private String c;
  private ajg d;
  private List<lo> e;
  private int f;
  private Animation g;
  private Animation h;
  private Button i;
  private asw j;
  private boolean k;
  private Handler l = new asr(this);
  private AdapterView.OnItemClickListener m = new asv(this);

  public asq(Context paramContext)
  {
    super(paramContext, 2130903151);
    new if();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ((GridView)findViewById(2131231011));
    this.b.setOnItemClickListener(this.m);
    this.b.setNumColumns(3);
    this.b.setColumnWidth(lm.e.a);
    this.b.setHorizontalSpacing(lm.e.c);
    this.b.setVerticalSpacing(lm.e.d);
    this.a = getActivity().getIntent().getIntExtra("type", 0);
    this.c = getActivity().getIntent().getStringExtra("workdir");
    this.e = new LinkedList();
    this.d = new ajg(this.mContext, this.b, this.e);
    this.b.setAdapter(this.d);
    this.b.setOnScrollListener(this.d);
    this.d.b();
    this.i = ((Button)findViewById(2131231013));
    this.g = AnimationUtils.loadAnimation(this.mContext, 2130968593);
    this.g.setAnimationListener(new ass(this));
    this.h = AnimationUtils.loadAnimation(this.mContext, 2130968591);
    this.h.setAnimationListener(new ast(this));
    this.i.setOnClickListener(new asu(this));
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if (this.j != null)
    {
      this.j.d();
      this.j.e();
      this.j = null;
    }
    this.d.c();
  }

  public final void onOptionClick(int paramInt)
  {
    getActivity().setResult(-1, new Intent());
    getActivity().finish();
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
  }

  public final void onStart()
  {
    super.onStart();
    if (!this.k)
    {
      this.d.b(false);
      if (this.j == null)
      {
        this.f = 0;
        this.j = new asw(this.mContext, this.a, this.c, this.l);
        this.j.a();
        this.j.b();
      }
    }
    while (true)
    {
      return;
      this.j.b();
      continue;
      this.d.b(false);
    }
  }

  public final void onStop()
  {
    super.onStop();
    if ((this.j != null) && (!this.k))
      this.j.c();
    this.d.b(true);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(new File(this.c).getName());
    paramFrameworkTemplateUI.setTitleBarBackground(this.mContext, 2130838200);
    paramFrameworkTemplateUI.setTitleTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
    paramFrameworkTemplateUI.setBackButtonBackground(this.mContext, 2130838325);
    paramFrameworkTemplateUI.setBackButtonTextColor(this.mContext, 2131296262);
    paramFrameworkTemplateUI.setOptionButtonBackground(null);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleBarLayoutPadding();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asq
 * JD-Core Version:    0.6.2
 */