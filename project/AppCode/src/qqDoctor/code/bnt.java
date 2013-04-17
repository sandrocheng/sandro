import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bnt extends blt<kw>
{
  private List<kw> a = new ArrayList();

  public bnt(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kw>> d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.a, null, 1));
    this.mDataList.clear();
    this.mDataList.addAll(this.a);
    return localArrayList;
  }

  public final alr a()
  {
    return (alr)super.getAdapter();
  }

  public final void a(kw paramkw)
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131428625);
    localDialog.setMessage(2131429181);
    localDialog.setPositiveButton(2131428152, new bnx(this, paramkw, localDialog), 1);
    localDialog.setNegativeButton(2131427379, new bny(localDialog), 2);
    localDialog.show();
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131427343, 0));
    localArrayList.add(new OperatingModel(1, 2131427340, 0));
    localArrayList.add(new OperatingModel(2, 2131427349, 2));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    ((OperatingModel)localArrayList.get(1)).setEnable(false);
    ((OperatingModel)localArrayList.get(2)).setEnable(false);
    ((OperatingModel)localArrayList.get(2)).setCheck(false);
    return localArrayList;
  }

  public final void d(kw paramkw)
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131428625);
    localDialog.setMessage(2131429182);
    localDialog.setPositiveButton(2131428152, new bob(this, paramkw, localDialog), 1);
    localDialog.setNegativeButton(2131427379, new boc(localDialog), 2);
    localDialog.show();
  }

  public final void loadDataList()
  {
    try
    {
      this.a.clear();
      fy.a();
      Iterator localIterator = ho.a().bx().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        AppEntity localAppEntity = this.c.getApkInfo(str, 77);
        if (localAppEntity != null)
        {
          kw localkw = a.a(localAppEntity);
          localkw.setSystemFlag(true);
          this.a.add(localkw);
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
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
    kw localkw = (kw)getDataList().get(i);
    ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
    ArrayList localArrayList = new ArrayList();
    localContextMenuDialog.setContextItemPosition(i);
    ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
    localContextMenuModel1.name = this.mContext.getString(2131429183);
    localContextMenuModel1.eventCode = 11;
    localArrayList.add(localContextMenuModel1);
    ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
    localContextMenuModel2.name = this.mContext.getString(2131427340);
    localContextMenuModel2.eventCode = 3;
    localArrayList.add(localContextMenuModel2);
    localContextMenuDialog.setDataAdapter(localArrayList);
    localContextMenuDialog.setOnItemClickListener(new bnu(this, localContextMenuDialog));
    localContextMenuDialog.setTitle(localkw.getAppName());
    localContextMenuDialog.show();
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a((kw)getDataList().get(paramInt));
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
        ArrayList localArrayList = (ArrayList)((alr)super.getAdapter()).d();
        if (((alr)super.getAdapter()).c().size() <= 0)
        {
          ha.b(this.mContext, 2131429662);
        }
        else
        {
          Dialog localDialog2 = new Dialog(this.mContext);
          localDialog2.setTitle(2131428625);
          localDialog2.setMessage(2131429181);
          localDialog2.setPositiveButton(2131428152, new bnz(this, localArrayList, localDialog2), 1);
          localDialog2.setNegativeButton(2131427379, new boa(localDialog2), 2);
          localDialog2.show();
          continue;
          if (((alr)super.getAdapter()).c().size() <= 0)
          {
            ha.b(this.mContext, 2131429661);
          }
          else
          {
            Dialog localDialog1 = new Dialog(this.mContext);
            localDialog1.setTitle(2131428625);
            localDialog1.setMessage(2131429477);
            localDialog1.setPositiveButton(2131428152, new bnv(this, localDialog1), 1);
            localDialog1.setNegativeButton(2131427379, new bnw(localDialog1), 2);
            localDialog1.show();
          }
        }
      }
    case 2:
    }
    if (paramOperatingModel.isCheck())
    {
      paramOperatingModel.setCheck(false);
      ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
      ((OperatingModel)getOperatingBarDataList().get(1)).setEnable(false);
      ((OperatingModel)getOperatingBarDataList().get(0)).setNumber(0);
      ((OperatingModel)getOperatingBarDataList().get(1)).setNumber(0);
      ((alr)super.getAdapter()).a(false);
    }
    while (true)
    {
      refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
      refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(1));
      refreshOperatingBar(paramOperatingModel);
      break;
      paramOperatingModel.setCheck(true);
      ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(true);
      ((OperatingModel)getOperatingBarDataList().get(1)).setEnable(true);
      ((alr)super.getAdapter()).a(true);
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
      return false;
      setReloadData(true);
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    a.b(paramMenu);
    return true;
  }

  public final void onResume()
  {
    if (isReloadData())
      this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      return;
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void refreshListData()
  {
    ((alr)super.getAdapter()).setDataList(d());
    ((alr)super.getAdapter()).notifyDataSetChanged();
    if (isReloadData())
      setReloadData(false);
    if (this.mDataList.size() == 0)
    {
      setEmptyText(2131429180);
      OperatingModel localOperatingModel2 = (OperatingModel)getOperatingBarDataList().get(0);
      localOperatingModel2.setEnable(false);
      localOperatingModel2.setCheck(false);
      refreshOperatingBar(localOperatingModel2);
      OperatingModel localOperatingModel3 = (OperatingModel)getOperatingBarDataList().get(1);
      localOperatingModel3.setEnable(false);
      localOperatingModel3.setCheck(false);
      refreshOperatingBar(localOperatingModel3);
      OperatingModel localOperatingModel4 = (OperatingModel)getOperatingBarDataList().get(2);
      localOperatingModel4.setEnable(false);
      localOperatingModel4.setCheck(false);
      refreshOperatingBar(localOperatingModel4);
    }
    while (true)
    {
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      String str = this.mContext.getString(2131429184);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.mDataList.size());
      localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
      ((alr)super.getAdapter()).a();
      return;
      OperatingModel localOperatingModel1 = (OperatingModel)getOperatingBarDataList().get(2);
      localOperatingModel1.setEnable(true);
      localOperatingModel1.setCheck(false);
      refreshOperatingBar(localOperatingModel1);
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428118);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnt
 * JD-Core Version:    0.6.2
 */