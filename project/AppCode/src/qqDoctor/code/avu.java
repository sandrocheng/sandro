import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.QQPimApplication;
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
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.List;

public final class avu extends BaseListView
{
  private sy a;
  private zs b;
  private jp c;
  private ho d;
  private ki e;
  private hq f;
  private boolean g = false;
  private BaseView h;
  private boolean i = false;
  private boolean j = false;
  private jm k;
  private nd l;
  private uk m;
  private dv n = new avv(this);
  private View.OnClickListener o = new awd(this);
  private View.OnClickListener p = new awe(this);
  private View.OnClickListener q = new awf(this);
  private View.OnClickListener r = new avw(this);

  public avu(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.h = paramBaseView;
  }

  private void a()
  {
    int i1 = this.d.b();
    String str1 = "";
    if (i1 == 0)
      str1 = this.mContext.getString(2131427964);
    while (true)
    {
      String str2 = String.format(this.mContext.getString(2131428749), new Object[] { str1 });
      if (this.h.getFrameworkTemplateUI() != null)
        this.h.getFrameworkTemplateUI().updateInfoBarText(str2);
      return;
      if (i1 == 1)
        str1 = this.mContext.getString(2131427965);
      else if (i1 == 2)
        str1 = this.mContext.getString(2131427966);
      else if (i1 == 3)
        str1 = this.mContext.getString(2131427967);
    }
  }

  public final void a(int paramInt)
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131427395);
    localDialog.setMessage(2131427851);
    localDialog.setPositiveButton(2131427397, new avz(this, paramInt, localDialog), 2);
    localDialog.setPositiveButton(2131427379, new awa(localDialog), 2);
    localDialog.show();
  }

  public final void a(mk parammk)
  {
    Dialog localDialog;
    if (a.h(this.mContext))
    {
      localDialog = new Dialog(this.mContext);
      localDialog.setIcon(2130838140);
      localDialog.setTitle(2131428486);
      if (this.d.aH())
      {
        localDialog.setMessage(2131428490);
        localDialog.setPositiveButton(2131427397, new awb(localDialog), 2);
        localDialog.show();
        this.d.aI();
        mh localmh = new mh();
        localmh.a = 0;
        localmh.b = fu.f(fu.a(parammk.phonenum)).hashCode();
        localmh.c = parammk.date;
        localmh.d = parammk.body.hashCode();
        this.k.a(localmh);
        this.k.c(0);
        parammk.k = true;
      }
    }
    while (true)
    {
      new zv(this.b, true, parammk, null).start();
      return;
      if ((int)(2.0D * Math.random()) == 0)
      {
        localDialog.setMessage(2131428491);
        break;
      }
      localDialog.setMessage(2131428492);
      break;
      a.a((Activity)this.mContext, -1001, this);
    }
  }

  public final boolean b(int paramInt)
  {
    mk localmk = (mk)this.mAdapter.getItem(paramInt);
    boolean bool = this.c.a(localmk);
    if (bool);
    for (int i1 = 2131427781; ; i1 = 2131427789)
    {
      ha.a(this.mContext, i1);
      if (bool)
      {
        if (fu.e(localmk.a()) != null)
        {
          vk.a locala = new vk.a(localmk, 15);
          this.a.a(localmk.name, localmk.a(), 1, locala, this.n);
        }
        this.mHandler.sendEmptyMessage(-1);
        this.b.a(localmk, true, 12);
      }
      return bool;
    }
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aiw(localContext, localArrayList, this);
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.h.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    if (!this.i)
    {
      this.i = true;
      this.mDataList.clear();
      this.mDataList.addAll(this.c.a());
      for (int i1 = 0; i1 < this.mDataList.size(); i1++)
      {
        mk localmk2 = (mk)this.mDataList.get(i1);
        localmk2.k = this.k.a(localmk2);
        String str = this.f.c(localmk2.phonenum);
        if ((str != null) && (!"".equals(str)) && (str.length() > 2))
          localmk2.name = str.substring(0, -2 + str.length());
      }
      mk localmk1 = new mk();
      this.mDataList.add(0, localmk1);
      ((aiw)getAdapter()).a(this.p);
      ((aiw)getAdapter()).b(this.o);
      ((aiw)getAdapter()).c(this.q);
      ((aiw)getAdapter()).d(this.r);
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onBackClick()
  {
    super.onBackClick();
    if (ug.g == null)
      ug.g = new ug();
    if (ug.g != null)
    {
      if (ug.g == null)
        ug.g = new ug();
      ug.g.a();
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.b = new zs();
    this.d = ho.a();
    this.a = sy.b(getActivity());
    this.c = new jp("smslog", "mms_pdu", "mms_parts");
    this.f = new hq(0);
    if (jm.b == null)
      jm.b = new jm();
    this.k = jm.b;
    getActivity().registerForContextMenu(getListView());
    this.m = new uk();
    this.l = nd.a();
    this.mHandler.sendEmptyMessage(-1);
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
        break label488;
    }
    label196: label459: label465: label488: for (int i2 = ((Integer)this.mListView.getTag()).intValue(); ; i2 = i1)
    {
      if (i2 < 0);
      mk localmk;
      ContextMenuDialog localContextMenuDialog;
      String str1;
      ArrayList localArrayList;
      do
      {
        do
        {
          return;
          i1 = ((Integer)this.mListView.getTag()).intValue();
          break;
          localmk = (mk)this.mAdapter.getItem(i2);
        }
        while (localmk.id == 0);
        localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
        localContextMenuDialog.setContextItemPosition(i2);
        str1 = localmk.phonenum;
        localArrayList = new ArrayList();
      }
      while (!this.g);
      this.g = false;
      ContextMenuModel localContextMenuModel4;
      int i3;
      label236: String str3;
      if ((localmk.mmsData != null) && (u.a().b() <= 1))
      {
        localContextMenuModel4 = new ContextMenuModel();
        if (localmk.k)
        {
          localContextMenuModel4.name = this.mContext.getString(2131427413);
          localContextMenuModel4.eventCode = 11;
          localArrayList.add(localContextMenuModel4);
        }
      }
      else
      {
        if ((str1 == null) || (str1.length() <= 2) || (fu.e(str1) == null))
          break label459;
        i3 = 1;
        if (i3 != 0)
        {
          ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
          localContextMenuModel1.name = this.mContext.getString(2131427728);
          localContextMenuModel1.eventCode = 10;
          localArrayList.add(localContextMenuModel1);
          ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
          localContextMenuModel2.name = this.mContext.getString(2131427727);
          localContextMenuModel2.eventCode = 5;
          localArrayList.add(localContextMenuModel2);
        }
        ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
        localContextMenuModel3.name = this.mContext.getString(2131427720);
        localContextMenuModel3.eventCode = 3;
        localArrayList.add(localContextMenuModel3);
        localContextMenuDialog.setDataAdapter(localArrayList);
        localContextMenuDialog.setOnItemClickListener(new avy(this, localContextMenuDialog));
        String str2 = localmk.name;
        str3 = localmk.a();
        if ((str3 != null) && (str3.length() < 3))
          str3 = null;
        if ((str2 == null) || (str2.length() <= 0))
          break label465;
        str3 = str2;
      }
      while (true)
      {
        localContextMenuDialog.setTitle(str3);
        localContextMenuDialog.show();
        break;
        localContextMenuModel4.name = this.mContext.getString(2131427411);
        break label196;
        i3 = 0;
        break label236;
        if (str3 == null)
          str3 = this.mContext.getResources().getString(2131428361);
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if (ug.g == null)
      ug.g = new ug();
    if (ug.g != null)
    {
      if (ug.g == null)
        ug.g = new ug();
      ug.g.a();
    }
    if (this.m != null)
      this.m.e();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    mk localmk = (mk)getDataList().get(paramInt);
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    if (localmk.id == 0)
    {
      Intent localIntent = new Intent(this.mContext, BatchReportActivity.class);
      localIntent.putExtra("OPERATE_KEY", 3);
      this.mContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (localmk.a == 0)
      {
        localmk.a = 1;
        this.c.b(localmk.id);
        if ((this.h != null) && ((this.h instanceof awg)))
          ((awg)this.h).a();
      }
      boolean bool1 = localmk.m;
      for (int i1 = 0; i1 < this.mDataList.size(); i1++)
        ((mk)this.mDataList.get(i1)).m = true;
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      localmk.m = bool2;
      getAdapter().notifyDataSetChanged();
      a();
    }
  }

  public final void onLoadDataStart()
  {
    if (this.j)
      a();
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    int i1 = paramMenuModel.getId();
    int i2;
    if (this.mDataList != null)
      if (this.mDataList.size() < 2)
        i2 = 1;
    while (true)
    {
      switch (i1)
      {
      default:
      case 55:
      case 19:
      case 9:
      }
      while (true)
      {
        return true;
        i2 = 0;
        break;
        if (i2 == 0)
        {
          ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
          ArrayList localArrayList = new ArrayList();
          ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
          localContextMenuModel1.name = this.mContext.getString(2131429200);
          localContextMenuModel1.eventCode = 0;
          localArrayList.add(localContextMenuModel1);
          ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
          localContextMenuModel2.name = this.mContext.getString(2131429201);
          localContextMenuModel2.eventCode = 1;
          localArrayList.add(localContextMenuModel2);
          localContextMenuDialog.setDataAdapter(localArrayList);
          localContextMenuDialog.setOnItemClickListener(new avx(this, localContextMenuDialog));
          localContextMenuDialog.setTitle(2131428651);
          localContextMenuDialog.show();
        }
        else
        {
          ha.a(this.mContext, 2131427762);
          continue;
          if (i2 == 0)
          {
            this.a.a(0, new awc(this));
          }
          else
          {
            ha.a(this.mContext, 2131427762);
            continue;
            if (i2 == 0)
            {
              Intent localIntent = new Intent(this.mContext, BatchOperateActivity.class);
              localIntent.putExtra("OPERATE_KEY", 0);
              this.mContext.startActivity(localIntent);
            }
            else
            {
              ha.a(this.mContext, 2131427762);
            }
          }
        }
      }
      i2 = 0;
    }
  }

  public final void onPause()
  {
    this.j = false;
    super.onPause();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    int i1 = -1;
    paramMenu.clear();
    if (this.mDataList != null);
    for (int i2 = this.mDataList.size(); ; i2 = 0)
    {
      int i3;
      int i5;
      label52: int i6;
      label87: label113: MenuItem localMenuItem1;
      if (i2 < 2)
      {
        i3 = 1;
        if (paramMenu.findItem(19) == null)
        {
          if (i3 == 0)
            break label165;
          i5 = i1;
          MenuItem localMenuItem2 = paramMenu.add(i5, 19, 0, QQPimApplication.a().getResources().getString(2131428652));
          if (i3 == 0)
            break label171;
          i6 = 2130838011;
          localMenuItem2.setIcon(i6);
        }
        if (paramMenu.findItem(9) == null)
        {
          if (i3 == 0)
            break label179;
          localMenuItem1 = paramMenu.add(i1, 9, 0, QQPimApplication.a().getResources().getString(2131427377));
          if (i3 == 0)
            break label184;
        }
      }
      label165: label171: label179: label184: for (int i4 = 2130838008; ; i4 = 2130838010)
      {
        localMenuItem1.setIcon(i4);
        return true;
        i3 = 0;
        break;
        i5 = 0;
        break label52;
        i6 = 2130838009;
        break label87;
        i1 = 0;
        break label113;
      }
    }
  }

  public final void onResume()
  {
    this.j = true;
    this.mHandler.sendEmptyMessage(-1);
    ((aiw)getAdapter()).a();
  }

  public final void onRetry()
  {
    int i1 = ((Integer)this.mListView.getTag()).intValue();
    a((mk)this.mDataList.get(i1));
  }

  public final void onStart()
  {
    super.onStart();
  }

  public final void refreshListData()
  {
    this.i = false;
    if ((this.h != null) && ((this.h instanceof awg)))
      ((awg)this.h).a();
    this.c.d();
    if (this.mDataList.size() > 1)
      hideEmptyView();
    while (true)
    {
      aiw localaiw = (aiw)getAdapter();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(this.mDataList, null, 1, false));
      localaiw.setDataList(localArrayList);
      getAdapter().notifyDataSetChanged();
      setReloadData(false);
      return;
      setEmptyText(2131428805);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avu
 * JD-Core Version:    0.6.2
 */