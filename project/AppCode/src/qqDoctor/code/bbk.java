import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class bbk extends BaseListView<kw>
{
  private NetworkManager a;
  private SoftwareManager b;
  private abe c;
  private PackageManager d;
  private bbo e;
  private ho f;
  private List<kw> g = new ArrayList();
  private List<kw> h = new ArrayList();
  private boolean i = true;

  public bbk(Context paramContext, bbo parambbo)
  {
    super(paramContext);
    this.e = parambbo;
  }

  private long a(String paramString, boolean paramBoolean)
  {
    long l1 = 0L;
    long l2;
    if (paramBoolean)
    {
      l2 = this.a.getMobileRxBytes(paramString);
      if ("com.tencent.qqpimsecure".equals(paramString))
        l2 -= this.a.getSelfMobileDownloadBytes();
      if (l2 >= l1)
        break label80;
    }
    while (true)
    {
      return l1;
      l2 = this.a.getMobileTxBytes(paramString);
      if (!"com.tencent.qqpimsecure".equals(paramString))
        break;
      l2 -= this.a.getSelfMobileUploadBytes();
      break;
      label80: l1 = l2;
    }
  }

  private List<ListModel<kw>> a()
  {
    this.mDataList.clear();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.h, null, 1));
    this.mDataList.addAll(this.h);
    return localArrayList;
  }

  private void b()
  {
    this.h.clear();
    int k;
    kw localkw2;
    int m;
    int n;
    if ((this.g != null) && (this.g.size() > 0))
    {
      String[] arrayOfString = new String[this.g.size()];
      for (int j = 0; j < this.g.size(); j++)
        arrayOfString[j] = ((kw)this.g.get(j)).getPackageName();
      this.a.refreshTrafficInfo(arrayOfString, true);
      k = 0;
      if (k < this.g.size())
      {
        localkw2 = (kw)this.g.get(k);
        long l3 = a(localkw2.getPackageName(), true);
        localkw2.b(l3);
        long l4 = a(localkw2.getPackageName(), false);
        localkw2.c(l4);
        long l5 = l3 + l4;
        localkw2.a(l5);
        if (l5 != 0L)
        {
          m = 0;
          n = 0;
          label185: if (m >= this.h.size())
            break label384;
          if (localkw2.a() <= ((kw)this.h.get(m)).a())
            break label258;
        }
      }
    }
    while (true)
    {
      if (m < this.h.size())
        this.h.add(m, localkw2);
      while (true)
      {
        k++;
        break;
        label258: n++;
        m++;
        break label185;
        this.h.add(localkw2);
      }
      long l1 = this.a.getSelfMobileDownloadBytes();
      long l2 = this.a.getSelfMobileUploadBytes();
      if (l1 + l2 > 0L)
      {
        kw localkw1 = new kw();
        localkw1.setAppName(this.mContext.getString(2131427756));
        localkw1.b(l1);
        localkw1.c(l2);
        localkw1.a(l1 + l2);
        localkw1.setPackageName("com.tencent.qqpimsecure.self");
        this.h.add(localkw1);
      }
      this.f.cc();
      return;
      label384: m = n;
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new ake(this.mContext, a(), this, getListView());
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.e.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    HashSet localHashSet1 = new HashSet();
    localHashSet1.add("com.qq.AppService");
    localHashSet1.add("cn.imolo.service");
    localHashSet1.add("com.wd.AndroidDaemon");
    localHashSet1.add("com.nd.assistance");
    localHashSet1.add("com.dragon.android.pandaspace");
    localHashSet1.add("com.qihoo360.daemon");
    localHashSet1.add("com.htc.android.psclient");
    localHashSet1.add("com.wandoujia.phoenix2.usbproxy");
    this.g = new ArrayList();
    this.g.addAll(this.c.a());
    this.g.addAll(this.c.b());
    if ((this.g == null) || (this.g.size() == 0))
      this.g = a.b(this.b.getInstalledApp(1, 2));
    while (true)
    {
      HashSet localHashSet2 = new HashSet();
      if ((this.g != null) && (this.g.size() > 0))
      {
        int j = -1 + this.g.size();
        label201: if (j >= 0)
        {
          kw localkw = (kw)this.g.get(j);
          try
          {
            int n;
            if (!localHashSet1.contains(localkw.getPackageName()))
            {
              ApplicationInfo localApplicationInfo = this.d.getApplicationInfo(localkw.getPackageName(), 0);
              if ((localApplicationInfo != null) && (localApplicationInfo.uid != 1000) && (localApplicationInfo.uid != 1001) && (!localHashSet2.contains(Integer.valueOf(localApplicationInfo.uid))))
              {
                PackageInfo localPackageInfo = this.d.getPackageInfo(localkw.getPackageName(), 4096);
                if (localPackageInfo.requestedPermissions != null)
                {
                  String[] arrayOfString = localPackageInfo.requestedPermissions;
                  int m = arrayOfString.length;
                  n = 0;
                  label336: if (n < m)
                    if ("android.permission.INTERNET".equals(arrayOfString[n]))
                      localHashSet2.add(Integer.valueOf(localApplicationInfo.uid));
                }
              }
            }
            for (k = 0; ; k = 1)
            {
              if (k != 0)
                this.g.remove(j);
              j--;
              break label201;
              this.g.add(a.a(this.b.getAppInfo(this.mContext.getPackageName(), 1), false));
              break;
              n++;
              break label336;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            while (true)
            {
              localNameNotFoundException.printStackTrace();
              int k = 1;
            }
          }
        }
      }
    }
    b();
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = this.mContext.getPackageManager();
    this.a = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.b = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.f = ho.a();
    this.c = new abe();
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 5:
    }
    while (true)
    {
      return;
      if (this.i)
      {
        TMSService.startService(new aau());
        Intent localIntent = new Intent("com.tencent.qqpimsecure.CACHE");
        localIntent.putExtra("extra_cache_id", 2);
        this.mContext.sendBroadcast(localIntent);
        this.i = false;
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 70:
    }
    while (true)
    {
      return true;
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131427393);
      localDialog.setMessage(2131427755);
      localDialog.setPositiveButton(2131427397, new bbl(this, localDialog), 2);
      localDialog.setPositiveButton(2131427379, new bbn(localDialog), 2);
      localDialog.show();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (paramMenu.findItem(70) == null)
      paramMenu.add(0, 70, 1, QQPimApplication.a().getResources().getString(2131427393)).setIcon(2130838010);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if ((this.e != null) && (this.e.getFrameworkTemplateUI() != null))
      this.e.getFrameworkTemplateUI().setInfoBarStyle((byte)50);
    if (isReloadData())
    {
      setReloadData(false);
      this.mHandler.sendEmptyMessage(-1);
      if ((this.h == null) || (this.h.size() <= 0))
        break label159;
      if ((this.e != null) && (this.e.getFrameworkTemplateUI() != null))
      {
        FrameworkTemplateUI localFrameworkTemplateUI2 = this.e.getFrameworkTemplateUI();
        String str2 = this.mContext.getString(2131427753);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.h.size());
        localFrameworkTemplateUI2.updateInfoBarText(String.format(str2, arrayOfObject2));
      }
    }
    while (true)
    {
      return;
      this.mHandler.sendEmptyMessage(-2);
      break;
      label159: if ((this.e != null) && (this.e.getFrameworkTemplateUI() != null))
      {
        FrameworkTemplateUI localFrameworkTemplateUI1 = this.e.getFrameworkTemplateUI();
        String str1 = this.mContext.getString(2131427753);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(0);
        localFrameworkTemplateUI1.updateInfoBarText(String.format(str1, arrayOfObject1));
      }
    }
  }

  public final void onStart()
  {
    super.onStart();
    getFrameworkTemplateUI().getEmptyTemplateUI().setVisibility(4);
  }

  public final void refreshListData()
  {
    if ((this.h == null) || (this.h.size() == 0))
    {
      setEmptyText(2131428803);
      if ((this.e != null) && (this.e.getFrameworkTemplateUI() != null))
      {
        FrameworkTemplateUI localFrameworkTemplateUI1 = this.e.getFrameworkTemplateUI();
        String str1 = this.mContext.getString(2131427753);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(0);
        localFrameworkTemplateUI1.updateInfoBarText(String.format(str1, arrayOfObject1));
      }
    }
    while (true)
    {
      ((ake)getAdapter()).setDataList(a());
      getAdapter().notifyDataSetChanged();
      this.mHandler.sendEmptyMessage(5);
      return;
      hideEmptyView();
      if ((this.e != null) && (this.e.getFrameworkTemplateUI() != null))
      {
        FrameworkTemplateUI localFrameworkTemplateUI2 = this.e.getFrameworkTemplateUI();
        String str2 = this.mContext.getString(2131427753);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.h.size());
        localFrameworkTemplateUI2.updateInfoBarText(String.format(str2, arrayOfObject2));
      }
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427744);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbk
 * JD-Core Version:    0.6.2
 */