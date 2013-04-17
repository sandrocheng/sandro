import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bns extends blt<kw>
{
  private List<kw> a = new ArrayList();
  private abe b;
  private BaseView d;
  private List<kw> e = new ArrayList();

  public bns(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.d = paramBaseView;
  }

  private List<ListModel<kw>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.a, this.mContext.getString(2131427514), 0));
    localArrayList.add(new ListModel(this.e, this.mContext.getString(2131427517), 0));
    this.mDataList.clear();
    this.mDataList.addAll(this.a);
    this.mDataList.addAll(this.e);
    return localArrayList;
  }

  private void d()
  {
    List localList = a.b(this.b.a.getAppsCanMovable(9, 1, false));
    Object localObject1 = null;
    Iterator localIterator = localList.iterator();
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (kw)localIterator.next();
      if (((kw)localObject2).getPackageName().hashCode() != this.mContext.getPackageName().hashCode())
        break label182;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      kd localkd = new kd();
      if (localList.remove(localObject1))
      {
        int j = -1 + localList.size();
        localkd.b.putInt("software_move_to_sdcard_count", j).commit();
      }
      while (true)
      {
        new StringBuilder().append(localkd.a.getInt("software_move_to_sdcard_count", 0)).toString();
        return;
        int i = localList.size();
        localkd.b.putInt("software_move_to_sdcard_count", i).commit();
      }
      label182: localObject2 = localObject1;
    }
  }

  public final void a(kw paramkw)
  {
    this.a.remove(paramkw);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.d.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    Object localObject2;
    try
    {
      this.a = a.b(this.b.a.getAppsCanMovable(9, 1, false));
      synchronized (this.a)
      {
        Iterator localIterator1 = this.a.iterator();
        localObject2 = null;
        if (localIterator1.hasNext())
        {
          kw localkw = (kw)localIterator1.next();
          if (localkw.getPackageName().hashCode() == this.mContext.getPackageName().hashCode())
            localObject2 = localkw;
          localkw.g(1);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      return;
      this.a.remove(localObject2);
      synchronized (this.e)
      {
        this.e.clear();
        List localList3 = a.b(this.b.a.getAppsCanMovable(9, 2, false));
        List localList4 = a.b(this.b.a.getInstalledApp(121, 0));
        this.e.addAll(localList4);
        this.e.removeAll(localList3);
        this.e.removeAll(this.a);
        Iterator localIterator2 = this.e.iterator();
        if (localIterator2.hasNext())
          ((kw)localIterator2.next()).g(0);
      }
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    if (this.b == null)
      this.b = new abe();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 44:
    }
    while (true)
    {
      return true;
      this.mDataList.clear();
      this.a.clear();
      this.e.clear();
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (getDataList() != null)
      a.c(paramMenu);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if (SDKUtil.getSDKVersion() < 8)
      setEmptyText(2131428801);
    while (true)
    {
      return;
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(a());
    getAdapter().notifyDataSetChanged();
    if (isReloadData())
      setReloadData(false);
    if ((this.a.size() == 0) && (this.e.size() == 0))
      setEmptyText(2131429668);
    while (true)
    {
      d();
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bns
 * JD-Core Version:    0.6.2
 */