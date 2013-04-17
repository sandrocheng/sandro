import QQPIM.VirusUpdateInfo;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils.TruncateAt;
import android.text.style.ForegroundColorSpan;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.virus.ProfessionalKillerListActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanRecordListActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScheduleScanActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class brp extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private sq A;
  private jl B;
  private acj C;
  private acj.a D;
  private acr E;
  private mu F;
  private List<ResultModel> G;
  private List<ms> H = new ArrayList();
  private List<ms> I = new ArrayList();
  private acr.a J;
  private int K = 0;
  private Handler L;
  private long M;
  private boolean N = false;
  private VirusUpdateInfo O;
  private boolean P;
  private List<ms> Q = new ArrayList();
  private List<ms> R = new ArrayList();
  private long S;
  private boolean T;
  private boolean U;
  private int V;
  private TabAdapter W;
  private ArrayList<TabModel> a;
  private TextView b;
  private FrameLayout c;
  private ProgressBarView d;
  private ButtonView e;
  private ButtonView f;
  private ButtonView g;
  private ListView h;
  private ImageView i;
  private ImageView j;
  private TextView k;
  private LinearLayout l;
  private TextView m;
  private TextView n;
  private LinearLayout o;
  private TextView p;
  private TextView q;
  private Animation r;
  private LinearLayout s;
  private ListView t;
  private PinnedHeaderListView u;
  private amh v;
  private MainResultAdapter w;
  private SoftwareManager x;
  private ho y;
  private km z;

  public brp(Context paramContext)
  {
    super(paramContext, 2130903274);
  }

  private static int a(List<ms> paramList, int paramInt)
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < paramList.size())
    {
      if (((ms)paramList.get(i1)).e.type == paramInt)
        i2++;
      i1++;
    }
    return i2;
  }

  private void a(Context paramContext, VirusUpdateInfo paramVirusUpdateInfo)
  {
    if (paramVirusUpdateInfo == null)
      return;
    this.N = false;
    String str1 = paramContext.getString(2131428062);
    String str2;
    switch (paramVirusUpdateInfo.level)
    {
    default:
      str2 = paramContext.getString(2131429498);
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      while (true)
      {
        String str3 = paramContext.getString(2131428063);
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = paramVirusUpdateInfo.version;
        arrayOfObject[1] = paramVirusUpdateInfo.newestvirus;
        arrayOfObject[2] = str2;
        arrayOfObject[3] = paramVirusUpdateInfo.description;
        String str4 = String.format(str3, arrayOfObject);
        Dialog localDialog = new Dialog(paramContext);
        localDialog.setTitle(str1);
        localDialog.setMessage(str4);
        localDialog.setPositiveButton(2131429925, new brx(this, localDialog), 1);
        localDialog.setNeutralButton(2131427379, new brz(localDialog), 2);
        localDialog.setOnCancelListener(new bsa(localDialog));
        try
        {
          localDialog.show();
        }
        catch (Exception localException)
        {
          localException.getMessage();
        }
      }
      break;
      str2 = paramContext.getString(2131429498);
      continue;
      str2 = paramContext.getString(2131429497);
      continue;
      str2 = paramContext.getString(2131429496);
    }
  }

  private void a(brp.a parama)
  {
    String str = "";
    switch (brp.1.a[parama.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      this.e.setText(str);
      return;
      str = this.mContext.getString(2131428013);
      continue;
      str = this.mContext.getString(2131428035);
      continue;
      str = this.mContext.getString(2131428036);
      continue;
      str = this.mContext.getString(2131429006);
      continue;
      str = this.mContext.getString(2131428533);
      this.E.a(acr.c.e);
    }
  }

  private void a(String paramString1, String paramString2, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("MESSAGE", paramString2);
    localBundle.putInt("SAVE_ICON", b(paramInt));
    Message localMessage = this.L.obtainMessage(15);
    localMessage.setData(localBundle);
    Drawable localDrawable1;
    String str;
    int i1;
    if (paramString1 != null)
    {
      AppEntity localAppEntity2 = this.x.getAppInfo(paramString1, 4);
      if (localAppEntity2 != null)
      {
        localDrawable1 = localAppEntity2.getIcon();
        str = null;
        i1 = 0;
        if (localDrawable1 != null)
        {
          i1 = 2;
          str = paramString1;
        }
      }
    }
    while (true)
    {
      int i2;
      if (localDrawable1 == null)
      {
        AppEntity localAppEntity1 = this.x.getApkInfo(paramString2, 4);
        if (localAppEntity1 != null)
          localDrawable1 = localAppEntity1.getIcon();
        if (localDrawable1 != null)
          i2 = 3;
      }
      for (Drawable localDrawable2 = localDrawable1; ; localDrawable2 = localDrawable1)
      {
        localBundle.putInt("MESSAGE_DRAWABLE_TYPE", i2);
        localBundle.putString("MESSAGE_DRAWABLE_VALUE", paramString2);
        localMessage.obj = localDrawable2;
        localMessage.sendToTarget();
        return;
        paramString2 = str;
        i2 = i1;
      }
      localDrawable1 = null;
      break;
      str = null;
      i1 = 0;
      localDrawable1 = null;
    }
  }

  private void a(List<ms> paramList, boolean paramBoolean)
  {
    this.H = paramList;
    this.I.clear();
    this.Q.clear();
    this.R.clear();
    this.F.b = 1;
    mu localmu1 = this.F;
    String str;
    Iterator localIterator;
    if (this.F.d > 0)
    {
      str = this.mContext.getString(2131428549);
      localmu1.h = str;
      this.F.i = paramList;
      localIterator = paramList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        break label348;
      ms localms = (ms)localIterator.next();
      switch (localms.e.type)
      {
      default:
        break;
      case 2:
        mu localmu5 = this.F;
        localmu5.g = (1 + localmu5.g);
        this.R.add(localms);
        continue;
        if (this.F.g > 0)
        {
          str = this.mContext.getString(2131428550);
          break;
        }
        if (this.F.e > 0)
        {
          str = this.mContext.getString(2131428554 + (2131428559 + this.F.e));
          break;
        }
        if (this.E.f())
        {
          str = this.mContext.getString(2131428551);
          break;
        }
        if (this.J == acr.a.a)
        {
          str = this.mContext.getString(2131428552);
          break;
        }
        str = this.mContext.getString(2131428553);
        break;
      case 3:
      case 8:
        mu localmu4 = this.F;
        localmu4.d = (1 + localmu4.d);
        this.Q.add(localms);
      }
    }
    label348: this.F.f = paramList.size();
    if (paramBoolean)
    {
      mu localmu2 = this.F;
      mu localmu3 = new mu();
      localmu3.c = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(new Date().getTime()));
      localmu3.g = localmu2.g;
      localmu3.e = localmu2.e;
      localmu3.d = localmu2.d;
      localmu3.f = localmu2.f;
      this.B = f.e();
      long l1 = this.B.a(localmu3);
      if (localmu2.i.size() > 0)
        this.B.a(localmu2.i, l1);
      this.F.a = l1;
    }
    this.v = new amh(this.mContext, this, e());
    this.v.setDataList(e());
    this.v.notifyDataSetChanged();
    this.u.setAdapter(this.v);
    this.u.setOnScrollListener(this.v);
  }

  private void a(ms paramms)
  {
    paramms.b = 1;
    this.H.remove(paramms);
    this.I.add(paramms);
    this.F.e = this.I.size();
    this.F.f = this.H.size();
  }

  private void a(boolean paramBoolean)
  {
    if (this.K == 0)
      this.K = this.s.getHeight();
    float f1;
    if (paramBoolean)
    {
      this.p.setText(b(this.mContext.getString(2131428015), 0, 0));
      this.l.setBackgroundResource(2130838156);
      this.o.setVisibility(0);
      this.q.setVisibility(8);
      this.u.setVisibility(8);
      if (!paramBoolean)
        break label152;
      f1 = 0.0F;
      label86: if (!paramBoolean)
        break label161;
    }
    label152: label161: for (float f2 = this.K; ; f2 = 0.0F)
    {
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, f1, f2);
      localTranslateAnimation.setDuration(500L);
      localTranslateAnimation.setAnimationListener(new brr(this, paramBoolean));
      this.s.startAnimation(localTranslateAnimation);
      return;
      this.s.setVisibility(0);
      break;
      f1 = this.K;
      break label86;
    }
  }

  private static int b(int paramInt)
  {
    int i1;
    switch (paramInt)
    {
    default:
      i1 = -1;
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return i1;
      i1 = 2130837906;
      continue;
      i1 = 2130837904;
      continue;
      i1 = 2130837907;
    }
  }

  private static SpannableStringBuilder b(String paramString, int paramInt1, int paramInt2)
  {
    int i1 = -65536;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    String str1 = String.format(paramString, arrayOfObject);
    String str2 = String.valueOf(paramInt1);
    String str3 = String.valueOf(paramInt2);
    int i2 = str1.indexOf(str2);
    int i3 = str1.indexOf(str3, i2 + str2.length());
    int i4;
    if (paramInt1 > 0)
    {
      i4 = i1;
      if (paramInt2 <= 0)
        break label156;
    }
    while (true)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str1);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i2, i2 + str2.length(), 34);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i1), i3, i3 + str3.length(), 34);
      return localSpannableStringBuilder;
      i4 = -16777216;
      break;
      label156: i1 = -16777216;
    }
  }

  private void d()
  {
    findViewById(2131231475).setVisibility(0);
    this.s.setVisibility(0);
    this.o.setVisibility(8);
    this.q.setVisibility(8);
    this.h.setVisibility(8);
    this.u.setVisibility(8);
    a(brp.a.a);
    this.e.setButtonByType(1);
    this.e.setVisibility(0);
    this.f.setVisibility(8);
    this.c.setVisibility(8);
    this.j.setVisibility(0);
    this.I.clear();
    this.H.clear();
    this.g.setEnabled(true);
    this.L.sendEmptyMessage(12);
    this.L.sendEmptyMessage(11);
  }

  private List<ListModel<ms>> e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.Q, this.mContext.getString(2131428050), 0));
    localArrayList.add(new ListModel(this.R, this.mContext.getString(2131428051), 0));
    return localArrayList;
  }

  private void f()
  {
    this.L.removeMessages(8);
    this.L.removeMessages(5);
    this.i.clearAnimation();
    this.d.stopAnimation();
    if (this.i.isShown())
      this.i.setVisibility(8);
    if (this.U)
    {
      this.U = false;
      System.currentTimeMillis();
      new hd();
    }
  }

  private void g()
  {
    jl localjl = new jl(this.mContext);
    mu localmu = this.F;
    ContentValues localContentValues1 = new ContentValues();
    localContentValues1.put("riskFound", Integer.valueOf(localmu.g));
    localContentValues1.put("virusCured", Integer.valueOf(localmu.e));
    localContentValues1.put("virusFound", Integer.valueOf(localmu.d));
    localContentValues1.put("waitingDealing", Integer.valueOf(localmu.f));
    localjl.a.a("virus_record", localContentValues1, "id = " + localmu.a, null);
    localjl.a.b();
    for (int i1 = 0; i1 < this.I.size(); i1++)
    {
      ms localms = (ms)this.I.get(i1);
      ContentValues localContentValues2 = new ContentValues();
      localContentValues2.put("appName", localms.e.softName);
      localContentValues2.put("featureName", localms.e.name);
      localContentValues2.put("pkgName", localms.e.packageName);
      localContentValues2.put("riskInfo", localms.e.discription);
      localContentValues2.put("state", Integer.valueOf(localms.b));
      localContentValues2.put("type", Integer.valueOf(localms.e.type));
      localContentValues2.put("handled", Integer.valueOf(localms.c));
      localContentValues2.put("handleResult", Integer.valueOf(localms.d));
      localjl.a.a("virus_result", localContentValues2, "id = " + localms.a, null);
      localjl.a.b();
    }
  }

  public final void a(List<ms> paramList)
  {
    if (this.C == null)
      this.C = new acj(this.mContext);
    if (this.D == null)
    {
      this.D = new brw(this);
      this.C.a(this.D);
    }
    this.C.a(paramList);
  }

  public final boolean a()
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.E.e())
      if (!this.g.isEnabled())
      {
        bool2 = bool1;
        if (bool2)
          break label35;
      }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label35: bool1 = false;
    }
  }

  public final void b()
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(this.mContext.getString(2131428561));
    localDialog.setMessage(this.mContext.getString(2131428562));
    localDialog.setPositiveButton(2131427827, new bru(this, localDialog), 2);
    localDialog.setNegativeButton(2131427828, new brv(localDialog), 1);
    localDialog.show();
  }

  public final PinnedHeaderListView c()
  {
    return this.u;
  }

  public final void onBackClick()
  {
    int i1 = 1;
    int i2;
    if (this.E.e())
      if (!this.g.isEnabled())
      {
        i2 = i1;
        if (i2 != 0)
          break label45;
        label30: if (i1 == 0)
          break label50;
        b();
      }
    while (true)
    {
      return;
      i2 = 0;
      break;
      label45: i1 = 0;
      break label30;
      label50: Intent localIntent = getActivity().getIntent();
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
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = true;
    if (paramView == this.e)
      if (this.E.g())
      {
        this.J = acr.a.a;
        a(bool1);
        this.T = bool1;
        this.S = System.currentTimeMillis();
        this.U = bool1;
        nd.a().a(26068);
      }
    label82: label104: label109: 
    do
      while (true)
      {
        return;
        boolean bool2;
        if (this.E.e())
          if (!this.g.isEnabled())
          {
            bool2 = bool1;
            if (bool2)
              break label104;
          }
        while (true)
        {
          if (!bool1)
            break label109;
          b();
          break;
          bool2 = false;
          break label82;
          bool1 = false;
        }
        a(false);
        continue;
        if (paramView != this.f)
          break;
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = this.H.iterator();
        while (localIterator.hasNext())
        {
          ms localms = (ms)localIterator.next();
          if ((localms.e.type == 3) || (localms.e.type == 8))
            localArrayList.add(localms);
        }
        a(localArrayList);
      }
    while ((paramView != this.g) || (!this.E.e()));
    nd localnd = nd.a();
    if (this.J == acr.a.a)
      localnd.a(26239);
    while (true)
    {
      this.E.c();
      this.g.setEnabled(false);
      break;
      if (this.J == acr.a.b)
        localnd.a(26240);
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.i = ((ImageView)findViewById(2131231474));
    this.r = AnimationUtils.loadAnimation(this.mContext, 2130968605);
    this.o = ((LinearLayout)findViewById(2131231485));
    this.h = ((ListView)findViewById(2131231489));
    this.G = new ArrayList();
    this.w = new MainResultAdapter(this.mContext, this.h, this.G, getImageLoaderService());
    this.w.setmTitleEllipsize(TextUtils.TruncateAt.MIDDLE);
    this.h.setAdapter(this.w);
    this.q = ((TextView)findViewById(2131231490));
    this.u = ((PinnedHeaderListView)findViewById(2131231292));
    View localView = LayoutInflater.from(this.mContext).inflate(2130903316, this.u, false);
    ((TextView)localView.findViewById(2131231606)).setTextColor(-65536);
    this.u.setPinnedHeaderView(localView);
    this.u.setOnScrollListener(this.v);
    this.u.setOnItemClickListener(this);
    this.s = ((LinearLayout)findViewById(2131231491));
    this.W = new TabAdapter(this.mContext, 6, 4);
    this.t = ((ListView)findViewById(2131231492));
    this.t.setAdapter(this.W);
    this.t.setOnItemClickListener(this);
    this.j = ((ImageView)findViewById(2131231476));
    this.k = ((TextView)findViewById(2131231477));
    this.m = ((TextView)findViewById(2131231478));
    this.n = ((TextView)findViewById(2131231479));
    this.c = ((FrameLayout)findViewById(2131231337));
    this.b = ((TextView)findViewById(2131231276));
    this.d = ((ProgressBarView)findViewById(2131231480));
    this.g = ((ButtonView)findViewById(2131231481));
    this.e = ((ButtonView)findViewById(2131231484));
    this.f = ((ButtonView)findViewById(2131231483));
    this.g.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.l = ((LinearLayout)findViewById(2131231486));
    this.p = ((TextView)findViewById(2131231487));
    this.x = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.z = f.d();
    this.y = ho.a();
    this.E = new acr(this.mContext);
    this.E.a(new acr.d(this));
    this.L = new brq(this);
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26059);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onDestroy()
  {
    if (this.C != null)
      this.C.a();
    this.E.i();
    this.L.removeMessages(4);
    this.E.b();
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    nd localnd = nd.a();
    switch (((TabModel)this.W.getDataList().get(paramInt)).getID())
    {
    default:
    case 45:
    case 46:
    case 47:
    }
    while (true)
    {
      return;
      localnd.a(26069);
      this.J = acr.a.b;
      if (this.E.g())
      {
        a(true);
        this.T = false;
        this.S = System.currentTimeMillis();
        this.U = true;
        continue;
        int i2;
        if (this.E.e())
          if (!this.g.isEnabled())
          {
            i2 = 1;
            label126: if (i2 != 0)
              break label152;
          }
        label152: for (int i1 = 1; ; i1 = 0)
        {
          if (i1 == 0)
            break label158;
          b();
          break;
          i2 = 0;
          break label126;
        }
        label158: localnd.a(26070);
        if (this.A == null)
        {
          this.A = new sq(this.mContext);
          this.A.a(new brt(this));
        }
        this.A.c();
        continue;
        localnd.a(26197);
        Intent localIntent = new Intent(this.mContext, ProfessionalKillerListActivity.class);
        this.mContext.startActivity(localIntent);
        new jk(QQPimApplication.a()).c();
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    nd localnd = nd.a();
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      localnd.a(26071);
      Intent localIntent2 = new Intent(this.mContext, VirusScanRecordListActivity.class);
      this.mContext.startActivity(localIntent2);
      continue;
      localnd.a(26238);
      Intent localIntent1 = new Intent(this.mContext, VirusScheduleScanActivity.class);
      this.mContext.startActivity(localIntent1);
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 40:
    }
    while (true)
    {
      return true;
      boolean bool = this.E.e();
      int i1 = 0;
      if (bool)
        if (this.g.isEnabled())
          break label73;
      label73: for (int i2 = 1; ; i2 = 0)
      {
        i1 = 0;
        if (i2 == 0)
          i1 = 1;
        if (i1 == 0)
          break label79;
        b();
        break;
      }
      label79: nd.a().a(26070);
      if (this.A == null)
      {
        this.A = new sq(this.mContext);
        this.A.a(new brt(this));
      }
      this.A.c();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    Intent localIntent = ((Activity)this.mContext).getIntent();
    int i1;
    if (localIntent != null)
      if ((localIntent.getBooleanExtra("AUTO_SCAN", false)) || ("com.tencent.action.virus_scan".equals(localIntent.getAction())))
      {
        if (this.E.e())
          break label299;
        this.e.performClick();
        i1 = 1;
        localIntent.removeExtra("AUTO_SCAN");
        localIntent.removeExtra("data");
        localIntent.removeExtra("update_data");
      }
    while (true)
    {
      if ((i1 == 0) && (!this.E.e()))
      {
        if ((this.H.size() <= 0) && (this.I.size() <= 0))
          break label304;
        this.L.sendEmptyMessage(10);
      }
      while (true)
      {
        return;
        if (localIntent.getSerializableExtra("data") != null)
        {
          if (this.E.e())
          {
            f();
            this.E.c();
            this.E.b();
            d();
          }
          this.F = ((mu)localIntent.getSerializableExtra("data"));
          a(this.F.i, false);
          this.E.a(acr.c.e);
          this.L.sendEmptyMessage(10);
          i1 = 1;
          break;
        }
        if (localIntent.getSerializableExtra("update_data") != null)
        {
          this.O = ((VirusUpdateInfo)localIntent.getSerializableExtra("update_data"));
          if (this.O != null)
          {
            if (this.E.e())
            {
              ha.b(this.mContext, 2131428018);
              this.N = true;
              i1 = 0;
              break;
            }
            a(this.mContext, this.O);
          }
        }
        label299: i1 = 0;
        break;
        label304: this.L.sendEmptyMessage(12);
        this.L.sendEmptyMessageDelayed(11, 1000L);
      }
      i1 = 0;
    }
  }

  public final void onShowPopOptionMenu()
  {
    super.onShowPopOptionMenu();
    nd.a().a(26237);
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427440);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    if (this.a == null)
    {
      this.a = new ArrayList(3);
      TabModel localTabModel1 = new TabModel(1, 0, this.mContext.getResources().getDrawable(2130837966), null, this.mContext.getString(2131428019));
      this.a.add(localTabModel1);
      TabModel localTabModel2 = new TabModel(2, 0, this.mContext.getResources().getDrawable(2130838280), null, this.mContext.getString(2131428045));
      this.a.add(localTabModel2);
    }
    paramFrameworkTemplateUI.setOptionButtonPopStyle(this.a);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  static enum a
  {
    static
    {
      a[] arrayOfa = new a[5];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
      arrayOfa[4] = e;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brp
 * JD-Core Version:    0.6.2
 */