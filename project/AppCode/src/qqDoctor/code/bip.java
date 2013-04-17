import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.SecureSmsDialogueActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class bip extends BaseListView<mk>
{
  private jp a;
  private hq b;
  private sy c;
  private BaseView d;
  private boolean e = false;
  private BroadcastReceiver f = new biq(this);

  public bip(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.d = paramBaseView;
  }

  private void a()
  {
    if (rj.a().e());
    String str1;
    Object[] arrayOfObject;
    for (String str2 = this.mContext.getString(2131427803); ; str2 = String.format(str1, arrayOfObject))
    {
      if ((this.d != null) && (this.d.getFrameworkTemplateUI() != null))
        this.d.getFrameworkTemplateUI().updateInfoBarText(str2);
      return;
      str1 = this.mContext.getString(2131427802);
      arrayOfObject = new Object[2];
      arrayOfObject[0] = String.valueOf(this.a.b());
      arrayOfObject[1] = String.valueOf(this.a.e());
    }
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ais(localContext, localArrayList);
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.d.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    if (!this.e)
    {
      this.e = true;
      List localList = this.a.a();
      this.mDataList.clear();
      int i = 0;
      if (i < localList.size())
      {
        mk localmk1 = (mk)localList.get(i);
        int j = 0;
        label56: String str2;
        String str3;
        int k;
        int m;
        boolean bool;
        label133: mk localmk2;
        if (j < this.mDataList.size())
        {
          str2 = ((mk)this.mDataList.get(j)).phonenum;
          str3 = localmk1.phonenum;
          k = str2.length();
          m = str3.length();
          if ((k <= 8) || (m <= 8))
          {
            bool = str2.equals(str3);
            if (!bool)
              break label238;
            localmk2 = (mk)this.mDataList.get(j);
            label154: if (localmk2 == null)
              break label250;
            localmk2.n = (1 + localmk2.n);
            if ((localmk1.a == 0) && (localmk1.type != 2))
              localmk2.o = (1 + localmk2.o);
          }
        }
        while (true)
        {
          i++;
          break;
          bool = str2.substring(k - 8, k).equals(str3.substring(m - 8, m));
          break label133;
          label238: j++;
          break label56;
          localmk2 = null;
          break label154;
          label250: localmk1.n = (1 + localmk1.n);
          if ((localmk1.a == 0) && (localmk1.type != 2))
            localmk1.o = (1 + localmk1.o);
          String str1 = this.b.c(localmk1.phonenum);
          if ((str1 != null) && (str1.length() > 0))
            localmk1.name = str1;
          this.mDataList.add(localmk1);
        }
      }
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts");
    this.b = new hq(2);
    this.c = sy.a(getActivity());
    getActivity().registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      i = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (i != -2)
        break label431;
    }
    label431: for (int j = ((Integer)this.mListView.getTag()).intValue(); ; j = i)
    {
      if (j < 0);
      ContextMenuDialog localContextMenuDialog;
      mk localmk;
      do
      {
        return;
        i = ((Integer)this.mListView.getTag()).intValue();
        break;
        localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
        localContextMenuDialog.setContextItemPosition(j);
        localmk = (mk)((ais)getAdapter()).getItem(j);
      }
      while (localmk.id == -1);
      String str1 = localmk.phonenum;
      String str2 = localmk.name;
      ArrayList localArrayList = new ArrayList();
      if ((fu.e(str1) != null) && (str1 != null) && (str1.length() > 2))
      {
        ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
        StringBuilder localStringBuilder = new StringBuilder().append(this.mContext.getString(2131427394));
        if ((str2 == null) || (str2.equals("")))
          str2 = str1;
        localContextMenuModel1.name = str2;
        localContextMenuModel1.eventCode = 2;
        localArrayList.add(localContextMenuModel1);
        ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
        localContextMenuModel2.name = this.mContext.getString(2131427340);
        localContextMenuModel2.eventCode = 3;
        localArrayList.add(localContextMenuModel2);
        ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
        localContextMenuModel3.name = this.mContext.getString(2131427720);
        localContextMenuModel3.eventCode = 4;
        localArrayList.add(localContextMenuModel3);
      }
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new bir(this, localContextMenuDialog));
      String str3 = localmk.name;
      String str4 = localmk.a();
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

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    a();
    mk localmk = (mk)getDataList().get(paramInt);
    Intent localIntent = new Intent();
    localIntent.putExtra("smslogname", localmk.name);
    localIntent.putExtra("smslogphonenum", localmk.phonenum);
    localIntent.setClass(this.mContext, SecureSmsDialogueActivity.class);
    this.mContext.startActivity(localIntent);
  }

  public final void onLoadDataStart()
  {
    a();
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 19:
    }
    while (true)
    {
      return true;
      if ((this.mDataList == null) || (this.mDataList.size() == 0))
      {
        ha.a(this.mContext, this.mContext.getString(2131427761));
      }
      else
      {
        Dialog localDialog = new Dialog(getActivity());
        localDialog.setTitle(2131427376);
        localDialog.setMessage(2131427821);
        localDialog.setPositiveButton(2131427397, new biv(this, localDialog), 2);
        localDialog.setNegativeButton(2131427379, new biw(localDialog), 2);
        localDialog.show();
      }
    }
  }

  public final void onPause()
  {
    super.onPause();
    this.mContext.unregisterReceiver(this.f);
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    int i;
    int j;
    label37: MenuItem localMenuItem;
    if (this.mDataList.size() <= 0)
    {
      i = 1;
      if (paramMenu.findItem(19) == null)
      {
        if (i == 0)
          break label87;
        j = -1;
        localMenuItem = paramMenu.add(j, 19, 0, QQPimApplication.a().getResources().getString(2131428652));
        if (i == 0)
          break label92;
      }
    }
    label87: label92: for (int k = 2130838011; ; k = 2130838009)
    {
      localMenuItem.setIcon(k);
      return true;
      i = 0;
      break;
      j = 0;
      break label37;
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
    this.mContext.registerReceiver(this.f, new IntentFilter(yq.a));
  }

  public final void refreshListData()
  {
    this.e = false;
    if ((this.d != null) && ((this.d instanceof bki)))
      ((bki)this.d).a();
    ais localais = (ais)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localais.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    if (this.mDataList.size() > 0)
      hideEmptyView();
    while (true)
    {
      return;
      if (this.b.c() == 0)
        setEmptyText(2131428809);
      else
        setEmptyText(2131428807);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bip
 * JD-Core Version:    0.6.2
 */