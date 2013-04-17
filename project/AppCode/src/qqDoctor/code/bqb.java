import QQPIM.SoftListType;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.BootOptimizeActivity;
import com.tencent.qqpimsecure.ui.activity.DataClearActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.RunningProcessesActivity;
import com.tencent.qqpimsecure.ui.activity.systemoptimize.DeepCleanActivity;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.bmw.RotateTableView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class bqb extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private int A;
  private int B;
  private long C;
  private long D;
  private boolean E;
  private long F = 0L;
  private boolean G;
  private int H = -1;
  private int I = -1;
  private int J = -1;
  private ArrayList<kw> K;
  private boolean L = false;
  private boolean M = false;
  private int N = -1;
  private RotateTableView O;
  private vh P = vh.a();
  private zo Q = zo.a();
  private Handler R = new bqo(this);
  private Handler S = new bqh(this);
  boolean a = false;
  private ListView b;
  private TabAdapter c;
  private TextView d;
  private ButtonView e;
  private LinearLayout f;
  private LinearLayout g;
  private TextView h;
  private LinearLayout i;
  private ListView j;
  private List<ResultModel> k = new ArrayList();
  private MainResultAdapter l;
  private LinearLayout m;
  private TextView n;
  private TextView o;
  private ImageView p;
  private LinearLayout q;
  private FrameLayout r;
  private ProgressBarView s;
  private ButtonView t;
  private SoftwareManager u = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
  private boolean v = false;
  private int w;
  private float x;
  private AppListManager y;
  private bqb.a z = null;

  public bqb(Context paramContext)
  {
    super(paramContext, 2130903225);
  }

  private boolean a(kw paramkw)
  {
    if (this.y == null)
      this.y = ((AppListManager)ManagerCreator.getManager(AppListManager.class));
    return this.y.contains(paramkw.getPackageName(), SoftListType.WHITELIST_COMMON);
  }

  private void b()
  {
    List localList;
    String str2;
    label118: String str3;
    if (this.L)
    {
      this.d.setText(2131429719);
      this.w = vh.g();
      localList = this.c.getDataList();
      TabModel localTabModel = (TabModel)localList.get(0);
      if (!this.L)
        break label289;
      if ((this.D <= 0L) || (this.A <= 0))
        break label274;
      String str6 = this.mContext.getString(2131429675);
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(this.A);
      arrayOfObject3[1] = a.b(this.D << 10);
      str2 = String.format(str6, arrayOfObject3);
      localTabModel.setContent(Html.fromHtml(str2));
      ((TabModel)localList.get(3)).setContent(this.mContext.getString(2131429743));
      if (!this.L)
        break label438;
      if (this.C <= 0L)
        break label423;
      String str4 = a.b(this.C);
      str3 = String.format(this.mContext.getString(2131429679), new Object[] { str4 });
      label199: ((TabModel)localList.get(2)).setContent(str3);
      label214: if (this.N != -1)
        break label464;
      ((TabModel)localList.get(1)).setContent(this.mContext.getString(2131429738));
    }
    while (true)
    {
      this.c.setDataList(localList);
      this.c.notifyDataSetChanged();
      return;
      this.d.setText(2131429718);
      break;
      label274: str2 = this.mContext.getString(2131429676);
      break label118;
      label289: if (!vh.a(this.w))
      {
        String str5 = this.mContext.getString(2131429720);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = (this.w + "%");
        str2 = String.format(str5, arrayOfObject2);
        break label118;
      }
      String str1 = this.mContext.getString(2131429721);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = ("<font color=\"#FF0000\">" + this.w + "%" + "</font>");
      str2 = String.format(str1, arrayOfObject1);
      break label118;
      label423: str3 = this.mContext.getString(2131429680);
      break label199;
      label438: ((TabModel)localList.get(2)).setContent(this.mContext.getString(2131429736));
      break label214;
      label464: ((TabModel)localList.get(1)).setContent(this.mContext.getString(2131429738));
      new Thread(new bqc(this)).start();
    }
  }

  private void c()
  {
    this.m.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.i.setVisibility(8);
    int i1 = this.mContext.getResources().getDisplayMetrics().heightPixels - (this.m.getTop() + getNotificationHeight());
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation1.setDuration(500L);
    localAlphaAnimation1.setAnimationListener(new bql(this));
    this.j.startAnimation(localAlphaAnimation1);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation2.setDuration(150L);
    localAlphaAnimation2.setStartOffset(600L);
    localAlphaAnimation2.setAnimationListener(new bqm(this));
    this.f.startAnimation(localAlphaAnimation2);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, i1, 0.0F);
    localTranslateAnimation.setDuration(1000L);
    localTranslateAnimation.setAnimationListener(new bqn(this));
    this.m.startAnimation(localTranslateAnimation);
  }

  private void d()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(400L);
    localAlphaAnimation.setAnimationListener(new bqe(this));
    this.q.startAnimation(localAlphaAnimation);
  }

  public final void a()
  {
    d();
    this.J = -1;
    this.k.clear();
    this.l.setDataList(this.k);
    this.l.notifyDataSetChanged();
    if (this.G)
    {
      this.G = false;
      System.currentTimeMillis();
      new hd();
    }
  }

  public final void onBackClick()
  {
    Intent localIntent = getActivity().getIntent();
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      localContext.startActivity(new Intent(localContext, MainActivity.class));
    }
    super.onBackClick();
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231268:
    case 2131230769:
    }
    while (true)
    {
      return;
      if ((this.N != -1) && (!this.a))
        if (!this.v)
        {
          this.F = System.currentTimeMillis();
          this.G = true;
          this.a = true;
          this.v = true;
          this.A = 0;
          this.B = 0;
          this.C = 0L;
          this.D = 0L;
          this.h.setText("");
          this.f.setVisibility(0);
          this.g.setVisibility(0);
          this.i.setVisibility(0);
          int i1 = this.mContext.getResources().getDisplayMetrics().heightPixels - (this.m.getTop() + getNotificationHeight());
          ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 1.0F, 1.0F, i1);
          localScaleAnimation.setDuration(800L);
          localScaleAnimation.setAnimationListener(new bqk(this));
          this.i.startAnimation(localScaleAnimation);
          TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, i1);
          localTranslateAnimation.setDuration(800L);
          this.m.startAnimation(localTranslateAnimation);
        }
        else
        {
          this.a = false;
          this.v = false;
          this.e.setText(this.mContext.getString(2131429672));
          b();
          this.s.stopAnimation();
          c();
          continue;
          if (this.M)
          {
            this.a = false;
            this.E = true;
            this.v = false;
            this.s.stopAnimation();
            c();
          }
        }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ((TextView)findViewById(2131231202));
    this.d.setText(2131429718);
    this.b = ((ListView)findViewById(2131230930));
    this.c = new TabAdapter(this.mContext, 5, 2);
    this.b.setAdapter(this.c);
    this.b.setOnItemClickListener(this);
    this.e = ((ButtonView)findViewById(2131231268));
    this.e.setOnClickListener(this);
    this.r = ((FrameLayout)findViewById(2131231269));
    this.s = ((ProgressBarView)findViewById(2131231270));
    this.t = ((ButtonView)findViewById(2131230769));
    this.t.setOnClickListener(this);
    this.f = ((LinearLayout)findViewById(2131231271));
    this.g = ((LinearLayout)findViewById(2131231272));
    this.h = ((TextView)findViewById(2131231273));
    this.i = ((LinearLayout)findViewById(2131231274));
    this.m = ((LinearLayout)findViewById(2131231094));
    this.j = ((ListView)findViewById(2131231059));
    this.l = new MainResultAdapter(this.mContext, this.j, this.k, null);
    this.j.setAdapter(this.l);
    this.j.setStackFromBottom(true);
    this.j.setTranscriptMode(2);
    this.p = ((ImageView)findViewById(2131231265));
    this.n = ((TextView)findViewById(2131231266));
    this.o = ((TextView)findViewById(2131231201));
    this.q = ((LinearLayout)findViewById(2131231163));
    this.O = ((RotateTableView)findViewById(2131231264));
    this.O.changeBMW(2, 0);
    this.O.changeBMW(1, 0);
    this.S.sendEmptyMessageDelayed(2, 200L);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.v);
    while (true)
    {
      return;
      nd localnd = nd.a();
      switch (((TabModel)this.c.getDataList().get(paramInt)).getID())
      {
      default:
        break;
      case 15:
        Intent localIntent4 = new Intent(this.mContext, RunningProcessesActivity.class);
        getActivity().startActivity(localIntent4);
        localnd.a(26065);
        break;
      case 16:
        Intent localIntent3 = new Intent(this.mContext, BootOptimizeActivity.class);
        localIntent3.putExtra(bpp.a, this.N);
        getActivity().startActivity(localIntent3);
        localnd.a(26066);
        break;
      case 17:
        Intent localIntent2 = new Intent(this.mContext, DataClearActivity.class);
        getActivity().startActivity(localIntent2);
        localnd.a(26067);
        break;
      case 46:
        Intent localIntent1 = new Intent(this.mContext, DeepCleanActivity.class);
        getActivity().startActivity(localIntent1);
      }
    }
  }

  public final void onPause()
  {
    super.onPause();
    this.z.removeMessages(1);
    this.z = null;
  }

  public final void onResume()
  {
    this.L = false;
    super.onResume();
    this.Q.e();
    this.P.d();
    if (this.z == null)
    {
      this.z = new bqb.a((byte)0);
      this.z.sendEmptyMessageDelayed(3, 100L);
    }
    b();
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429717);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends Handler
  {
    private a()
    {
    }

    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        return;
        int i = bqb.S(bqb.this);
        bqb.T(bqb.this);
        if (i != bqb.S(bqb.this))
          bqb.U(bqb.this);
        bqb.V(bqb.this);
        continue;
        bqb.X(bqb.this).changeBMW(2, (int)(0.6D * bqb.W(bqb.this)));
        if (bqb.c(bqb.this) != null)
        {
          bqb.c(bqb.this).sendEmptyMessageDelayed(1, 3000L);
          continue;
          bqb.U(bqb.this);
          bqb.V(bqb.this);
          if ((!bqb.Y(bqb.this)) && (!bqb.Z(bqb.this)))
            bqb.J(bqb.this);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqb
 * JD-Core Version:    0.6.2
 */