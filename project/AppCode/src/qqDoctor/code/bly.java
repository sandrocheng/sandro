import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.tencent.qqpimsecure.ui.activity.market.MarketActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bly extends bmd
{
  private boolean b = false;
  private Handler d = new blz(this);

  public bly(Context paramContext)
  {
    super(paramContext);
  }

  public final List<ListModel<kv>> a()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = this.mDataList.iterator();
    while (localIterator.hasNext())
    {
      kv localkv = (kv)localIterator.next();
      if (localkv.mState == 3)
        localArrayList2.add(localkv);
      else if ((localkv.mState == -1) || (localkv.mState == 0) || (localkv.mState == 1) || (localkv.mState == 2))
        localArrayList1.add(localkv);
    }
    this.mDataList.clear();
    this.mDataList.addAll(localArrayList1);
    this.mDataList.addAll(localArrayList2);
    ArrayList localArrayList3 = new ArrayList();
    localArrayList3.add(new ListModel(localArrayList1, this.mContext.getString(2131429077), 0));
    localArrayList3.add(new ListModel(localArrayList2, this.mContext.getString(2131428123), 0));
    return localArrayList3;
  }

  public final void a(kv paramkv)
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(this.mContext.getResources().getString(2131428438));
    File localFile = of.d(paramkv);
    if (localFile != null)
    {
      localDialog.setMessage(this.mContext.getResources().getString(2131428448) + paramkv.d.getAppName() + "(" + localFile.getName() + ")?");
      localDialog.setPositiveButton(2131427397, new bmb(this, localFile, paramkv, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new bmc(localDialog), 2);
      localDialog.show();
    }
  }

  public final void a_()
  {
    g();
    f().setDataList(a());
    h();
    this.mHandler.sendEmptyMessage(-2);
    if (isReloadData())
      setReloadData(false);
    if (this.b)
      this.b = false;
    if (this.mDataList.size() == 0)
    {
      Message localMessage = this.d.obtainMessage(0);
      this.d.sendMessage(localMessage);
    }
    while (true)
    {
      return;
      this.d.sendEmptyMessage(1);
    }
  }

  protected final void b(kv paramkv)
  {
    if (!this.mDataList.contains(paramkv))
    {
      this.mDataList.add(paramkv);
      f().setDataList(a());
    }
    super.b(paramkv);
  }

  protected final void c(kv paramkv)
  {
    if (!this.mDataList.contains(paramkv))
    {
      this.mDataList.add(paramkv);
      f().setDataList(a());
    }
    super.c(paramkv);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  protected final void d()
  {
  }

  protected final void d(kv paramkv)
  {
    f().setDataList(a());
    super.d(paramkv);
  }

  protected final void e(kv paramkv)
  {
    if (this.mDataList.remove(paramkv))
    {
      f().setDataList(a());
      super.e(paramkv);
      if (this.mDataList.size() == 0)
      {
        Message localMessage = this.d.obtainMessage(0);
        this.d.sendMessage(localMessage);
      }
    }
  }

  public final View getFooterView()
  {
    return null;
  }

  public final View getHeaderView()
  {
    return null;
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    DownloadServiceBinder localDownloadServiceBinder = this.a;
    if (localDownloadServiceBinder == null);
    while (true)
    {
      return;
      List localList = localDownloadServiceBinder.getAllTasks();
      new StringBuilder("DownloadManagerListView allTasks ").append(localList.size()).toString();
      if ((localList == null) || (localList.size() == 0))
      {
        this.mHandler.sendEmptyMessage(-2);
        if (this.mDataList.size() == 0)
        {
          Message localMessage = this.d.obtainMessage(0);
          this.d.sendMessage(localMessage);
        }
        else
        {
          this.d.sendEmptyMessage(1);
        }
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          kv localkv = (kv)localIterator.next();
          if ((localkv.mState == 0) || (localkv.mState == 1) || (localkv.mState == 3) || (localkv.mState == -1) || (localkv.mState == 2))
            localArrayList.add(localkv);
        }
        new StringBuilder("DownloadManagerListView tempDataList ").append(localArrayList.size()).toString();
        this.mDataList.clear();
        this.mDataList.addAll(localArrayList);
        new StringBuilder("DownloadManagerListView mDataList ").append(this.mDataList.size()).toString();
        a_();
      }
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
      Intent localIntent2 = new Intent(localContext, MarketActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26063);
    nd.a().a(26050);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
    kv localkv = (kv)getDataList().get(i);
    ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
    ArrayList localArrayList = new ArrayList();
    localContextMenuDialog.setContextItemPosition(i);
    ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
    localContextMenuModel1.name = this.mContext.getString(2131427347);
    localContextMenuModel1.eventCode = 1;
    int j = localkv.mState;
    if (j == 0)
    {
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.mContext.getString(2131428329);
      localContextMenuModel2.eventCode = 8;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = this.mContext.getString(2131428331);
      localContextMenuModel3.eventCode = 10;
      localArrayList.add(localContextMenuModel3);
    }
    while (true)
    {
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new bma(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(localkv.d.getAppName());
      localContextMenuDialog.show();
      do
      {
        return;
        if ((j == 1) || (j == 2))
        {
          ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
          localContextMenuModel4.name = this.mContext.getString(2131428330);
          localContextMenuModel4.eventCode = 9;
          localArrayList.add(localContextMenuModel4);
          ContextMenuModel localContextMenuModel5 = new ContextMenuModel();
          localContextMenuModel5.name = this.mContext.getString(2131428331);
          localContextMenuModel5.eventCode = 10;
          localArrayList.add(localContextMenuModel5);
          break;
        }
      }
      while (j != 3);
      ContextMenuModel localContextMenuModel6 = new ContextMenuModel();
      localContextMenuModel6.name = this.mContext.getString(2131427342);
      localContextMenuModel6.eventCode = 2;
      localArrayList.add(localContextMenuModel6);
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel7 = new ContextMenuModel();
      localContextMenuModel7.name = this.mContext.getString(2131427340);
      localContextMenuModel7.eventCode = 3;
      localArrayList.add(localContextMenuModel7);
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    kv localkv = (kv)f().getDataList().get(paramInt);
    if (localkv.mState == 3)
    {
      if (localkv.d.getCertMD5() == null)
      {
        String str1 = localkv.mParentPath + File.separator + localkv.mName;
        if (str1 != null)
        {
          File localFile = new File(str1);
          boolean bool = localFile.exists();
          String str2 = null;
          if (bool)
          {
            String str3 = localFile.getAbsolutePath();
            str2 = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).getApkInfo(str3, 16).getCertMD5();
          }
          if (str2 != null)
            localkv.d.setCertMD5(str2);
        }
      }
      a(localkv.d, 2000005);
    }
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
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if (isReloadData())
      this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      return;
      if (this.b)
        this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427983);
  }

  public final void onStop()
  {
    super.onStop();
    this.b = true;
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428119);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)51);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bly
 * JD-Core Version:    0.6.2
 */