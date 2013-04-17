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

public final class bnr extends blt<kw>
{
  private List<kw> a = new ArrayList();
  private List<kw> b = new ArrayList();
  private abe d;
  private BaseView e;

  public bnr(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.e = paramBaseView;
  }

  private List<ListModel<kw>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.a, this.mContext.getString(2131427515), 0));
    localArrayList.add(new ListModel(this.b, this.mContext.getString(2131427517), 0));
    this.mDataList.clear();
    this.mDataList.addAll(this.a);
    this.mDataList.addAll(this.b);
    return localArrayList;
  }

  public final void a(kw paramkw)
  {
    this.a.remove(paramkw);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.e.getFrameworkTemplateUI();
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
    Object localObject1 = null;
    Object localObject3;
    try
    {
      this.a = a.b(this.d.a.getAppsCanMovable(9, 2, false));
      synchronized (this.a)
      {
        Iterator localIterator1 = this.a.iterator();
        localObject3 = null;
        if (!localIterator1.hasNext())
          break label113;
        kw localkw = (kw)localIterator1.next();
        if (localkw.getPackageName().hashCode() == this.mContext.getPackageName().hashCode())
          localObject3 = localkw;
        localkw.g(2);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return;
    label113: this.a.remove(localObject3);
    List localList5;
    synchronized (this.b)
    {
      this.b.clear();
      List localList3 = a.b(this.d.a.getAppsCanMovable(9, 1, false));
      List localList4 = a.b(this.d.a.getInstalledApp(121, 0));
      this.b.addAll(localList4);
      this.b.removeAll(localList3);
      this.b.removeAll(this.a);
      Iterator localIterator2 = this.b.iterator();
      if (localIterator2.hasNext())
        ((kw)localIterator2.next()).g(0);
    }
    Iterator localIterator3 = localList5.iterator();
    while (true)
    {
      if (localIterator3.hasNext())
      {
        localObject5 = (kw)localIterator3.next();
        if (((kw)localObject5).getPackageName().hashCode() == this.mContext.getPackageName().hashCode())
          break label469;
      }
      else
      {
        kd localkd = new kd();
        if (localList5.remove(localObject1))
        {
          int j = -1 + localList5.size();
          localkd.b.putInt("software_move_to_sdcard_count", j).commit();
        }
        while (true)
        {
          new StringBuilder().append(localkd.a.getInt("software_move_to_sdcard_count", 0)).toString();
          this.mHandler.sendEmptyMessage(-2);
          break;
          int i = localList5.size();
          localkd.b.putInt("software_move_to_sdcard_count", i).commit();
        }
      }
      Object localObject5 = localObject1;
      label469: localObject1 = localObject5;
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    if (this.d == null)
      this.d = new abe();
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
      this.b.clear();
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
    if ((this.a.size() == 0) && (this.b.size() == 0))
      setEmptyText(2131429669);
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnr
 * JD-Core Version:    0.6.2
 */