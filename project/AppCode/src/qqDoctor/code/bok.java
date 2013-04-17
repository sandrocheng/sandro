import QQPIM.ConnectType;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.ui.activity.market.MarketActivity;
import com.tencent.qqpimsecure.ui.activity.software.IgnoreUpdateSoftwareActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareCenterActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.utils.NetworkUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class bok extends bmd
{
  private jt b;
  private String d;
  private String e;
  private String f;
  private boolean g = false;
  private boolean h;
  private boolean i;
  private ij j;
  private View.OnClickListener k = new boo(this);
  private View.OnClickListener l = new bop(this);
  private View.OnClickListener m = new boq(this);

  public bok(Context paramContext)
  {
    super(paramContext);
  }

  private void a(String paramString, int paramInt1, int paramInt2)
  {
    OperatingModel localOperatingModel = (OperatingModel)getOperatingBarDataList().get(0);
    if (!paramString.equals(localOperatingModel.getText()))
    {
      localOperatingModel.setText(paramString);
      localOperatingModel.setStyle(paramInt2);
    }
    localOperatingModel.setNumber(paramInt1);
    refreshOperatingBar(localOperatingModel);
  }

  private int j()
  {
    Iterator localIterator = this.mDataList.iterator();
    int n = 0;
    if (localIterator.hasNext())
      if (((kv)localIterator.next()).mState == -3)
        break label49;
    label49: for (int i1 = n + 1; ; i1 = n)
    {
      n = i1;
      break;
      return n;
    }
  }

  private void k()
  {
    this.i = false;
    hideEmptyView();
    getListView().setVisibility(0);
    synchronized (this.mDataList)
    {
      this.mDataList.clear();
      this.g = true;
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
  }

  public final List<ListModel<kv>> a()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    List localList1 = this.mDataList;
    int n = 0;
    while (n < localList1.size())
    {
      kv localkv = (kv)localList1.get(n);
      if (localkv.mState == -3)
      {
        localList1.remove(n);
      }
      else
      {
        n++;
        if (localkv.d.isSystemApp())
          localArrayList2.add(localkv);
        else
          localArrayList1.add(localkv);
      }
    }
    synchronized (this.mDataList)
    {
      this.mDataList.clear();
      this.mDataList.addAll(localArrayList1);
      this.mDataList.addAll(localArrayList2);
      ArrayList localArrayList3 = new ArrayList();
      localArrayList3.add(new ListModel(localArrayList1, this.mContext.getString(2131428116), 0));
      localArrayList3.add(new ListModel(localArrayList2, this.mContext.getString(2131428117), 0));
      return localArrayList3;
    }
  }

  public final void a(Intent paramIntent)
  {
    super.a(paramIntent);
    this.mHandler.sendEmptyMessage(1);
  }

  protected final void a(List<kv> paramList)
  {
    this.mHandler.sendEmptyMessage(0);
    super.a(paramList);
  }

  public final void a_()
  {
    g();
    ((alu)super.f()).notifyDataSetChanged();
  }

  public final int b()
  {
    return 2;
  }

  public final void b(Intent paramIntent)
  {
    super.b(paramIntent);
    int n = paramIntent.getIntExtra("extra_error_code", 0);
    a.a((Activity)this.mContext, n, this);
    this.i = true;
    if (getListView() != null)
      getListView().setVisibility(4);
    setEmptyImage(2130838379);
    if ((getFrameworkTemplateUI() != null) && (getFrameworkTemplateUI().getEmptyTemplateUI() != null) && (getFrameworkTemplateUI().getEmptyTemplateUI().getCenterImage() != null))
      getFrameworkTemplateUI().getEmptyTemplateUI().getCenterImage().setOnClickListener(new bon(this));
  }

  protected final void b(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.b(paramkv);
  }

  protected final void c(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.c(paramkv);
  }

  public final BasePinnedListAdapter<kv> createAdapter()
  {
    return new alu(this, a());
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    this.d = getContext().getString(2131428148);
    this.e = getContext().getString(2131428149);
    this.f = getContext().getString(2131428150);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, this.d));
    return localArrayList;
  }

  protected final void d(List<kv> paramList)
  {
    this.mHandler.sendEmptyMessage(0);
    super.d(paramList);
  }

  protected final void d(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.d(paramkv);
  }

  protected final void e(List<kv> paramList)
  {
    this.mHandler.sendEmptyMessage(0);
    super.e(paramList);
  }

  protected final void e(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.e(paramkv);
  }

  protected final void f(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.f(paramkv);
  }

  protected final void g(kv paramkv)
  {
    this.mHandler.sendEmptyMessage(0);
    super.g(paramkv);
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    jt localjt = this.b;
    ArrayList localArrayList1 = (ArrayList)a.a(localjt.a(localjt.j, null, null, "id ASC"), this.a, 0);
    ArrayList localArrayList2 = this.j.a();
    ArrayList localArrayList3 = new ArrayList();
    HashSet localHashSet = new HashSet();
    int n = localArrayList2.size();
    for (int i1 = 0; i1 < n; i1++)
      localHashSet.add(((dr)localArrayList2.get(i1)).a);
    int i2 = localArrayList1.size();
    for (int i3 = 0; i3 < i2; i3++)
      if (!localHashSet.contains(((kv)localArrayList1.get(i3)).d.getPackageName()))
        localArrayList3.add(localArrayList1.get(i3));
    this.h = false;
    if ((localArrayList1.size() != 0) && (localArrayList2.size() == localArrayList1.size()))
      this.h = true;
    while (true)
    {
      synchronized (this.mDataList)
      {
        this.mDataList.clear();
        this.mDataList.addAll(localArrayList3);
        localArrayList3.clear();
        kd localkd = new kd();
        int i4 = this.mDataList.size();
        localkd.b.putInt("update_app_count", i4).commit();
        if (((this.mDataList.size() == 0) && (!this.h)) || ((this.g) && (!this.h)))
        {
          if (!this.g)
            break label424;
          this.mHandler.sendEmptyMessage(-3);
          this.g = false;
          bool = true;
          Intent localIntent = new Intent("com.tencent.qqpimsecure.CACHE");
          localIntent.putExtra("extra_cache_id", 1);
          localIntent.putExtra("extra_enforce", bool);
          this.mContext.sendBroadcast(localIntent);
          ((alu)super.f()).a(this.k);
          ((alu)super.f()).b(this.l);
          ((alu)super.f()).c(this.m);
          return;
        }
      }
      this.mHandler.sendEmptyMessage(-2);
      continue;
      label424: boolean bool = false;
    }
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, SoftwareCenterActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
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
    this.b = new jt();
    if (ij.a == null)
      ij.a = new ij();
    this.j = ij.a;
    boolean bool = getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false);
    nd localnd = nd.a();
    if (!bool)
      localnd.a(26043);
    while (true)
    {
      ((alu)super.f()).b();
      return;
      localnd.a(26062);
    }
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case -2:
    case -1:
    case 2:
    default:
    case 1:
    case -3:
    case 0:
    case 3:
    }
    while (true)
    {
      return;
      setEmptyImage(2130838352);
      OperatingModel localOperatingModel2 = (OperatingModel)getOperatingBarDataList().get(0);
      localOperatingModel2.setEnable(false);
      refreshOperatingBar(localOperatingModel2);
      continue;
      Iterator localIterator1;
      synchronized (this.mDataList)
      {
        this.mDataList.clear();
        ((alu)super.f()).setDataList(a());
        ((alu)super.f()).notifyDataSetChanged();
      }
      while (localIterator1.hasNext());
      OperatingModel localOperatingModel1 = (OperatingModel)getOperatingBarDataList().get(0);
      label203: int n;
      if (j() == 0)
      {
        localOperatingModel1.setEnable(false);
        Iterator localIterator2 = this.mDataList.iterator();
        n = 0;
        label217: if (!localIterator2.hasNext())
          break label313;
        switch (((kv)localIterator2.next()).mState)
        {
        default:
        case 0:
        case 1:
        case 2:
        }
      }
      for (int i1 = n; ; i1 = 1)
      {
        n = i1;
        break label217;
        if (localOperatingModel1.isEnable())
          break label203;
        localOperatingModel1.setEnable(true);
        break label203;
        a(this.e, 0, 0);
        break;
      }
      label313: if (n != 0)
      {
        a(this.f, 0, 1);
      }
      else
      {
        a(this.d, j(), 1);
        continue;
        ((alu)super.f()).notifyDataSetChanged();
        h((kv)paramMessage.obj);
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    kv localkv = (kv)((alu)super.f()).getDataList().get(paramInt);
    if (localkv.mState != 0)
    {
      boolean bool1 = localkv.e;
      for (int n = 0; n < this.mDataList.size(); n++)
        ((kv)this.mDataList.get(n)).e = true;
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      localkv.e = bool2;
      ((alu)super.f()).notifyDataSetChanged();
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    if (this.mDataList.size() <= 0)
      ha.a(this.mContext, 2131429659);
    while (true)
    {
      return;
      if (paramOperatingModel.getText().equals(this.d))
      {
        ArrayList localArrayList1 = new ArrayList();
        Iterator localIterator1 = this.mDataList.iterator();
        while (localIterator1.hasNext())
        {
          kv localkv2 = (kv)localIterator1.next();
          if ((localkv2.mState == -2) || (localkv2.mState == -4))
            localArrayList1.add(localkv2);
        }
        if (localArrayList1.size() > 0)
        {
          if (NetworkUtil.getNetworkType() != ConnectType.CT_WIFI)
          {
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(this.mContext.getResources().getString(2131428434));
            localDialog.setMessage(this.mContext.getResources().getString(2131429660));
            localDialog.setPositiveButton(2131427397, new bol(this, localArrayList1, localDialog), 1);
            localDialog.setNegativeButton(2131427379, new bom(localDialog), 2);
            localDialog.show();
          }
          while (true)
          {
            nd.a().a(26081);
            break;
            f(localArrayList1);
          }
        }
        Iterator localIterator2 = this.mDataList.iterator();
        while (localIterator2.hasNext())
        {
          kv localkv1 = (kv)localIterator2.next();
          if (localkv1.mState == 3)
            j(localkv1);
        }
      }
      else if (paramOperatingModel.getText().equals(this.e))
      {
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator3 = this.mDataList.iterator();
        while (localIterator3.hasNext())
        {
          kv localkv3 = (kv)localIterator3.next();
          if ((localkv3.mState == -1) || (localkv3.mState == 0))
            localArrayList2.add(localkv3);
        }
        this.a.pauseTask(localArrayList2);
      }
      else
      {
        ArrayList localArrayList3 = new ArrayList();
        Iterator localIterator4 = this.mDataList.iterator();
        while (localIterator4.hasNext())
        {
          kv localkv4 = (kv)localIterator4.next();
          if ((localkv4.mState == 1) || (localkv4.mState == 2))
            localArrayList3.add(localkv4);
        }
        g(localArrayList3);
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, IgnoreUpdateSoftwareActivity.class);
    localIntent.setFlags(67108864);
    this.mContext.startActivity(localIntent);
    nd.a().a(26402);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 68:
    case 54:
    case 44:
    }
    while (true)
    {
      return true;
      this.mContext.startActivity(new Intent(this.mContext, MarketActivity.class));
      continue;
      this.mContext.startActivity(new Intent(this.mContext, DownloadManagerActivity.class));
      continue;
      k();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    paramMenu.add(0, 68, 1, QQPimApplication.a().getResources().getString(2131427983)).setIcon(2130838027);
    paramMenu.add(0, 54, 2, QQPimApplication.a().getResources().getString(2131428119)).setIcon(2130838012);
    paramMenu.add(0, 44, 3, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onRetry()
  {
    setReloadData(true);
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onStart()
  {
    super.onStart();
    this.mHandler.sendEmptyMessage(0);
    a.a(this, 2131427878);
  }

  public final void refreshListData()
  {
    List localList = this.mDataList;
    if ((localList == null) || (localList.size() == 0))
    {
      this.mDataList = localList;
      g();
      ((alu)super.f()).setDataList(a());
      this.mHandler.sendEmptyMessage(0);
      super.refreshListData();
      if (!this.h)
        break label84;
      setEmptyImage(2130838352);
    }
    while (true)
    {
      return;
      Collections.sort(localList, new blt.a(this));
      break;
      label84: if (!this.i)
        hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429568);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)51);
    paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838324);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bok
 * JD-Core Version:    0.6.2
 */