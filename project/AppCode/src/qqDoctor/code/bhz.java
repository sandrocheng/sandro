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

public final class bhz extends BaseListView
{
  private BaseView a;
  private sy b;
  private ho c;
  private hi d;
  private hq e;
  private boolean f = false;
  private dv g = new bia(this);
  private View.OnClickListener h = new bid(this);
  private View.OnClickListener i = new bie(this);
  private View.OnClickListener j = new bif(this);

  public bhz(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.a = paramBaseView;
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aiq(localContext, localArrayList);
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
    if (!this.f)
    {
      this.f = true;
      this.mDataList = kz.a(this.d.b());
      for (int k = 0; k < this.mDataList.size(); k++)
      {
        kz localkz = (kz)this.mDataList.get(k);
        String str = this.e.c(localkz.phonenum);
        if ((str != null) && (str.length() > 0))
          localkz.name = str;
      }
      ((aiq)getAdapter()).a(this.h);
      ((aiq)getAdapter()).b(this.i);
      ((aiq)getAdapter()).c(this.j);
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
    this.c = ho.a();
    ((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
    this.b = sy.a(getActivity());
    this.d = new hi(1);
    this.e = new hq(2);
    nd.a();
    getActivity().registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int k;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      k = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (k != -2)
        break label399;
    }
    label399: for (int m = ((Integer)this.mListView.getTag()).intValue(); ; m = k)
    {
      if (m < 0)
      {
        return;
        k = ((Integer)this.mListView.getTag()).intValue();
        break;
      }
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
      localContextMenuDialog.setContextItemPosition(m);
      ky localky = (ky)this.mAdapter.getItem(m);
      String str1 = localky.phonenum;
      String str2 = localky.name;
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      StringBuilder localStringBuilder = new StringBuilder().append(this.mContext.getString(2131427394));
      if ((str2 == null) || (str2.equals("")))
        str2 = str1;
      localContextMenuModel1.name = str2;
      localContextMenuModel1.eventCode = 8;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.mContext.getString(2131427723);
      localContextMenuModel2.eventCode = 6;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = this.mContext.getString(2131427340);
      localContextMenuModel3.eventCode = 2;
      localArrayList.add(localContextMenuModel3);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new bib(this, localContextMenuDialog));
      String str3 = localky.name;
      String str4 = localky.phonenum;
      if ((str4 != null) && (str4.length() < 3))
        str4 = null;
      if ((str3 != null) && (str3.length() > 0))
        str4 = str3;
      while (true)
      {
        localContextMenuDialog.setTitle(str4);
        localContextMenuDialog.show();
        break;
        if (str4 == null)
          str4 = this.mContext.getResources().getString(2131428361);
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
      int k = ((Integer)paramMessage.obj).intValue();
      a.a((Activity)this.mContext, k, this);
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    ky localky = (ky)getDataList().get(paramInt);
    if (!localky.f);
    for (boolean bool = true; ; bool = false)
      for (int k = 0; k < this.mDataList.size(); k++)
        ((ky)this.mDataList.get(k)).f = true;
    localky.f = bool;
    getAdapter().notifyDataSetChanged();
  }

  public final void onLoadDataStart()
  {
    String str1 = this.mContext.getString(2131427804);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = String.valueOf(this.d.c());
    String str2 = String.format(str1, arrayOfObject);
    this.a.getFrameworkTemplateUI().updateInfoBarText(str2);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    int k = paramMenuModel.getId();
    int m;
    if (this.mDataList.size() == 0)
    {
      m = 1;
      switch (k)
      {
      default:
      case 19:
      case 9:
      }
    }
    while (true)
    {
      return true;
      m = 0;
      break;
      if (m == 0)
      {
        this.b.a(1, new bic(this));
      }
      else
      {
        ha.a(this.mContext, 2131427763);
        continue;
        if (m == 0)
        {
          Intent localIntent = new Intent(this.mContext, BatchOperateActivity.class);
          localIntent.putExtra("OPERATE_KEY", 2);
          this.mContext.startActivity(localIntent);
        }
        else
        {
          ha.a(this.mContext, 2131427763);
        }
      }
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null);
    for (int k = this.mDataList.size(); ; k = 0)
    {
      boolean bool = false;
      if (k == 0)
        bool = true;
      a.a(paramMenu, true, bool);
      return true;
    }
  }

  public final void onResume()
  {
    ((aiq)getAdapter()).a();
    if ((this.c.N() > 0) && (this.a != null) && ((this.a instanceof bki)))
    {
      this.c.h(0);
      ((bki)this.a).a();
    }
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    this.f = false;
    if ((this.a != null) && ((this.a instanceof bki)))
      ((bki)this.a).a();
    if (this.mDataList.size() > 0)
      hideEmptyView();
    while (true)
    {
      aiq localaiq = (aiq)getAdapter();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(this.mDataList, null, 1, false));
      localaiq.setDataList(localArrayList);
      getAdapter().notifyDataSetChanged();
      setReloadData(false);
      return;
      if (this.e.c() == 0)
        setEmptyText(2131428809);
      else
        setEmptyText(2131428808);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhz
 * JD-Core Version:    0.6.2
 */