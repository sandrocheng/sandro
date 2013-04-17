import android.content.Context;
import android.content.res.Resources;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bpm extends BaseListView<cs>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private bw a = bw.a(this.mContext);

  public bpm(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131427567);
    localDialog.setMessage(2131427619);
    localDialog.setPositiveButton(2131427397, new bpn(this, localDialog), 2);
    localDialog.setNeutralButton(2131427379, new bpo(localDialog), 2);
    localDialog.show();
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aix(localContext, localArrayList);
  }

  public final void loadDataList()
  {
    new ArrayList().add(Integer.valueOf(0));
    this.mDataList = bw.a(this.mContext).a("\"" + cw.d().f() + "\"");
    if ((this.mDataList == null) || (this.mDataList.isEmpty()))
      setEmptyText(2131428812);
    while (true)
    {
      return;
      hideEmptyView();
      Collections.reverse(this.mDataList);
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (paramMenu.findItem(19) == null)
      paramMenu.add(0, 19, 0, QQPimApplication.a().getResources().getString(2131428652)).setIcon(2130838009);
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final void onOptionClick(int paramInt)
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
      a();
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    loadDataList();
    aix localaix = (aix)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaix.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    String str1 = this.mContext.getResources().getString(2131427559);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.mDataList.size());
    String str2 = String.format(str1, arrayOfObject);
    getFrameworkTemplateUI().updateInfoBarText(str2);
  }

  public final void refreshListData()
  {
    aix localaix = (aix)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaix.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427530);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpm
 * JD-Core Version:    0.6.2
 */