import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bqs extends blt<kw>
{
  private BaseView a;
  private rm b;
  private boolean d = false;
  private boolean e = false;
  private long f = 0L;
  private boolean g;
  private Handler h = new bqt(this);

  public bqs(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.a = paramBaseView;
    this.b = new rm();
  }

  private void d()
  {
    if (!this.g);
    while (true)
    {
      return;
      if (this.e)
      {
        if ((this.g) && (getFrameworkTemplateUI() != null))
        {
          setEmptyText(2131429783);
          FrameworkTemplateUI localFrameworkTemplateUI2 = getFrameworkTemplateUI();
          String str2 = this.mContext.getString(2131429776);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = a.b(this.f);
          localFrameworkTemplateUI2.updateInfoBarTextWithMiddleStyle(String.format(str2, arrayOfObject2));
        }
      }
      else if (this.d)
      {
        Iterator localIterator = this.mDataList.iterator();
        int i = 0;
        kw localkw;
        for (long l = 0L; localIterator.hasNext(); l += localkw.S())
        {
          localkw = (kw)localIterator.next();
          i += localkw.T().size();
        }
        if (getFrameworkTemplateUI() != null)
          if (i > 0)
          {
            hideEmptyView();
            FrameworkTemplateUI localFrameworkTemplateUI1 = getFrameworkTemplateUI();
            String str1 = this.mContext.getString(2131429772);
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(this.mDataList.size());
            arrayOfObject1[1] = a.b(l);
            localFrameworkTemplateUI1.updateInfoBarText(String.format(str1, arrayOfObject1));
          }
          else
          {
            setEmptyText(2131429774);
            getFrameworkTemplateUI().updateInfoBarText(this.mContext.getString(2131429774));
          }
      }
      else if (getFrameworkTemplateUI() != null)
      {
        getFrameworkTemplateUI().updateInfoBarText(this.mContext.getString(2131429767));
      }
    }
  }

  private aly e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    return new aly(this, localArrayList);
  }

  public final boolean a()
  {
    if (!this.d);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    OperatingModel localOperatingModel = new OperatingModel(1, 2131429760);
    localOperatingModel.setEnable(false);
    localArrayList.add(localOperatingModel);
    return localArrayList;
  }

  public final View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903298, null);
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.a.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    rm localrm = this.b;
    rm.a locala = new rm.a(this);
    AppListManager localAppListManager = (AppListManager)ManagerCreator.getManager(AppListManager.class);
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    SoftList localSoftList = localAppListManager.loadAppList(SoftListType.DEEPCLEAN_SOFT_PATH_LIST);
    ArrayList localArrayList1 = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    HashMap localHashMap3 = new HashMap();
    List localList1 = eb.a(localSoftList, localHashMap2, localHashMap3);
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator1 = localList1.iterator();
    while (localIterator1.hasNext())
    {
      lh locallh = (lh)localIterator1.next();
      if (locallh.c)
      {
        Iterator localIterator2 = locallh.d.iterator();
        kw localkw = null;
        while (localIterator2.hasNext())
        {
          lg locallg = (lg)localIterator2.next();
          if (localrm.a)
            return;
          if (((!localSoftwareManager.isPackageInstalled(locallh.a)) || (locallg.c)) && (!rm.a(locallh.a, locallg, localHashMap2, localSoftwareManager)) && ((!locallg.b) || (!rm.a(locallg.a, localArrayList2))))
          {
            List localList2 = eb.a(locallg.a, locallg.d);
            if ((localList2 != null) && (localList2.size() != 0))
            {
              if (localkw == null)
              {
                localkw = (kw)localHashMap1.get(locallh.a);
                if (localkw == null)
                  localkw = a.a(localSoftwareManager.getAppInfo(locallh.a, 5));
              }
              if (localkw == null)
                localkw = rm.a(locallg.a, localHashMap3);
              if (localkw != null)
              {
                if ((!locallg.c) && (localkw.n() != 1))
                  continue;
                List localList4 = localkw.T();
                if (localList4 != null)
                {
                  localList4.addAll(localList2);
                  localkw.a(localList4);
                }
              }
            }
            else
            {
              while (true)
              {
                localkw.g(localkw.S() + a.e(localList2));
                localArrayList2.add(locallg.a);
                localkw = localkw;
                break;
                localkw.a(localList2);
              }
              localkw = new kw();
              localkw.setPackageName(locallh.a);
              localkw.setAppName(locallh.b);
              List localList3 = localkw.T();
              if (localList3 != null)
              {
                localList3.addAll(localList2);
                localkw.a(localList3);
              }
              while (true)
              {
                localkw.g(localkw.S() + a.e(localList2));
                localkw.e(1);
                break;
                localkw.a(localList2);
              }
            }
          }
        }
        if ((localkw != null) && (localkw.T() != null))
        {
          locala.a.mDataList.add(localkw);
          Message localMessage = locala.a.h.obtainMessage(2);
          localMessage.obj = localkw;
          locala.a.h.sendMessage(localMessage);
          locala.a.mHandler.sendEmptyMessage(-2);
          localArrayList1.add(localkw);
          localHashMap1.put(locallh.a, localkw);
        }
      }
    }
    locala.a.d = true;
    locala.a.h.sendEmptyMessage(1);
  }

  public final void onCreate()
  {
    super.onCreate();
    nd.a().a(26450);
  }

  public final void onDestroy()
  {
    super.onDestroy();
    ((AutoLoadingView)this.mFooterView.findViewById(2131230972)).setVisibility(8);
    ((AutoLoadingView)this.mFooterView.findViewById(2131230971)).setVisibility(8);
    this.b.a = true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    if (localCheckBoxView == null);
    while (true)
    {
      return;
      if (localCheckBoxView.getVisibility() == 0)
        localCheckBoxView.onClick(localCheckBoxView);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if ((this.d) && (((aly)getAdapter()).c().size() > 0))
      {
        ((OperatingModel)getOperatingBarDataList().get(0)).setAction(true);
        ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
        refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
        new Thread(new bqu(this)).start();
      }
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.g = true;
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      setEmptyText(2131430172);
      this.mFooterView.setVisibility(8);
      getListView().removeFooterView(this.mFooterView);
    }
    while (true)
    {
      return;
      d();
      if (isReloadData())
      {
        setReloadData(false);
        this.d = false;
        this.mFooterView.setVisibility(0);
        getListView().removeFooterView(this.mFooterView);
        getListView().addFooterView(this.mFooterView);
        ((AutoLoadingView)this.mFooterView.findViewById(2131230972)).startRotationAnimation();
        ((AutoLoadingView)this.mFooterView.findViewById(2131230971)).startRotationAnimation();
        this.b.a = false;
        this.mHandler.sendEmptyMessage(-1);
      }
    }
  }

  public final void onStop()
  {
    super.onStop();
    this.g = false;
  }

  public final void refreshListData()
  {
    BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    localBasePinnedListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    d();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqs
 * JD-Core Version:    0.6.2
 */