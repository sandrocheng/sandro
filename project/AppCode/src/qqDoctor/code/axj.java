import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.market.CategoryActivity;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.ui.activity.market.GameCategoryListActivity;
import com.tencent.qqpimsecure.ui.activity.market.RankingActivity;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareCategoryListActivity;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareSearchActivity;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareCenterActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.SingleFlingGallery;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;
import com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class axj extends bmd
  implements View.OnClickListener
{
  private ho b;
  private jt d;
  private SingleFlingGallery e;
  private LinearLayout f;
  private ImageView g;
  private ImageView h;
  private ImageView i;
  private ImageView j;
  private ajr k;
  private TextView l;
  private LinearLayout m;
  private Map<Integer, ku> n = new LinkedHashMap();
  private List<kw> o = new ArrayList();
  private Thread p;
  private int q = 1073741823;
  private boolean r = false;
  private long s = 4000L;
  private boolean t = false;
  private boolean u = true;
  private kv v;
  private AutoLoadingView w;
  private AutoLoadingView x;
  private Handler y = new Handler(new axk(this));
  private Handler z = new axu(this);

  public axj(Context paramContext)
  {
    super(paramContext);
  }

  private void h(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      Drawable localDrawable = a.b(dx.c + File.separator + localkw.getPackageName() + ".png.temp");
      if (localDrawable != null)
      {
        Map localMap = this.n;
        Integer localInteger = Integer.valueOf(localkw.h().hashCode());
        localkw.p();
        localMap.put(localInteger, new ku(localDrawable));
      }
      else
      {
        localArrayList.add(localkw);
      }
    }
    try
    {
      i(localArrayList);
      this.z.sendEmptyMessage(0);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void i(List<kw> paramList)
    throws Exception
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      lv locallv = new lv();
      locallv.b = 0;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.h();
      locallv.a = 2;
      locallv.i = new axv(this);
      getImageLoaderService().b(locallv);
    }
  }

  private static List<kw> j(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if (localkw.o() == 3)
        localArrayList.add(localkw);
    }
    return localArrayList;
  }

  private void j()
  {
    this.z.sendEmptyMessage(5);
    this.z.sendEmptyMessage(-3);
    MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
    RequestInfo localRequestInfo = new RequestInfo();
    localRequestInfo.type = 6;
    localRequestInfo.fetchOffset = 0;
    localRequestInfo.fetchSize = 1024;
    localMarketManager.fetchSpecialCategory(localRequestInfo, new axs(this));
    localMarketManager.fetchAdList(new axt(this));
  }

  private void k()
  {
    hideEmptyView();
    getListView().setVisibility(0);
    this.mDataList.clear();
    this.o.clear();
    f().setDataList(a());
    f().notifyDataSetChanged();
    setReloadData(true);
    this.t = true;
    this.mHandler.sendEmptyMessage(-1);
  }

  public final List<ListModel<kv>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 0, false));
    return localArrayList;
  }

  public final void a_()
  {
    g();
    this.mDataList = b(this.mDataList);
    f().setDataList(a());
  }

  public final BasePinnedListAdapter<kv> createAdapter()
  {
    setOnRefreshListener(new axq(this));
    return new ali(this, a());
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final View getDIYFrameLayout()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903171, null);
    this.g = ((ImageView)localView.findViewById(2131231110));
    this.h = ((ImageView)localView.findViewById(2131231111));
    this.i = ((ImageView)localView.findViewById(2131231112));
    this.j = ((ImageView)localView.findViewById(2131231113));
    this.g.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.j.setOnClickListener(this);
    return localView;
  }

  public final View getHeaderView()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903159, null);
    this.w = ((AutoLoadingView)localView.findViewById(2131230972));
    this.x = ((AutoLoadingView)localView.findViewById(2131230971));
    this.w.startRotationAnimation();
    this.x.startRotationAnimation();
    this.e = ((SingleFlingGallery)localView.findViewById(2131230956));
    this.l = ((TextView)localView.findViewById(2131231043));
    this.m = ((LinearLayout)localView.findViewById(2131231042));
    this.f = ((LinearLayout)localView.findViewById(2131231044));
    this.k = new ajr(this.mContext, this.n);
    this.e.setAdapter(this.k);
    this.e.setSensitivity(0.4F);
    this.e.setSpacing(1);
    this.e.setOnItemClickListener(new axl(this));
    this.e.setOnItemSelectedListener(new axm(this));
    this.e.setOnTouchListener(new axn(this));
    this.e.setSelection(this.q);
    return localView;
  }

  public final void loadDataList()
  {
    this.mDataList.clear();
    long l1 = this.b.br();
    if ((System.currentTimeMillis() - l1 < this.b.bq()) && (!this.t))
    {
      jt localjt = this.d;
      List localList1 = localjt.a(localjt.b, null, null, "id ASC");
      if ((localList1 != null) && (localList1.size() > 0))
      {
        List localList2 = this.mDataList;
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList1.iterator();
        while (localIterator.hasNext())
        {
          kw localkw = (kw)localIterator.next();
          if (localkw.o() != 3)
            localArrayList.add(localkw);
        }
        localList2.addAll(a.a(localArrayList, this.a, 6));
        this.o = j(localList1);
        h(this.o);
        Message localMessage = new Message();
        localMessage.what = 1;
        localMessage.arg1 = 0;
        this.z.sendMessage(localMessage);
        a_();
        h();
      }
    }
    while (true)
    {
      return;
      j();
      continue;
      j();
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
    int i1 = paramView.getId();
    int i2 = 0;
    Intent localIntent = null;
    switch (i1)
    {
    default:
    case 2131231110:
    case 2131231111:
    case 2131231112:
    case 2131231113:
    }
    while (true)
    {
      nd.a().a(i2);
      getActivity().startActivity(localIntent);
      return;
      i2 = 26200;
      localIntent = new Intent(this.mContext, RankingActivity.class);
      continue;
      i2 = 26047;
      localIntent = new Intent(this.mContext, CategoryActivity.class);
      continue;
      i2 = 26201;
      localIntent = new Intent(this.mContext, GameCategoryListActivity.class);
      continue;
      i2 = 26156;
      localIntent = new Intent(this.mContext, SoftwareCategoryListActivity.class);
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mEmptyTemplateType = 1;
  }

  public final void onCreate()
  {
    super.onCreate();
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26231);
    this.b = ho.a();
    this.d = new jt();
    this.p = new axp(this);
    this.p.start();
    this.mHandler.sendEmptyMessage(-1);
    if (is.a(QQPimApplication.a()).b.getBoolean("has_not_see_wek", false))
    {
      ov.a().a(25);
      WeekRecDialog.a(this.mContext);
    }
    this.dIYAddLayout.setVisibility(4);
    getListView().setDivider(null);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1 = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
    if ((isHasRefreshHeader()) && (i1 <= 1));
    while (true)
    {
      return;
      if ((isHasRefreshHeader()) || (i1 != 0))
      {
        kv localkv = (kv)getDataList().get(i1 - 1);
        int i2 = localkv.mState;
        if ((i2 == 0) || (i2 == 1) || (i2 == -1) || (i2 == 2))
        {
          ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
          ArrayList localArrayList = new ArrayList();
          localContextMenuDialog.setContextItemPosition(i1);
          ContextMenuModel localContextMenuModel = new ContextMenuModel();
          localContextMenuModel.name = this.mContext.getString(2131428331);
          localContextMenuModel.eventCode = 10;
          localArrayList.add(localContextMenuModel);
          localContextMenuDialog.setDataAdapter(localArrayList);
          localContextMenuDialog.setOnItemClickListener(new axw(this, localContextMenuDialog));
          localContextMenuDialog.setTitle(localkv.d.getAppName());
          localContextMenuDialog.show();
        }
      }
    }
  }

  public final void onDestroy()
  {
    this.u = false;
    this.z.sendEmptyMessage(4);
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isHasRefreshHeader())
      paramInt--;
    if (paramInt == 0)
      return;
    kv localkv = (kv)getDataList().get(paramInt - 1);
    if (localkv.d.o() == 1)
      nd.a().a(12);
    if ((localkv.mState == -2) || (localkv.mState == -4))
    {
      of.a(localkv);
      this.v = localkv;
    }
    kw localkw = localkv.d;
    if (localkv.d.o() == 3);
    for (int i1 = 2000003; ; i1 = 2000001)
    {
      a(localkw, i1);
      break;
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, SoftwareSearchActivity.class);
    this.mContext.startActivity(localIntent);
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, SoftwareSearchActivity.class);
    getActivity().startActivity(localIntent);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 69:
    case 44:
    case 54:
    }
    while (true)
    {
      return true;
      this.mContext.startActivity(new Intent(this.mContext, SoftwareCenterActivity.class));
      nd.a().a(26152);
      continue;
      k();
      continue;
      this.mContext.startActivity(new Intent(this.mContext, DownloadManagerActivity.class));
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null)
    {
      if (paramMenu.findItem(69) == null)
        paramMenu.add(0, 69, 0, QQPimApplication.a().getResources().getString(2131427878)).setIcon(2130838018);
      if (paramMenu.findItem(44) == null)
        paramMenu.add(0, 44, 3, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
      a.d(paramMenu);
    }
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if ((this.mDataList.size() > 0) || (!isReloadData()))
    {
      g();
      this.mDataList = b(this.mDataList);
      f().setDataList(a());
      h();
    }
    while (true)
    {
      nd.a().a(10);
      getListView().setHeaderDividersEnabled(false);
      getListView().setOnScrollListener(new axr(this));
      return;
      if (this.t)
        startLoading();
    }
  }

  public final void onRetry()
  {
    setReloadData(true);
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onStart()
  {
    super.onStart();
    if (this.v != null)
    {
      of.b(this.v);
      this.v = null;
    }
    a.a(this, 2131427329);
  }

  public final void refreshListData()
  {
    f().notifyDataSetChanged();
    setReloadData(false);
    this.t = false;
    if (isHasRefreshHeader())
      getListView().onRefreshComplete();
    if ((this.mDataList == null) || (this.mDataList.size() <= 0))
    {
      setEmptyImage(2130838379);
      if (getListView() != null)
        getListView().setVisibility(4);
      if ((getFrameworkTemplateUI() != null) && (getFrameworkTemplateUI().getEmptyTemplateUI() != null) && (getFrameworkTemplateUI().getEmptyTemplateUI().getCenterImage() != null))
        getFrameworkTemplateUI().getEmptyTemplateUI().getCenterImage().setOnClickListener(new axo(this));
    }
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if ((getActivity().getIntent() == null) || (!getActivity().getIntent().getBooleanExtra("come_from", false)))
      paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131427983);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)19);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axj
 * JD-Core Version:    0.6.2
 */