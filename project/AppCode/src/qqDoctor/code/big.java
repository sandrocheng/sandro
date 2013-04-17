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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceSettingActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class big extends BaseListView<lf>
{
  private ContextMenuDialog a;
  private rb b;
  private hq c;
  private ki d;
  private ho e;
  private vk f;
  private sy g;
  private Handler h = new bih(this);
  private dv<lf> i = new bio(this);

  public big(Context paramContext)
  {
    super(paramContext);
  }

  private void b()
  {
    String[] arrayOfString = this.mContext.getResources().getStringArray(2131165209);
    ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
    ArrayList localArrayList = new ArrayList();
    ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
    localContextMenuModel1.name = arrayOfString[1];
    localContextMenuModel1.eventCode = 5;
    localArrayList.add(localContextMenuModel1);
    ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
    localContextMenuModel2.name = arrayOfString[4];
    localContextMenuModel2.eventCode = 4;
    localArrayList.add(localContextMenuModel2);
    ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
    localContextMenuModel3.name = arrayOfString[0];
    localContextMenuModel3.eventCode = 0;
    localArrayList.add(localContextMenuModel3);
    localContextMenuDialog.setDataAdapter(localArrayList);
    localContextMenuDialog.setOnItemClickListener(new bil(this, localContextMenuDialog));
    localContextMenuDialog.setTitle(2131427392);
    localContextMenuDialog.show();
  }

  public final void a()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903046, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131230741);
    EditText localEditText2 = (EditText)localView.findViewById(2131230743);
    LinearLayout localLinearLayout1 = (LinearLayout)localView.findViewById(2131230744);
    LinearLayout localLinearLayout2 = (LinearLayout)localView.findViewById(2131230746);
    CheckBoxView localCheckBoxView1 = (CheckBoxView)localView.findViewById(2131230745);
    CheckBoxView localCheckBoxView2 = (CheckBoxView)localView.findViewById(2131230747);
    localCheckBoxView1.setChecked(true);
    localCheckBoxView2.setChecked(true);
    localEditText1.addTextChangedListener(new adn(localEditText1));
    localCheckBoxView1.setVisibility(8);
    localCheckBoxView2.setVisibility(8);
    localLinearLayout1.setVisibility(8);
    localLinearLayout2.setVisibility(8);
    ((TextView)localView.findViewById(2131230740)).setTextColor(this.mContext.getResources().getColor(2131296285));
    ((TextView)localView.findViewById(2131230742)).setTextColor(this.mContext.getResources().getColor(2131296285));
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131427338);
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427338, new bim(this, localEditText1, localEditText2, localCheckBoxView1, localCheckBoxView2, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new bin(localDialog), 2);
    localDialog.show();
    ButtonView localButtonView = localDialog.getButton(-1);
    if (localButtonView != null)
      if (localEditText1.getText().toString().trim().length() <= 0)
        break label304;
    label304: for (boolean bool = true; ; bool = false)
    {
      localButtonView.setEnabled(bool);
      localEditText1.addTextChangedListener(new adn(localEditText1, localButtonView));
      return;
    }
  }

  public final void a(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, ContactSelectActivity.class);
    localIntent.putExtra("from", paramInt);
    localIntent.putExtra("type", 2);
    getActivity().startActivityForResult(localIntent, paramInt);
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new air(localContext, localArrayList);
  }

  public final void loadDataList()
  {
    ((air)this.mAdapter).a(this.i);
    this.mDataList.clear();
    lf locallf = new lf();
    locallf.name = this.mContext.getString(2131427437);
    locallf.b = 1003;
    this.mDataList.add(locallf);
    this.mDataList.addAll(this.c.a());
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramIntent == null) || (paramInt2 == 0));
    while (true)
    {
      return;
      ArrayList localArrayList1 = paramIntent.getStringArrayListExtra("selecteddata");
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = ((String)localIterator.next()).split(";");
        lf locallf = new lf();
        locallf.phonenum = arrayOfString[0];
        locallf.name = arrayOfString[1];
        locallf.enableForCalling = true;
        locallf.enableForSMS = true;
        locallf.b = 2;
        localArrayList2.add(locallf);
      }
      this.f.a(localArrayList2, 2);
      nd.a().a(26101);
    }
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
    this.c = new hq(2);
    this.d = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.e = ho.a();
    this.b = new rb(getActivity());
    this.g = sy.a(getActivity());
    this.f = new vk(getActivity(), new bii(this));
    getActivity().registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int j = -1;
    int k;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      k = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (k != -2)
        break label456;
      if (this.mListView.getTag() == null);
    }
    label456: for (j = ((Integer)this.mListView.getTag()).intValue(); ; j = k)
    {
      if ((j >= this.mAdapter.getCount()) || (j < 0));
      while (true)
      {
        return;
        if (this.mListView.getTag() != null)
        {
          k = ((Integer)this.mListView.getTag()).intValue();
          break;
        }
        k = j;
        break;
        lf locallf = (lf)this.mAdapter.getItem(j);
        if ((locallf != null) && (locallf.b == 2))
        {
          this.a = new ContextMenuDialog(this.mContext);
          this.a.setContextItemPosition(j);
          ArrayList localArrayList = new ArrayList();
          ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
          localContextMenuModel1.name = this.mContext.getString(2131427339);
          localContextMenuModel1.eventCode = 1;
          localArrayList.add(localContextMenuModel1);
          ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
          localContextMenuModel2.name = this.mContext.getString(2131427340);
          localContextMenuModel2.eventCode = 2;
          localArrayList.add(localContextMenuModel2);
          ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
          localContextMenuModel3.name = this.mContext.getString(2131427735);
          localContextMenuModel3.eventCode = 5;
          localArrayList.add(localContextMenuModel3);
          ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
          localContextMenuModel4.name = this.mContext.getString(2131427736);
          localContextMenuModel4.eventCode = 6;
          localArrayList.add(localContextMenuModel4);
          ContextMenuModel localContextMenuModel5 = new ContextMenuModel();
          localContextMenuModel5.name = this.mContext.getString(2131427384);
          localContextMenuModel5.eventCode = 3;
          localArrayList.add(localContextMenuModel5);
          ContextMenuModel localContextMenuModel6 = new ContextMenuModel();
          localContextMenuModel6.name = this.mContext.getString(2131427724);
          localContextMenuModel6.eventCode = 4;
          localArrayList.add(localContextMenuModel6);
          this.a.setDataAdapter(localArrayList);
          this.a.setOnItemClickListener(new bij(this));
          this.a.setTitle(this.mContext.getString(2131428414));
          this.a.show();
        }
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    lf locallf = (lf)this.mDataList.get(paramInt);
    if (locallf.b == 1003)
    {
      b();
      return;
    }
    boolean bool2 = locallf.a();
    for (int j = 0; j < this.mDataList.size(); j++)
      ((lf)this.mDataList.get(j)).a(false);
    boolean bool3;
    label99: StringBuilder localStringBuilder;
    if (!bool2)
    {
      bool3 = bool1;
      locallf.a(bool3);
      localStringBuilder = new StringBuilder("when onItemClick, current isShowDetail:");
      if (bool2)
        break label150;
    }
    while (true)
    {
      localStringBuilder.append(bool1).toString();
      getAdapter().notifyDataSetChanged();
      break;
      bool3 = false;
      break label99;
      label150: bool1 = false;
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 19:
    case 28:
    }
    while (true)
    {
      return true;
      if (this.mDataList.size() <= 1)
      {
        ha.a(this.mContext, 2131427601);
      }
      else
      {
        this.b.a(this.c, this.h);
        continue;
        Intent localIntent = new Intent(this.mContext, SecureSpaceSettingActivity.class);
        this.mContext.startActivity(localIntent);
      }
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null);
    for (int j = this.mDataList.size(); ; j = 0)
    {
      if ((j > 0) && (paramMenu.findItem(19) == null))
        paramMenu.add(0, 19, 0, QQPimApplication.a().getResources().getString(2131428652)).setIcon(2130838009);
      return true;
    }
  }

  public final void onResume()
  {
    loadDataList();
    air localair = (air)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localair.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    String str1 = this.mContext.getString(2131427799);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = String.valueOf(this.c.c());
    String str2 = String.format(str1, arrayOfObject);
    getFrameworkTemplateUI().updateInfoBarText(str2);
    if (this.mDataList.size() <= 1)
    {
      setEmptyText(2131428745);
      if (!this.e.D())
        b();
    }
    while (true)
    {
      this.e.E();
      return;
      hideEmptyView();
    }
  }

  public final void refreshListData()
  {
    air localair = (air)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localair.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427465);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     big
 * JD-Core Version:    0.6.2
 */