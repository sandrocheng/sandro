import QQPIM.SoftListType;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareBatchUninstallActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareRecycleActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import java.util.ArrayList;
import java.util.List;

public final class bod extends blt<kw>
{
  public static List<kw> a = new ArrayList();
  private List<kw> b = new ArrayList();
  private List<kw> d = new ArrayList();
  private abe e;
  private PackageChangedManager f;
  private boolean g = false;
  private int h = -1;
  private boolean i = false;
  private IPackageChangedListener j = new boj(this);

  public bod(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kw>> d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.b, this.mContext.getString(2131428116), 0));
    localArrayList.add(new ListModel(this.d, this.mContext.getString(2131428117), 0));
    this.mDataList.clear();
    this.mDataList.addAll(this.b);
    this.mDataList.addAll(this.d);
    return localArrayList;
  }

  public final alt a()
  {
    return (alt)super.getAdapter();
  }

  public final void a(Intent paramIntent)
  {
    super.a(paramIntent);
    setEmptyText(2131429666);
  }

  public final void a(kw paramkw)
  {
    ge localge = new ge(this.mContext);
    localge.b = new ge.a(this);
    localge.a.getString(2131428817);
    localge.a.getString(2131428813);
    int k = 0;
    if (paramkw != null)
    {
      String str3 = paramkw.getPackageName();
      k = 0;
      if (str3 != null);
    }
    else
    {
      if (k == 0)
        break label198;
      String str1 = localge.a.getString(2131428328);
      String str2 = localge.a.getString(2131428338);
      Dialog localDialog = new Dialog(localge.a);
      localDialog.setTitle(str1);
      localDialog.setMessage(str2);
      localDialog.setPositiveButton(2131427397, new gn(localge, true, paramkw, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new go(localDialog), 1);
      localDialog.show();
    }
    while (true)
    {
      return;
      boolean bool = paramkw.getPackageName().toLowerCase().equals(new hg().a);
      k = 0;
      if (!bool)
        break;
      k = 1;
      break;
      label198: if (localge.b != null)
        localge.b.a.b(paramkw);
    }
  }

  public final int b()
  {
    return 0;
  }

  public final BasePinnedListAdapter<kw> createAdapter()
  {
    return new alt(this, d());
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final List<kw> getDataList()
  {
    return super.getDataList();
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    try
    {
      if (this.i)
      {
        Intent localIntent1 = new Intent("com.tencent.qqpimsecure.CACHE");
        localIntent1.putExtra("extra_cache_id", 2);
        this.mContext.sendBroadcast(localIntent1);
        this.i = false;
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        this.b = this.e.a();
        this.d = this.e.b();
        localArrayList.addAll(this.b);
        localArrayList.addAll(this.d);
        this.mDataList = localArrayList;
        new bof(this).start();
        if (this.mDataList.size() == 0)
        {
          Intent localIntent2 = new Intent("com.tencent.qqpimsecure.CACHE");
          localIntent2.putExtra("extra_cache_id", 2);
          this.mContext.sendBroadcast(localIntent2);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = new abe();
    this.f = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.f.addListener(this.j);
    nd.a().a(26044);
    getActivity().unregisterForContextMenu(getListView());
    new boe(this).start();
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onDestroy()
  {
    this.f.removeListener(this.j);
    super.onDestroy();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    if (this.h == paramMessage.what)
      ((alt)super.getAdapter()).notifyDataSetChanged();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= getDataList().size())
      return;
    kw localkw = (kw)getDataList().get(paramInt);
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131429622);
    LayoutInflater localLayoutInflater1 = LayoutInflater.from(this.mContext);
    Object localObject = (ViewGroup)localLayoutInflater1.inflate(2130903109, null);
    a(localLayoutInflater1, (ViewGroup)localObject, 2131429623, localkw.getAppName(), true, "[" + this.mContext.getString(2131427411) + "]", new bog(this, localkw, localDialog));
    a(localLayoutInflater1, (ViewGroup)localObject, 2131429624, localkw.getVersion(), false, null, null);
    a(localLayoutInflater1, (ViewGroup)localObject, 2131429627, a(localkw.getSize()), false, null, null);
    LayoutInflater localLayoutInflater2 = LayoutInflater.from(this.mContext);
    if (!localkw.isSystemApp())
      if (this.e.a(localkw))
        a(localLayoutInflater2, (ViewGroup)localObject, 2131429634, kw.b[localkw.v()], false, null, null);
    while (true)
    {
      localDialog.setView((View)localObject);
      if ((this.g) || (!localkw.isSystemApp()))
        localDialog.setPositiveButton(2131427402, new boh(this, localkw, localDialog), 1);
      localDialog.setNegativeButton(2131427399, new boi(localDialog), 2);
      localDialog.show();
      break;
      if (this.e.b.contains(localkw.getPackageName(), SoftListType.BLACKLIST_WITHPLUGIN))
        localkw.h(3);
      for (int m = 1; ; m = 0)
      {
        if (m == 0)
          break label358;
        a(localLayoutInflater2, (ViewGroup)localObject, 2131429632, kw.b[3], false, null, null);
        break;
      }
      label358: continue;
      if (this.e.b.contains(localkw.getPackageName(), SoftListType.BLACKLIST_ROM))
        localkw.h(4);
      for (int k = 1; ; k = 0)
      {
        if (k == 0)
          break label499;
        a(localLayoutInflater2, (ViewGroup)localObject, 2131429633, this.mContext.getString(2131429570), false, null, null);
        if (!this.g)
          break;
        TextView localTextView = new TextView(this.mContext);
        localTextView.setTextSize(13.0F);
        localTextView.setTextColor(this.mContext.getResources().getColor(2131296289));
        localTextView.setText(2131429663);
        ((ViewGroup)localObject).addView(localTextView, new LinearLayout.LayoutParams(-1, -2));
        break;
      }
      label499: localObject = new TextView(this.mContext);
      ((TextView)localObject).setTextSize(15.0F);
      ((TextView)localObject).setTextColor(this.mContext.getResources().getColor(2131296286));
      ((TextView)localObject).setText(localkw.getAppName() + this.mContext.getString(2131429664));
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 10:
    case 44:
    case 54:
    case 56:
    }
    while (true)
    {
      return true;
      a = this.b;
      Intent localIntent = new Intent(this.mContext, SoftwareBatchUninstallActivity.class);
      ((Activity)this.mContext).startActivity(localIntent);
      continue;
      this.b.clear();
      this.d.clear();
      ((alt)super.getAdapter()).setDataList(d());
      ((alt)super.getAdapter()).notifyDataSetChanged();
      this.i = true;
      this.mHandler.sendEmptyMessage(-1);
      continue;
      this.mContext.startActivity(new Intent(this.mContext, DownloadManagerActivity.class));
      continue;
      this.mContext.startActivity(new Intent(this.mContext, SoftwareRecycleActivity.class));
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (getDataList() != null)
    {
      if (paramMenu.findItem(56) == null)
        paramMenu.add(0, 56, 1, QQPimApplication.a().getResources().getString(2131428118)).setIcon(2130838019);
      if (paramMenu.findItem(10) == null)
        paramMenu.add(0, 10, 3, QQPimApplication.a().getResources().getString(2131428656)).setIcon(2130838028);
      if (paramMenu.findItem(44) == null)
        paramMenu.add(0, 44, 4, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
    }
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if (isReloadData())
    {
      this.mHandler.sendEmptyMessage(-1);
      setReloadData(false);
    }
    while (true)
    {
      return;
      ((alt)super.getAdapter()).notifyDataSetChanged();
    }
  }

  public final void refreshListData()
  {
    ((alt)super.getAdapter()).setDataList(d());
    ((alt)super.getAdapter()).notifyDataSetChanged();
    ((alt)super.getAdapter()).a();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429569);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)51);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bod
 * JD-Core Version:    0.6.2
 */