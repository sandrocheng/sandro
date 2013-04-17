import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordEnterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class arw extends BaseView
{
  private LinearLayout a;
  private ImageView b;
  private TextView c;
  private int d;
  private int e;
  private int f;
  private byte[] g;
  private boolean h;
  private boolean i;
  private Context j;
  private Bitmap k;
  private DisplayMetrics l;
  private boolean m;
  private int n;
  private String o;
  private Handler p = new arx(this);

  public arw(Context paramContext)
  {
    super(paramContext, 2130903148);
    this.j = paramContext;
  }

  public final void onBackClick()
  {
    if (this.n == 2)
      new yj(this.j).a();
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.l = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(this.l);
    this.b = ((ImageView)findViewById(2131230996));
    this.a = ((LinearLayout)findViewById(2131231006));
    this.c = ((TextView)findViewById(2131231007));
    findViewById(2131231009);
    Intent localIntent = getActivity().getIntent();
    this.n = localIntent.getIntExtra("type", -1);
    if (this.n == 2)
    {
      this.o = localIntent.getStringExtra("PkgName");
      setBackText(2131427447);
    }
    arr localarr = (arr)localIntent.getParcelableExtra("dataInfo4Ui");
    this.m = localIntent.getBooleanExtra("CameraCaptureFirstTry", false);
    int i1 = localarr.e;
    boolean bool = false;
    if (i1 == 6)
      bool = true;
    this.i = bool;
    if (this.i)
    {
      this.d = localarr.a;
      this.e = localarr.b;
      this.f = localarr.c;
      this.g = ary.a().a(localarr.d);
      this.c.setTextColor(this.j.getResources().getColor(2131296394));
      this.c.setText(2131430028);
      if (this.m)
        ha.a(this.j, 2131430032);
      if ((!this.i) || (this.g == null))
        break label553;
    }
    label540: label553: for (this.k = a.a(this.g, this.e, this.f, this.d); ; this.k = BitmapFactory.decodeResource(this.j.getResources(), 2130837734))
    {
      int i2 = this.l.widthPixels;
      int i3 = i2 * this.k.getHeight() / this.k.getWidth();
      new StringBuilder("newWidth * newHeight: ").append(i2).append(",").append(i3).toString();
      ViewGroup.LayoutParams localLayoutParams1 = this.b.getLayoutParams();
      localLayoutParams1.height = i3;
      localLayoutParams1.width = i2;
      this.b.setLayoutParams(localLayoutParams1);
      this.b.setImageBitmap(this.k);
      ViewGroup.LayoutParams localLayoutParams2 = this.a.getLayoutParams();
      localLayoutParams2.height = localarr.h;
      localLayoutParams2.width = localarr.g;
      this.a.setLayoutParams(localLayoutParams2);
      return;
      this.h = localarr.f;
      this.c.setTextColor(this.j.getResources().getColor(2131296256));
      this.c.setTextSize(21.0F);
      if (this.h)
        this.c.setText(2131430029);
      while (true)
      {
        this.b.setBackgroundColor(this.j.getResources().getColor(2131296396));
        if (!this.m)
          break label540;
        ha.a(this.j, 2131430033);
        break;
        this.c.setText(2131430030);
      }
      ha.a(this.j, 2131430031);
      break;
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.p.removeMessages(1);
    if (this.k != null)
      this.k.recycle();
  }

  public final void onOptionClick(int paramInt)
  {
    if (!this.i)
    {
      this.p.removeMessages(2);
      Context localContext = this.j;
      int i1 = this.n;
      String str = this.o;
      Intent localIntent = new Intent(localContext, PrivacyPatternPasswordEnterActivity.class);
      a.a(localIntent, i1, -1, str);
      localContext.startActivity(localIntent);
      getActivity().finish();
    }
  }

  public final void onResume()
  {
    super.onResume();
    if (this.i)
      this.p.sendEmptyMessageDelayed(1, 1000L);
    while (true)
    {
      return;
      if (this.m)
        this.p.sendEmptyMessageDelayed(2, 2000L);
      else
        this.p.sendEmptyMessageDelayed(2, 1000L);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429992);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleBarBackground(this.j, 2130837731);
    paramFrameworkTemplateUI.setBackButtonBackground(this.j, 2130838325);
    paramFrameworkTemplateUI.setBackButtonTextColor(this.j, 2131296262);
    paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130837729);
    paramFrameworkTemplateUI.setOptionButtonBackground(null);
    paramFrameworkTemplateUI.setTitleBarLayoutPadding();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arw
 * JD-Core Version:    0.6.2
 */