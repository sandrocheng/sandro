import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

public final class blh extends blt<kw>
{
  private PackageChangedManager a;
  private ArrayList<TabModel> b;
  private boolean d = false;
  private boolean e = false;
  private od f;
  private int g = 0;
  private abe h;
  private IPackageChangedListener i = new blm(this);

  public blh(Context paramContext)
  {
    super(paramContext);
  }

  private akv d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    return new akv(this, localArrayList);
  }

  private void e()
  {
    if ((this.e) && (this.mDataList.size() == this.g))
    {
      this.d = true;
      new blp(this).start();
      this.mHandler.removeMessages(1);
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final akv a()
  {
    return (akv)super.getAdapter();
  }

  public final void a(Intent paramIntent)
  {
    super.a(paramIntent);
    setEmptyText(2131429667);
  }

  public final void a(kw paramkw)
  {
    try
    {
      if (new File(paramkw.getApkPath()).delete())
      {
        ((akv)super.getAdapter()).c().remove(new Integer(((akv)super.getAdapter()).b(paramkw)));
        this.mDataList.remove(paramkw);
        this.mHandler.sendEmptyMessage(-2);
        ((akv)super.getAdapter()).a();
        ha.b(this.mContext, 2131427776);
        this.mHandler.sendEmptyMessage(3);
      }
      else
      {
        ha.b(this.mContext, 2131427777);
      }
    }
    catch (Exception localException)
    {
      ha.b(this.mContext, 2131427777);
    }
  }

  public final int b()
  {
    return 1;
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131427342, 0));
    localArrayList.add(new OperatingModel(1, 2131427340, 0));
    localArrayList.add(new OperatingModel(2, 2131427349, 2));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    ((OperatingModel)localArrayList.get(1)).setEnable(false);
    ((OperatingModel)localArrayList.get(2)).setEnable(false);
    return localArrayList;
  }

  public final View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903298, null);
  }

  public final boolean isPinnedHeaderListView()
  {
    return false;
  }

  public final void loadDataList()
  {
    this.d = false;
    this.e = false;
    this.g = 0;
    try
    {
      bln localbln = new bln(this);
      LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
      File[] arrayOfFile1 = Environment.getExternalStorageDirectory().listFiles(localbln);
      if (arrayOfFile1 != null)
        localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile1));
      while (localLinkedBlockingQueue.size() != 0)
      {
        File[] arrayOfFile2 = ((File)localLinkedBlockingQueue.poll()).listFiles(localbln);
        if (arrayOfFile2 != null)
          localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile2));
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      return;
      this.e = true;
      e();
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateLoadingTemplateUI = false;
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.a.addListener(this.i);
    nd.a().a(26045);
    this.f = new od(this.mContext);
    this.h = new abe();
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    if (localAdapterContextMenuInfo.position < this.mDataList.size())
    {
      kw localkw = (kw)this.mDataList.get(localAdapterContextMenuInfo.position);
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131429622);
      localDialog.setView(c(localkw));
      localDialog.setNegativeButton(2131427399, new blq(localDialog), 1);
      localDialog.show();
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onDestroy()
  {
    this.a.removeListener(this.i);
    this.f.e();
    ((AutoLoadingView)this.mFooterView.findViewById(2131230972)).setVisibility(8);
    ((AutoLoadingView)this.mFooterView.findViewById(2131230971)).setVisibility(8);
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setOptionButtonEnable(true);
    super.onDestroy();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      ((akv)super.getAdapter()).a();
      continue;
      synchronized (this.mDataList)
      {
        akv localakv2 = (akv)super.getAdapter();
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(new ListModel(this.mDataList, null, 1));
        localakv2.setDataList(localArrayList2);
        ((akv)super.getAdapter()).notifyDataSetChanged();
        getListView().setSelection(0);
      }
      ((akv)super.getAdapter()).a();
      int j = paramMessage.arg1;
      String str3 = this.mContext.getString(2131429635);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(j);
      String str4 = String.format(str3, arrayOfObject1);
      int k = paramMessage.arg2 - j;
      if (k > 0)
      {
        StringBuilder localStringBuilder = new StringBuilder().append(str4);
        String str5 = this.mContext.getString(2131429636);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(k);
        str4 = String.format(str5, arrayOfObject2);
      }
      ha.b(this.mContext, str4);
      this.mHandler.sendEmptyMessage(-2);
      continue;
      ft.a locala = new ft.a();
      ft.a(locala);
      String str1 = a.c(locala.a);
      String str2 = this.mContext.getString(2131429600) + str1 + "        " + this.mContext.getString(2131429601) + this.mDataList.size();
      if (getFrameworkTemplateUI() != null)
        getFrameworkTemplateUI().updateInfoBarText(str2);
      synchronized (this.mDataList)
      {
        akv localakv1 = (akv)super.getAdapter();
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new ListModel(this.mDataList, null, 1));
        localakv1.setDataList(localArrayList1);
        ((akv)super.getAdapter()).notifyDataSetChanged();
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= this.mDataList.size());
    while (true)
    {
      return;
      kw localkw = (kw)this.mDataList.get(paramInt);
      if (localkw.getPackageName() == null)
      {
        Dialog localDialog1 = new Dialog(this.mContext);
        localDialog1.setTitle(this.mContext.getResources().getString(2131428445));
        localDialog1.setMessage(localkw.getAppName() + this.mContext.getResources().getString(2131428446));
        localDialog1.setNegativeButton(2131427340, new blj(this, localkw, localDialog1), 1);
        localDialog1.setNegativeButton(2131427379, new blk(localDialog1), 2);
        localDialog1.show();
      }
      else if (a.a(this.c.getApkInfo(localkw.getApkPath(), 77), false) == null)
      {
        Dialog localDialog2 = new Dialog(this.mContext);
        localDialog2.setTitle(this.mContext.getResources().getString(2131428445));
        localDialog2.setMessage(localkw.getAppName() + this.mContext.getResources().getString(2131428447));
        localDialog2.setNegativeButton(2131427397, new bll(localDialog2), 2);
        localDialog2.show();
        this.mDataList.remove(localkw);
        this.mHandler.sendEmptyMessage(-2);
      }
      else
      {
        CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
        localCheckBoxView.onClick(localCheckBoxView);
      }
    }
  }

  public final void onLoadDataStart()
  {
    this.mFooterView.setVisibility(0);
    getListView().removeFooterView(this.mFooterView);
    getListView().addFooterView(this.mFooterView);
    ((AutoLoadingView)this.mFooterView.findViewById(2131230972)).startRotationAnimation();
    ((AutoLoadingView)this.mFooterView.findViewById(2131230971)).startRotationAnimation();
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setOptionButtonEnable(false);
    OperatingModel localOperatingModel = (OperatingModel)getOperatingBarDataList().get(2);
    localOperatingModel.setEnable(false);
    refreshOperatingBar(localOperatingModel);
    super.onLoadDataStart();
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
      while (true)
      {
        return;
        if (((akv)super.getAdapter()).c().size() == 0)
        {
          ha.b(this.mContext, 2131427792);
        }
        else
        {
          List localList = ((akv)super.getAdapter()).f();
          int k = ((akv)super.getAdapter()).c().size() - localList.size();
          if (k > 0)
          {
            Context localContext = this.mContext;
            String str = this.mContext.getString(2131429637);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(k);
            ha.b(localContext, String.format(str, arrayOfObject));
          }
          else
          {
            c(localList);
            continue;
            int j = ((akv)super.getAdapter()).c().size();
            if (j == 0)
            {
              ha.b(this.mContext, 2131427793);
            }
            else
            {
              Dialog localDialog = new Dialog(this.mContext);
              localDialog.setTitle(this.mContext.getResources().getString(2131428434));
              localDialog.setMessage(this.mContext.getResources().getString(2131428500) + j + this.mContext.getResources().getString(2131428583));
              localDialog.setPositiveButton(2131427397, new blr(this, localDialog), 1);
              localDialog.setNegativeButton(2131427379, new bls(localDialog), 2);
              localDialog.show();
            }
          }
        }
      }
    case 2:
    }
    if (((akv)super.getAdapter()).c().size() == ((akv)super.getAdapter()).b())
    {
      paramOperatingModel.setCheck(false);
      ((akv)super.getAdapter()).a(false);
    }
    while (true)
    {
      refreshOperatingBar(paramOperatingModel);
      break;
      paramOperatingModel.setCheck(true);
      ((akv)super.getAdapter()).a(true);
    }
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    if (!this.d);
    int n;
    int i1;
    int i2;
    while (true)
    {
      return;
      switch (paramInt)
      {
      default:
        break;
      case 0:
        while (true)
        {
          List localList6;
          synchronized (this.mDataList)
          {
            localList6 = this.mDataList;
            if ((localList6 == null) || (localList6.size() == 0))
              this.mHandler.sendEmptyMessage(1);
          }
          Collections.sort(localList6, new gx.a((byte)0));
        }
      case 1:
        synchronized (this.mDataList)
        {
          List localList4 = this.mDataList;
          n = localList4.size();
          i1 = 0;
          break label402;
          if (i2 > i1)
            if (((kw)localList4.get(i2)).getLastModifiedTime() > ((kw)localList4.get(i2 - 1)).getLastModifiedTime())
            {
              kw localkw2 = (kw)localList4.get(i2);
              localList4.set(i2, localList4.get(i2 - 1));
              localList4.set(i2 - 1, localkw2);
              break label418;
              label237: this.mHandler.sendEmptyMessage(1);
            }
        }
      case 2:
      }
    }
    label402: label418: label428: label430: label446: label452: label456: 
    while (true)
    {
      int j;
      int k;
      int m;
      synchronized (this.mDataList)
      {
        List localList2 = this.mDataList;
        j = localList2.size();
        k = 0;
        break label430;
        if (m <= k)
          break label452;
        if (((kw)localList2.get(m)).getSize() <= ((kw)localList2.get(m - 1)).getSize())
          break label446;
        kw localkw1 = (kw)localList2.get(m);
        localList2.set(m, localList2.get(m - 1));
        localList2.set(m - 1, localkw1);
        break label446;
        this.mHandler.sendEmptyMessage(1);
      }
      while (true)
      {
        if (i1 >= n)
          break label428;
        i2 = n - 1;
        break;
        i2--;
        break;
        i1++;
      }
      break label237;
      while (true)
      {
        if (k >= j)
          break label456;
        m = j - 1;
        break;
        m--;
        break;
        k++;
      }
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
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        if (this.d)
          break;
      }
      this.mDataList.clear();
      ((akv)super.getAdapter()).clearDataList();
      ((akv)super.getAdapter()).notifyDataSetChanged();
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if ((this.mDataList != null) && (paramMenu.findItem(44) == null))
      paramMenu.add(0, 44, 4, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessageDelayed(0, 1000L);
    new Thread(new bli(this)).start();
  }

  public final void onStart()
  {
    super.onStart();
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      setEmptyText(2131430172);
      this.mFooterView.setVisibility(8);
      getListView().removeFooterView(this.mFooterView);
    }
    while (true)
    {
      return;
      if (isReloadData())
      {
        setReloadData(false);
        this.mHandler.sendEmptyMessage(-1);
      }
      else
      {
        this.mHandler.sendEmptyMessage(-2);
      }
    }
  }

  public final void refreshListData()
  {
    this.mHandler.sendEmptyMessage(1);
    setReloadData(false);
    if (this.d)
    {
      this.mFooterView.setVisibility(8);
      getListView().removeFooterView(this.mFooterView);
      OperatingModel localOperatingModel2 = (OperatingModel)getOperatingBarDataList().get(2);
      localOperatingModel2.setEnable(true);
      refreshOperatingBar(localOperatingModel2);
      if (getFrameworkTemplateUI() != null)
        getFrameworkTemplateUI().setOptionButtonEnable(true);
    }
    if (this.mDataList.size() == 0)
    {
      setEmptyText(2131428739);
      OperatingModel localOperatingModel1 = (OperatingModel)getOperatingBarDataList().get(2);
      localOperatingModel1.setEnable(false);
      refreshOperatingBar(localOperatingModel1);
    }
    this.mHandler.sendEmptyMessage(3);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427694);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
    paramFrameworkTemplateUI.updateInfoBarText("");
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    if (this.b == null)
    {
      this.b = new ArrayList(3);
      TabModel localTabModel1 = new TabModel(1, 0, this.mContext.getResources().getDrawable(2130838055), null, this.mContext.getString(2131430166));
      this.b.add(localTabModel1);
      TabModel localTabModel2 = new TabModel(0, 0, this.mContext.getResources().getDrawable(2130838053), null, this.mContext.getString(2131430167));
      this.b.add(localTabModel2);
      TabModel localTabModel3 = new TabModel(2, 0, this.mContext.getResources().getDrawable(2130838054), null, this.mContext.getString(2131430168));
      this.b.add(localTabModel3);
    }
    paramFrameworkTemplateUI.setOptionButtonPopStyle(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blh
 * JD-Core Version:    0.6.2
 */