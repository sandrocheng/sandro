import android.content.Context;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class bbu extends BaseListView<mb>
{
  private List<mb> a = new ArrayList();
  private ja b;
  private ain c;
  private zs d;

  public bbu(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<mb>> a()
  {
    ArrayList localArrayList = new ArrayList();
    this.mDataList.clear();
    this.mDataList.addAll(this.a);
    localArrayList.add(new ListModel(this.a, "", 1));
    return localArrayList;
  }

  public final BaseAdapter createAdapter()
  {
    this.c = new ain(this.mContext, this, a());
    return this.c;
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(1001, 2131427411));
    return localArrayList;
  }

  public final void loadDataList()
  {
    this.a.clear();
    List localList = this.b.a(false);
    if (localList != null)
    {
      int i = localList.size();
      SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
      for (int j = 0; j < i; j++)
      {
        mb localmb = (mb)localList.get(j);
        AppEntity localAppEntity = localSoftwareManager.getAppInfo(localmb.a, 1);
        if (localAppEntity != null)
        {
          localmb.b = localAppEntity.getAppName();
          this.a.add(localmb);
        }
      }
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = new ja();
    this.d = new zs();
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt > -1 + this.mDataList.size());
    while (true)
    {
      return;
      this.c.a(paramInt);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 1001:
    }
    while (true)
    {
      return;
      List localList1 = this.c.a();
      if ((localList1 != null) && (localList1.size() > 0))
      {
        ArrayList localArrayList = new ArrayList();
        int i = localList1.size();
        int j = 0;
        if (j < i)
        {
          mb localmb = (mb)localList1.get(j);
          List localList2;
          if (localmb != null)
          {
            ja localja = this.b;
            if (localmb != null)
              localmb.f = localja.d(localmb);
            localList2 = localmb.f;
            if ((localList2 == null) || (localList2.size() <= 0))
              break label150;
            localArrayList.addAll(localList2);
          }
          while (true)
          {
            j++;
            break;
            label150: if ((localList2 == null) || (localList2.size() <= 0))
            {
              mb.a locala = new mb.a(localmb, "", "", "");
              locala.h = -1L;
              localArrayList.add(locala);
            }
          }
        }
        this.d.a(localArrayList, new bbv(this, localList1));
      }
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    if (this.c == null)
      return;
    this.c.setDataList(a());
    this.c.notifyDataSetChanged();
    if (isReloadData())
      setReloadData(false);
    if ((this.mDataList == null) || (this.mDataList.size() == 0))
      setEmptyText(this.mContext.getString(2131430201));
    while (true)
    {
      super.refreshListData();
      break;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430203);
    getFrameworkTemplateUI().setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbu
 * JD-Core Version:    0.6.2
 */