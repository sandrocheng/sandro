import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bmj extends blt<kw>
{
  private List<kw> a = new ArrayList();
  private BroadcastReceiver b = new bmo(this);

  public bmj(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kw>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.a, null, 1));
    this.mDataList.clear();
    this.mDataList.addAll(this.a);
    return localArrayList;
  }

  public final void a(List<String> paramList)
  {
    String str1 = this.mContext.getResources().getString(2131428434);
    String str2 = this.mContext.getResources().getString(2131428454);
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(str1);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131427397, new bmm(this, paramList, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new bmn(localDialog), 2);
    localDialog.show();
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131427378));
    return localArrayList;
  }

  public final boolean isPinnedHeaderListView()
  {
    return false;
  }

  public final void loadDataList()
  {
    if (isReloadData())
    {
      Iterator localIterator = bod.a.iterator();
      while (localIterator.hasNext())
      {
        kw localkw1 = (kw)localIterator.next();
        try
        {
          kw localkw2 = (kw)localkw1.clone();
          localkw2.b(1);
          this.a.add(localkw2);
        }
        catch (Exception localException)
        {
        }
      }
      setReloadData(false);
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    setReloadData(true);
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addDataScheme("package");
    this.mContext.registerReceiver(this.b, localIntentFilter);
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (paramMenu.findItem(30) == null)
      paramMenu.add(0, 30, 0, QQPimApplication.a().getResources().getString(2131428653)).setIcon(2130838024);
    if (paramMenu.findItem(39) == null)
      paramMenu.add(0, 39, 1, QQPimApplication.a().getResources().getString(2131428655)).setIcon(2130838029);
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    localCheckBoxView.onClick(localCheckBoxView);
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    int i = ((alk)super.getAdapter()).c().size();
    if (i == 0)
    {
      Toast.makeText(this.mContext, 2131427791, 1).show();
      return;
    }
    String str1 = this.mContext.getResources().getString(2131428434);
    String str2 = this.mContext.getString(2131428502);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    String str3 = String.format(str2, arrayOfObject);
    ArrayList localArrayList = (ArrayList)((alk)super.getAdapter()).d();
    Iterator localIterator = localArrayList.iterator();
    Object localObject1 = str3;
    Object localObject2 = str1;
    boolean bool1 = false;
    label113: Object localObject3;
    Object localObject4;
    boolean bool2;
    if (localIterator.hasNext())
    {
      if (!((kw)localIterator.next()).getPackageName().toLowerCase().equals(new hg().a))
        break label306;
      localObject3 = this.mContext.getResources().getString(2131428451);
      localObject4 = this.mContext.getResources().getString(2131428452) + this.mContext.getResources().getString(2131428453);
      bool2 = true;
    }
    while (true)
    {
      localObject1 = localObject4;
      localObject2 = localObject3;
      bool1 = bool2;
      break label113;
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle((CharSequence)localObject2);
      localDialog.setMessage((CharSequence)localObject1);
      localDialog.setPositiveButton(2131427397, new bmk(this, localArrayList, bool1, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new bml(localDialog), 2);
      localDialog.show();
      break;
      label306: bool2 = bool1;
      localObject3 = localObject2;
      localObject4 = localObject1;
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 30:
    case 39:
    }
    while (true)
    {
      return false;
      ((alk)super.getAdapter()).a(true);
      continue;
      ((alk)super.getAdapter()).a(false);
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    ((alk)super.getAdapter()).setDataList(a());
    ((alk)super.getAdapter()).notifyDataSetChanged();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = ((alk)super.getAdapter()).e().iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      Iterator localIterator2 = ((alk)super.getAdapter()).getDataList().iterator();
      while (localIterator2.hasNext())
        if (str.equals(((kw)localIterator2.next()).getPackageName()))
          localArrayList.add(Integer.valueOf(str.hashCode()));
    }
    ((alk)super.getAdapter()).a(localArrayList);
    ((alk)super.getAdapter()).a();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427378);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)51);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmj
 * JD-Core Version:    0.6.2
 */