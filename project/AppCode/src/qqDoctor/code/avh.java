import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.EditText;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import java.util.ArrayList;
import java.util.List;

public final class avh extends BaseListView<lw>
{
  private List<String> a = new ArrayList();
  private Context b;
  private IKeyWordDao c;
  private Handler d = new avi(this);

  public avh(Context paramContext)
  {
    super(paramContext);
    this.b = paramContext;
    this.c = il.a(this.mContext);
  }

  private void a(int paramInt)
  {
    View localView = LayoutInflater.from(this.b).inflate(2130903086, null);
    EditText localEditText = (EditText)localView.findViewById(2131230844);
    localEditText.setText(((lw)this.mDataList.get(paramInt)).b);
    Dialog localDialog = new Dialog(this.b);
    localDialog.setTitle(2131427339);
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new avo(this, localEditText, paramInt, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new avp(localDialog), 2);
    localDialog.show();
  }

  private String b(int paramInt)
  {
    int i = this.mDataList.size();
    if ((paramInt < 0) || (paramInt > i - 1));
    String str;
    for (Object localObject = null; ; localObject = str)
    {
      return localObject;
      str = ((lw)this.mDataList.remove(paramInt)).b;
      int j = this.mDataList.size();
      this.a.clear();
      for (int k = 1; k < j; k++)
        this.a.add(((lw)this.mDataList.get(k)).b);
      this.c.setAll(this.a);
      onResume();
    }
  }

  public final void a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.clear();
    localArrayList.addAll(this.c.getAll());
    int i = localArrayList.size();
    if ((paramString == null) || ("".equals(paramString)))
      ha.a(this.mContext, this.mContext.getString(2131428735));
    while (true)
    {
      return;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label118;
        if (paramString.equals(localArrayList.get(j)))
        {
          ha.a(this.mContext, this.mContext.getString(2131428736));
          break;
        }
      }
      label118: localArrayList.add(paramString);
      this.c.setAll(localArrayList);
      onResume();
    }
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aig(localContext, localArrayList, this.d);
  }

  public final void loadDataList()
  {
    this.a.clear();
    this.mDataList.clear();
    lw locallw1 = new lw();
    locallw1.b = this.mContext.getString(2131427416);
    locallw1.a = 1;
    this.mDataList.add(locallw1);
    this.a.addAll(this.c.getAll());
    for (int i = 0; i < this.a.size(); i++)
    {
      lw locallw2 = new lw();
      locallw2.b = ((String)this.a.get(i));
      locallw2.a = 0;
      this.mDataList.add(locallw2);
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return true;
  }

  public final void onCreate()
  {
    super.onCreate();
    getActivity().registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i;
    if (this.mListView.getTag() != null)
    {
      i = ((Integer)this.mListView.getTag()).intValue();
      lw locallw = (lw)this.mAdapter.getItem(i);
      if ((locallw != null) && (locallw.a == 0))
        break label65;
    }
    while (true)
    {
      return;
      i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
      break;
      label65: ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
      localContextMenuDialog.setContextItemPosition(i);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.b.getString(2131427340);
      localContextMenuModel1.eventCode = 2;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.b.getString(2131427339);
      localContextMenuModel2.eventCode = 1;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = this.b.getString(2131427399);
      localContextMenuModel3.eventCode = 3;
      localArrayList.add(localContextMenuModel3);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new avl(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(this.b.getString(2131427392));
      localContextMenuDialog.show();
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    new StringBuilder("position = ").append(paramInt).toString();
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    if (((lw)this.mDataList.get(paramInt)).a == 1)
    {
      View localView = LayoutInflater.from(this.mContext).inflate(2130903040, null);
      EditText localEditText = (EditText)localView.findViewById(2131230724);
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131427338);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new avs(this, localEditText, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new avt(localDialog), 2);
      localDialog.show();
    }
    while (true)
    {
      return;
      a(paramInt);
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    List localList = this.mDataList;
    int i = 0;
    if (localList != null)
    {
      int j = this.mDataList.size();
      i = 0;
      if (j < 2)
        i = 1;
    }
    switch (paramMenuModel.getId())
    {
    default:
    case 19:
    }
    while (true)
    {
      return true;
      if (i == 0)
      {
        Dialog localDialog = new Dialog(getActivity());
        localDialog.setTitle(2131427374);
        localDialog.setMessage(this.b.getString(2131428738));
        localDialog.setPositiveButton(2131427397, new avq(this, localDialog), 2);
        localDialog.setNegativeButton(2131427379, new avr(localDialog), 2);
        localDialog.show();
      }
      else
      {
        ha.a(this.mContext, 2131427765);
      }
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null);
    for (int i = this.mDataList.size(); ; i = 0)
    {
      int j;
      int k;
      label48: MenuItem localMenuItem;
      if (i < 2)
      {
        j = 1;
        if (paramMenu.findItem(19) == null)
        {
          if (j == 0)
            break label99;
          k = -1;
          localMenuItem = paramMenu.add(k, 19, 0, QQPimApplication.a().getResources().getString(2131428652));
          if (j == 0)
            break label105;
        }
      }
      label99: label105: for (int m = 2130838011; ; m = 2130838009)
      {
        localMenuItem.setIcon(m);
        return true;
        j = 0;
        break;
        k = 0;
        break label48;
      }
    }
  }

  public final void onResume()
  {
    loadDataList();
    aig localaig = (aig)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaig.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    String str1 = this.mContext.getString(2131428270);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = String.valueOf(-1 + this.mDataList.size());
    String str2 = String.format(str1, arrayOfObject);
    getFrameworkTemplateUI().updateInfoBarText(str2);
    if (this.mDataList.size() <= 1)
      setEmptyText(2131428746);
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  public final void refreshListData()
  {
    aig localaig = (aig)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaig.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428443);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avh
 * JD-Core Version:    0.6.2
 */