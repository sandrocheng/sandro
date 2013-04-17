import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.market.SearchCenterView;
import com.tencent.qqpimsecure.view.market.SearchLinearLayout;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.WifiUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Stack;

public class ayp extends BaseView
  implements TextWatcher, View.OnClickListener, AdapterView.OnItemClickListener, IRetryListener
{
  private ho A;
  private LinearLayout B;
  private List<kv> C = new ArrayList();
  private Thread D;
  private BaseServiceConnection E = new BaseServiceConnection(ayp.class);
  private DialogInterface.OnCancelListener F = new ayv(this);
  private boolean G;
  private long H = 0L;
  private kv I;
  private SoftwareManager J;
  private DownloadServiceBinder K;
  private Handler L = new ayw(this);
  private NetworkLoadTaskListener M = new ayx(this);
  public Stack<Integer> a = new Stack();
  protected Dialog b;
  public Handler c = new ayr(this);
  private int d = 0;
  private boolean e = true;
  private RelativeLayout f;
  private SearchCenterView g;
  private EditText h;
  private ImageButton i;
  private ArrayList<String> j;
  private ArrayList<String> k;
  private String l;
  private ArrayList<String> m;
  private ArrayList<String> n;
  private int o;
  private ButtonView p;
  private ImageButton q;
  private aib r;
  private ajx s;
  private PinnedHeaderListView t;
  private PinnedHeaderListView u;
  private RelativeLayout v;
  private String w = "history_list";
  private String x = "found_list";
  private int y = 0;
  private kc z;

  public ayp(Context paramContext)
  {
    super(paramContext, 2130903243);
  }

  private static void d(ArrayList<String> paramArrayList)
  {
    int i1;
    if (paramArrayList != null)
    {
      i1 = paramArrayList.size();
      if (i1 != 0)
        break label14;
    }
    while (true)
    {
      return;
      label14: ArrayList localArrayList = new ArrayList(paramArrayList);
      int[] arrayOfInt = new int[i1];
      Random localRandom = new Random();
      int i2 = 0;
      if (i2 < i1)
      {
        int i4 = localRandom.nextInt(i1);
        if (arrayOfInt[i4] != 0)
          i2--;
        while (true)
        {
          i2++;
          break;
          arrayOfInt[i4] = i2;
        }
      }
      for (int i3 = 0; i3 < i1; i3++)
        paramArrayList.set(i3, localArrayList.get(arrayOfInt[i3]));
    }
  }

  private void g(kv paramkv)
  {
    switch (this.J.getAppVersionStatus(paramkv.d.getPackageName(), paramkv.d.D()))
    {
    default:
    case 1:
    case 0:
    case 2:
    case -1:
    }
    while (true)
    {
      return;
      if ((paramkv.mState == -2) || (paramkv.mState == 4))
      {
        paramkv.mState = -4;
        continue;
        paramkv.mState = -3;
        continue;
        if (paramkv.mState == -3)
          paramkv.mState = 3;
      }
    }
  }

  private void k()
  {
    this.f.setVisibility(0);
    this.g.c().setVisibility(4);
    this.B.setVisibility(0);
    this.u.setVisibility(8);
    this.v.setVisibility(8);
  }

  private List<ListModel<kv>> l()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.C, this.mContext.getString(2131427518), 0));
    return localArrayList;
  }

  private void m()
  {
    this.n.clear();
    if (this.m.size() <= 0);
    while (true)
    {
      return;
      int i1 = -1 + this.m.size();
      for (int i2 = 0; i2 < 10; i2++)
      {
        ArrayList localArrayList1 = this.n;
        ArrayList localArrayList2 = this.m;
        int i3 = this.o;
        this.o = (i3 + 1);
        localArrayList1.add(localArrayList2.get(i3));
        if (this.o > i1)
          this.o = 0;
      }
    }
  }

  private boolean n()
  {
    boolean bool = false;
    int i1;
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      i1 = 1;
      if (i1 != 1)
        break label56;
      ha.b(this.mContext, this.mContext.getString(2131429514));
    }
    while (true)
    {
      return bool;
      if (!a.b())
      {
        i1 = 2;
        break;
      }
      i1 = 0;
      break;
      label56: if (i1 == 2)
      {
        ha.b(this.mContext, this.mContext.getString(2131429517));
        bool = false;
      }
      else
      {
        bool = true;
      }
    }
  }

  private void o()
  {
    if ((this.C == null) || (this.C.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList(this.C);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
        g((kv)localIterator.next());
      this.C = localArrayList;
    }
  }

  protected final DownloadServiceBinder a()
  {
    return this.K;
  }

  public final void a(int paramInt)
  {
    a.a((Activity)this.mContext, paramInt, this);
  }

  public final void a(String paramString)
  {
    this.h.setText(paramString);
  }

  protected final void a(List<kv> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kv localkv = (kv)localIterator.next();
      localkv.mState = -2;
      localkv.mProgress = 0.0F;
      g(localkv);
    }
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  protected final void a(kv paramkv)
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
    if (paramkv.mErrorCode == -1063)
      a.b(getContext(), WifiUtil.sRedirectLocation);
  }

  public void afterTextChanged(Editable paramEditable)
  {
    this.r.a(this.k);
    this.r.notifyDataSetChanged();
    if (paramEditable.length() == 0)
    {
      this.q.setVisibility(4);
      k();
      if (this.a.size() > 1)
        this.a.remove(-1 + this.a.size());
    }
    while (true)
    {
      return;
      this.q.setVisibility(0);
      this.h.setSelection(paramEditable.length());
    }
  }

  public final void b()
  {
    ArrayList localArrayList = this.r.a();
    for (int i1 = 0; i1 < localArrayList.size(); i1++)
    {
      this.j.remove(localArrayList.get(i1));
      this.z.a((String)localArrayList.get(i1));
    }
    this.r.b();
  }

  public final void b(String paramString)
  {
    for (int i1 = 0; (i1 < this.j.size()) && (!((String)this.j.get(i1)).equals(paramString)); i1++);
    if (i1 == this.j.size());
    for (int i2 = 0; ; i2 = 1)
    {
      if (i2 != 0)
        this.z.a(paramString);
      if (this.j.contains(paramString))
        this.j.remove(paramString);
      mj localmj = new mj();
      localmj.a = paramString;
      kc localkc = this.z;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("body", localmj.a);
      localkc.a.a(localkc.b, "id", localContentValues);
      localkc.a.b();
      this.j.add(0, localmj.a);
      return;
    }
  }

  protected final void b(kv paramkv)
  {
    paramkv.mState = -2;
    paramkv.mProgress = 0.0F;
    g(paramkv);
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.u.setVisibility(8);
    this.v.setVisibility(8);
    this.t.setVisibility(0);
  }

  protected final void c()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public final void c(kv paramkv)
  {
    if (!n());
    while (true)
    {
      return;
      this.K.startTask(paramkv);
      ha.a(this.mContext, 2131427824);
    }
  }

  protected final void d()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public final void d(kv paramkv)
  {
    if (!n());
    while (true)
    {
      return;
      this.K.continueTask(paramkv);
      ha.a(this.mContext, 2131427824);
    }
  }

  protected final void e()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public final void e(kv paramkv)
  {
    File localFile = of.d(paramkv);
    if ((localFile != null) && (localFile.exists()));
    while (true)
    {
      try
      {
        this.J.installApp(localFile);
        return;
      }
      catch (Exception localException)
      {
        ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        continue;
      }
      ha.b(this.mContext, 2131429518);
    }
  }

  protected final void f()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public final void f(kv paramkv)
  {
    this.K.pauseTask(paramkv);
  }

  protected final void g()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  protected final void h()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  protected final void i()
  {
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public final void j()
  {
    if (this.t.isShown())
      this.t.setVisibility(8);
    while (true)
    {
      return;
      if (this.u.isShown())
        k();
      else
        getActivity().finish();
    }
  }

  public void onBackClick()
  {
    getActivity().finish();
  }

  public void onCancel()
  {
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131231301:
    case 2131231302:
    case 2131231303:
    default:
    case 2131231298:
    case 2131231299:
    case 2131231304:
    case 2131231300:
    }
    while (true)
    {
      return;
      String str2 = ((EditText)paramView).getText().toString();
      if ((str2 == null) || (str2.equals("")))
      {
        this.k.clear();
        this.k.addAll(this.j);
        this.r.a(this.k);
        this.r.notifyDataSetChanged();
        this.t.setVisibility(0);
        continue;
        String str1 = this.h.getText().toString();
        if (str1.length() <= 0)
        {
          Toast.makeText(this.mContext, this.mContext.getText(2131427511), 0).show();
        }
        else
        {
          b(str1);
          this.c.sendEmptyMessage(-1);
          Message localMessage = new Message();
          localMessage.obj = str1;
          localMessage.what = 15;
          this.c.sendMessageDelayed(localMessage, 50L);
          continue;
          m();
          this.c.sendEmptyMessage(18);
          this.g.c().setVisibility(4);
          continue;
          this.h.setText("");
        }
      }
    }
  }

  protected void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public void onCreate()
  {
    super.onCreate();
    TMSService.startService(new of());
    this.K = ((DownloadServiceBinder)TMSService.bindService(of.class, this.E));
    this.J = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.z = new kc();
    this.A = ho.a();
    this.h = ((EditText)findViewById(2131231298));
    this.h.addTextChangedListener(this);
    this.h.setOnClickListener(this);
    this.i = ((ImageButton)findViewById(2131231299));
    this.i.setClickable(true);
    this.i.setOnClickListener(this);
    this.p = ((ButtonView)findViewById(2131231304));
    this.p.setOnClickListener(this);
    this.q = ((ImageButton)findViewById(2131231300));
    this.q.setOnClickListener(this);
    this.q.setVisibility(4);
    this.f = ((RelativeLayout)findViewById(2131231301));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    this.g = new SearchCenterView(this.mContext, this);
    this.g.b();
    this.f.addView(this.g, localLayoutParams);
    this.B = ((LinearLayout)findViewById(2131231303));
    this.t = ((PinnedHeaderListView)findViewById(2131231306));
    this.u = ((PinnedHeaderListView)findViewById(2131231305));
    this.v = ((RelativeLayout)findViewById(2131231307));
    this.j = new ArrayList();
    this.k = new ArrayList();
    kc localkc = this.z;
    String str = "SELECT * FROM " + localkc.b + " ORDER BY id DESC";
    Cursor localCursor = localkc.a.a(str);
    localCursor.moveToFirst();
    List localList = kc.a(localCursor);
    localkc.a.b();
    for (int i1 = 0; i1 < localList.size(); i1++)
      this.j.add(((mj)localList.get(i1)).a);
    this.t.setTag(this.w);
    this.r = new aib(this.mContext, this.k, this.t, this);
    this.t.setAdapter(this.r);
    this.t.setDivider(this.mContext.getResources().getDrawable(2130837925));
    this.t.setOnItemClickListener(this);
    this.t.setVisibility(8);
    this.u.setTag(this.x);
    this.u.setVisibility(8);
    this.s = new ajx(this, this.u, l());
    this.u.setAdapter(this.s);
    this.u.setOnItemClickListener(this);
    this.u.setPinnedHeaderView(LayoutInflater.from(this.mContext).inflate(2130903316, this.u, false));
    this.u.setOnScrollListener(this.s);
    this.v.setVisibility(8);
    this.m = new ArrayList();
    this.n = new ArrayList();
    this.o = 0;
    boolean bool = 86400000L + this.A.cR() < System.currentTimeMillis();
    int i2 = 0;
    if (bool)
      i2 = 1;
    if ((i2 != 0) || (this.A.bp() == null))
    {
      this.c.sendEmptyMessage(-1);
      this.c.sendEmptyMessageDelayed(16, 50L);
    }
    while (true)
    {
      ((SearchLinearLayout)getMainView()).setSearchCenterView(this.g);
      nd.a().a(26049);
      return;
      this.m = this.A.bp();
      d(this.m);
      m();
      this.c.sendEmptyMessage(17);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    TMSService.unBindService(of.class, this.E);
    this.E = null;
    if (of.a())
      TMSService.stopService(of.class);
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (((String)paramAdapterView.getTag()).equals(this.w))
    {
      String str = (String)this.k.get(paramInt);
      this.h.setText(str);
      this.t.setVisibility(8);
    }
    while (true)
    {
      return;
      if (((String)paramAdapterView.getTag()).equals(this.x))
      {
        kw localkw = ((kv)this.C.get(paramInt)).d;
        kv localkv = (kv)this.C.get(paramInt);
        if ((localkv.mState == -2) || (localkv.mState == -4))
        {
          of.a(localkv);
          this.I = localkv;
        }
        kw.a(getActivity(), localkw, 3000000, paramInt + 1);
      }
    }
  }

  public void onResume()
  {
    super.onResume();
    o();
    this.s.setDataList(l());
    this.s.notifyDataSetChanged();
    this.c.removeMessages(-2);
    this.c.sendEmptyMessage(-2);
  }

  public void onRetry()
  {
    if ((this.m != null) && (this.m.size() > 0))
    {
      Message localMessage2 = this.c.obtainMessage(-1);
      this.c.sendMessage(localMessage2);
      Message localMessage3 = this.c.obtainMessage(15);
      localMessage3.obj = this.l;
      this.c.sendMessage(localMessage3);
    }
    while (true)
    {
      return;
      Message localMessage1 = this.c.obtainMessage(16);
      this.c.sendMessageDelayed(localMessage1, 50L);
    }
  }

  public void onStart()
  {
    super.onStart();
    this.K.registListener(this.M);
    if (this.G)
    {
      this.G = false;
      o();
      this.s.setDataList(l());
      this.c.removeMessages(-2);
      this.c.sendEmptyMessage(-2);
    }
    if (this.I != null)
    {
      of.b(this.I);
      this.I = null;
    }
  }

  public void onStop()
  {
    super.onStop();
    this.K.unregistListener(this.M);
    this.G = true;
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str1 = paramCharSequence.toString();
    this.k.clear();
    if (str1.length() > 0)
      for (int i1 = 0; i1 < this.j.size(); i1++)
      {
        String str2 = (String)this.j.get(i1);
        String str3 = str1.toUpperCase();
        if (str2.toUpperCase().contains(str3))
          this.k.add(str2);
      }
    this.k.addAll(this.j);
    if (this.k.size() == 0)
      this.t.setVisibility(8);
  }

  public void refreshListData()
  {
    o();
    this.s.setDataList(l());
    this.s.notifyDataSetChanged();
  }

  protected void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429792);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayp
 * JD-Core Version:    0.6.2
 */