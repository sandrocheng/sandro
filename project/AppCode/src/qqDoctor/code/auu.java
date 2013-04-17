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
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.BatchOperateActivity;
import com.tencent.qqpimsecure.ui.activity.BatchReportActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.List;

public final class auu extends BaseListView<ky>
{
  private BaseView a;
  private sy b;
  private zs c;
  private ho d;
  private ki e;
  private hi f;
  private jm g;
  private jb h;
  private boolean i = false;
  private boolean j = false;
  private dv k = new auv(this);
  private View.OnClickListener l = new avc(this);
  private View.OnClickListener m = new auw(this);
  private View.OnClickListener n = new auy(this);

  public auu(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.a = paramBaseView;
  }

  public final void a(ky paramky)
  {
    if (paramky.e == 0)
    {
      String[] arrayOfString1 = this.mContext.getResources().getStringArray(2131165229);
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
      ArrayList localArrayList = new ArrayList();
      for (int i1 = 0; i1 < arrayOfString1.length; i1++)
      {
        ContextMenuModel localContextMenuModel = new ContextMenuModel();
        String[] arrayOfString2 = arrayOfString1[i1].split(",");
        localContextMenuModel.name = arrayOfString2[1];
        localContextMenuModel.eventCode = Integer.valueOf(arrayOfString2[0]).intValue();
        localArrayList.add(localContextMenuModel);
      }
      localContextMenuDialog.setIcon(2130838142);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new avd(this, localContextMenuDialog, paramky));
      String str = this.mContext.getString(2131428944);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramky.phonenum;
      localContextMenuDialog.setTitle(String.format(str, arrayOfObject));
      localContextMenuDialog.setOnCancelListener(new ave(this, paramky));
      localContextMenuDialog.show();
    }
    while (true)
    {
      return;
      this.h.b(paramky.phonenum, 0);
      ha.a(this.mContext, 2131428941);
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aif(localContext, localArrayList);
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
    if (!this.j)
    {
      this.j = true;
      this.mDataList = this.f.b();
      int i1 = this.mDataList.size();
      for (int i2 = 0; i2 < i1; i2++)
      {
        ky localky2 = (ky)this.mDataList.get(i2);
        localky2.e = this.h.a(localky2.phonenum);
      }
      ky localky1 = new ky();
      this.mDataList.add(0, localky1);
      ((aif)getAdapter()).a(this.l);
      ((aif)getAdapter()).b(this.m);
      ((aif)getAdapter()).c(this.n);
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ho.a();
    this.e = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.b = sy.b(getActivity());
    this.f = new hi(0);
    this.c = new zs();
    if (jm.b == null)
      jm.b = new jm();
    this.g = jm.b;
    this.h = jb.a();
    this.d.o(0);
    getActivity().registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      i1 = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (i1 != -2)
        break label455;
    }
    label268: label432: label455: for (int i2 = ((Integer)this.mListView.getTag()).intValue(); ; i2 = i1)
    {
      if (i2 < 0);
      while (!this.i)
      {
        return;
        i1 = ((Integer)this.mListView.getTag()).intValue();
        break;
      }
      this.i = false;
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
      localContextMenuDialog.setContextItemPosition(i2);
      ky localky = (ky)this.mAdapter.getItem(i2);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.mContext.getString(2131427728);
      localContextMenuModel1.eventCode = 9;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.mContext.getString(2131427340);
      localContextMenuModel2.eventCode = 2;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      StringBuilder localStringBuilder = new StringBuilder().append(this.mContext.getString(2131427394));
      String str1;
      String str3;
      if ((localky.name == null) || (localky.name.equals("")))
      {
        str1 = localky.phonenum;
        localContextMenuModel3.name = str1;
        localContextMenuModel3.eventCode = 8;
        localArrayList.add(localContextMenuModel3);
        ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
        localContextMenuModel4.name = this.mContext.getString(2131427723);
        localContextMenuModel4.eventCode = 6;
        localArrayList.add(localContextMenuModel4);
        localContextMenuDialog.setDataAdapter(localArrayList);
        localContextMenuDialog.setOnItemClickListener(new auz(this, localContextMenuDialog));
        String str2 = localky.name;
        str3 = localky.phonenum;
        if ((str3 != null) && (str3.length() < 3))
          str3 = null;
        if ((str2 == null) || (str2.length() <= 0))
          break label432;
        str3 = str2;
      }
      while (true)
      {
        localContextMenuDialog.setTitle(str3);
        localContextMenuDialog.show();
        break;
        str1 = localky.name;
        break label268;
        if (str3 == null)
          str3 = this.mContext.getResources().getString(2131428361);
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 3:
    }
    while (true)
    {
      return;
      int i1 = ((Integer)paramMessage.obj).intValue();
      a.a((Activity)this.mContext, i1, this);
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    ky localky = (ky)getDataList().get(paramInt);
    boolean bool;
    if (!localky.f)
    {
      bool = true;
      if (((ky)getDataList().get(paramInt)).id != 0)
        break label95;
      Intent localIntent = new Intent(this.mContext, BatchReportActivity.class);
      localIntent.putExtra("OPERATE_KEY", 5);
      this.mContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label95: for (int i1 = 1; i1 < this.mDataList.size(); i1++)
        ((ky)this.mDataList.get(i1)).f = true;
      localky.f = bool;
      getAdapter().notifyDataSetChanged();
    }
  }

  public final void onLoadDataStart()
  {
    String str1 = "";
    switch (this.d.b())
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      String str2 = String.format(this.mContext.getString(2131428749), new Object[] { str1 });
      if (this.a.getFrameworkTemplateUI() != null)
        this.a.getFrameworkTemplateUI().updateInfoBarText(str2);
      return;
      str1 = this.mContext.getString(2131427964);
      continue;
      str1 = this.mContext.getString(2131427965);
      continue;
      str1 = this.mContext.getString(2131427966);
      continue;
      str1 = this.mContext.getString(2131427967);
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    int i1 = paramMenuModel.getId();
    int i2;
    if (this.mDataList.size() == 0)
    {
      i2 = 1;
      switch (i1)
      {
      default:
      case 19:
      case 9:
      }
    }
    while (true)
    {
      return true;
      i2 = 0;
      break;
      if (i2 == 0)
      {
        this.b.a(1, new ava(this));
      }
      else
      {
        ha.a(this.mContext, 2131427764);
        continue;
        if (i2 == 0)
        {
          Intent localIntent = new Intent(this.mContext, BatchOperateActivity.class);
          localIntent.putExtra("OPERATE_KEY", 1);
          this.mContext.startActivity(localIntent);
        }
        else
        {
          ha.a(this.mContext, 2131427764);
        }
      }
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null);
    for (int i1 = this.mDataList.size(); ; i1 = 0)
    {
      if (i1 == 0);
      for (boolean bool = true; ; bool = false)
      {
        a.a(paramMenu, false, bool);
        return true;
      }
    }
  }

  public final void onResume()
  {
    ((aif)getAdapter()).a();
    if ((this.d.G() > 0) && (this.a != null) && ((this.a instanceof awg)))
    {
      this.d.d(0);
      ((awg)this.a).a();
    }
    if ((this.d.N() > 0) && (this.a != null) && ((this.a instanceof bki)))
    {
      this.d.h(0);
      ((bki)this.a).a();
    }
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    this.j = false;
    if ((this.a != null) && ((this.a instanceof awg)))
      ((awg)this.a).a();
    if (this.mDataList.size() > 1)
      hideEmptyView();
    while (true)
    {
      aif localaif = (aif)getAdapter();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(this.mDataList, null, 1, false));
      localaif.setDataList(localArrayList);
      getAdapter().notifyDataSetChanged();
      setReloadData(false);
      return;
      setEmptyText(2131428806);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     auu
 * JD-Core Version:    0.6.2
 */