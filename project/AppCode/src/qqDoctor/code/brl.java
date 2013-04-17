import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.virus.ScanResultActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class brl extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  int a = -1;
  private Activity b;
  private Context c;
  private jl d;
  private List<Map<String, Object>> e;
  private Dialog f;

  public brl(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
    this.b = ((Activity)paramContext);
  }

  private void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.e.size()));
    while (true)
    {
      return;
      Map localMap = (Map)this.e.get(paramInt);
      if (this.d == null)
        this.d = f.e();
      Long localLong = (Long)localMap.get("id");
      String str = (String)localMap.get("scanDate");
      List localList = this.d.b(localLong.longValue());
      mu localmu = new mu(localLong.longValue(), 1, str, ((Integer)localMap.get("virusFound")).intValue(), ((Integer)localMap.get("virusCured")).intValue(), ((Integer)localMap.get("waitingDealing")).intValue(), ((Integer)localMap.get("riskFound")).intValue(), localList);
      Intent localIntent = new Intent(this.c, ScanResultActivity.class);
      localIntent.putExtra("data", localmu);
      this.b.startActivityForResult(localIntent, 0);
    }
  }

  private void b()
  {
    if (this.e != null)
      this.e.clear();
    this.mDataList.clear();
    if (this.d == null)
      this.d = f.e();
    List localList = this.d.c();
    ArrayList localArrayList = new ArrayList();
    new HashMap();
    for (int i = 0; i < localList.size(); i++)
    {
      HashMap localHashMap = new HashMap();
      mu localmu = (mu)localList.get(i);
      localHashMap.put("id", Long.valueOf(localmu.a));
      localHashMap.put("scanDate", localmu.c);
      localHashMap.put("riskFound", Integer.valueOf(localmu.g));
      localHashMap.put("virusCured", Integer.valueOf(localmu.e));
      localHashMap.put("virusFound", Integer.valueOf(localmu.d));
      localHashMap.put("waitingDealing", Integer.valueOf(localmu.f));
      localArrayList.add(localHashMap);
    }
    new StringBuilder(" report size").append(localArrayList.size()).toString();
    this.e = localArrayList;
    if (this.e.isEmpty())
    {
      setEmptyText(2131428783);
      getAdapter().notifyDataSetChanged();
    }
    while (true)
    {
      return;
      hideEmptyView();
      for (int j = 0; j < this.e.size(); j++)
      {
        Map localMap = (Map)this.e.get(j);
        PreferenceAdapterModel localPreferenceAdapterModel = new PreferenceAdapterModel();
        localPreferenceAdapterModel.setPreferenceViewType((byte)1);
        localPreferenceAdapterModel.setKey(String.valueOf(((Map)this.e.get(j)).get("id")));
        String str1 = this.c.getResources().getString(2131428541);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = ((Map)this.e.get(j)).get("scanDate");
        localPreferenceAdapterModel.setTitle(String.format(str1, arrayOfObject1));
        String str2 = this.c.getResources().getString(2131428542);
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = localMap.get("virusFound");
        arrayOfObject2[1] = localMap.get("riskFound");
        arrayOfObject2[2] = localMap.get("virusCured");
        arrayOfObject2[3] = localMap.get("waitingDealing");
        localPreferenceAdapterModel.setSummary(String.format(str2, arrayOfObject2));
        localPreferenceAdapterModel.setShowLine(true);
        this.mDataList.add(localPreferenceAdapterModel);
      }
      getAdapter().notifyDataSetChanged();
    }
  }

  public final void a()
  {
    if (this.d == null)
      this.d = f.e();
    if (this.e.size() > 0)
      if (this.d.b())
        ha.a(this.c, 2131428465);
    while (true)
    {
      b();
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      String str = this.c.getString(2131428105);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.d.d());
      localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
      return;
      ha.a(this.c, 2131428609);
      continue;
      ha.a(this.c, 2131428537);
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new amn(this.c, this.mDataList, this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = f.e();
    getListView().setPadding(0, 0, 0, 0);
    getActivity().registerForContextMenu(getListView());
    this.f = new Dialog(this.c);
    this.f.setIcon(2130838143);
    this.f.setTitle(2131428561);
    this.f.setMessage(2131429045);
    this.f.setPositiveButton(2131428152, new brm(this), 2);
    this.f.setNegativeButton(2131427379, new brn(this), 2);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (this.mListView.getTag() != null);
    for (this.a = ((Integer)this.mListView.getTag()).intValue(); ; this.a = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position)
    {
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.c);
      localContextMenuDialog.setContextItemPosition(this.a);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.c.getString(2131427340);
      localContextMenuModel1.eventCode = 1;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.c.getString(2131427383);
      localContextMenuModel2.eventCode = 2;
      localArrayList.add(localContextMenuModel2);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new bro(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(this.c.getString(2131427392));
      localContextMenuDialog.show();
      return;
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a(paramInt);
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    if (paramOperatingModel.getID() == 0)
    {
      if (this.mDataList.size() <= 0)
        break label27;
      this.f.show();
    }
    while (true)
    {
      return;
      label27: ha.a(this.c, 2131428537);
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 51:
    }
    while (true)
    {
      return true;
      if (this.mDataList.size() > 0)
        this.f.show();
      else
        ha.a(this.c, 2131428537);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    paramMenu.add(0, 51, 0, QQPimApplication.a().getResources().getString(2131427376)).setIcon(2130838009);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    b();
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    String str = this.c.getString(2131428105);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.d.d());
    localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428019);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brl
 * JD-Core Version:    0.6.2
 */