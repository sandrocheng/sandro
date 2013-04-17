import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumberList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aqu extends BaseListView<IpDialPhoneNumber>
{
  public static boolean a;
  private ii b;
  private IpDialManager c = (IpDialManager)ManagerCreator.getManager(IpDialManager.class);
  private int d;
  private boolean e = false;

  public aqu(Context paramContext)
  {
    super(paramContext);
    this.mDataList = this.c.getIpDialSetting().getExcludedPhoneNumberList().toArrayList();
  }

  private void a()
  {
    if ((this.mDataList != null) && (this.mDataList.size() == 0))
    {
      setEmptyText(2131427760);
      if (this.mDataList == null)
        break label99;
    }
    label99: for (int i = this.mDataList.size(); ; i = 0)
    {
      String str1 = this.mContext.getResources().getString(2131428298);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      String str2 = String.format(str1, arrayOfObject);
      getFrameworkTemplateUI().updateInfoBarText(str2);
      return;
      getListView().setVisibility(0);
      hideEmptyView();
      break;
    }
  }

  public final void a(IpDialPhoneNumber paramIpDialPhoneNumber)
  {
    this.mDataList.remove(paramIpDialPhoneNumber);
    a();
    getAdapter().notifyDataSetChanged();
    IpDialManagerSetting localIpDialManagerSetting = this.c.getIpDialSetting();
    IpDialPhoneNumberList localIpDialPhoneNumberList = new IpDialPhoneNumberList();
    Iterator localIterator = this.mDataList.iterator();
    while (localIterator.hasNext())
      localIpDialPhoneNumberList.add((IpDialPhoneNumber)localIterator.next());
    localIpDialManagerSetting.setExcludedPhoneNumberList(localIpDialPhoneNumberList);
    this.c.setIpDialSetting(localIpDialManagerSetting);
    ha.b(this.mContext, this.mContext.getResources().getString(2131428465));
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aja(localContext, localArrayList, this);
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, this.mContext.getString(2131427469)));
    return localArrayList;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    Iterator localIterator1 = paramIntent.getStringArrayListExtra("selecteddata").iterator();
    int i = 0;
    label20: IpDialPhoneNumber localIpDialPhoneNumber;
    int n;
    label109: String str3;
    String str4;
    label150: String str5;
    if (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      int k = str1.indexOf(';');
      String str2 = str1.substring(k + 1);
      int m = str2.indexOf(';');
      localIpDialPhoneNumber = new IpDialPhoneNumber();
      localIpDialPhoneNumber.setPhoneNumber(str1.substring(0, k));
      localIpDialPhoneNumber.setName(str2.substring(0, m));
      n = 0;
      if (n >= this.mDataList.size())
        break label503;
      str3 = localIpDialPhoneNumber.getPhoneNumber();
      if (str3.indexOf("+86") == -1)
        break label496;
      str4 = str3.substring(3);
      str5 = ((IpDialPhoneNumber)this.mDataList.get(n)).getPhoneNumber();
      if (str5.indexOf("+86") == -1)
        break label509;
    }
    label496: label503: label509: for (String str6 = str5.substring(3); ; str6 = str5)
    {
      if ((((IpDialPhoneNumber)this.mDataList.get(n)).getName().equals(localIpDialPhoneNumber.getName())) && (str6.equals(str4)));
      for (int i1 = 0; ; i1 = 1)
      {
        if (i1 != 0)
        {
          this.mDataList.add(localIpDialPhoneNumber);
          break label20;
          n++;
          break label109;
        }
        i++;
        break label20;
        if (i > 0)
          ha.b(this.mContext, this.mContext.getResources().getString(2131428458));
        getAdapter().notifyDataSetChanged();
        ii localii = this.b;
        List localList = this.mDataList;
        StringBuffer localStringBuffer = new StringBuffer();
        for (int j = 0; j < localList.size(); j++)
        {
          localStringBuffer.append(((IpDialPhoneNumber)localList.get(j)).getPhoneNumber());
          localStringBuffer.append(";");
          localStringBuffer.append(((IpDialPhoneNumber)localList.get(j)).getName());
          localStringBuffer.append(";");
        }
        localii.b.putString("nonumber", localStringBuffer.toString()).commit();
        IpDialManagerSetting localIpDialManagerSetting = this.c.getIpDialSetting();
        IpDialPhoneNumberList localIpDialPhoneNumberList = new IpDialPhoneNumberList();
        Iterator localIterator2 = this.mDataList.iterator();
        while (localIterator2.hasNext())
          localIpDialPhoneNumberList.add((IpDialPhoneNumber)localIterator2.next());
        localIpDialManagerSetting.setExcludedPhoneNumberList(localIpDialPhoneNumberList);
        this.c.setIpDialSetting(localIpDialManagerSetting);
        break;
        str4 = str3;
        break label150;
      }
    }
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    getAdapter().notifyDataSetChanged();
    if (this.b == null)
      this.b = ii.a();
    ((Activity)this.mContext).registerForContextMenu(getListView());
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
      if (this.e)
        i = -2;
      if (i == -2)
        i = this.d;
      if (i >= 0)
        break label55;
    }
    while (true)
    {
      return;
      i = this.d;
      break;
      label55: if (this.e)
        this.e = false;
      this.d = i;
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.mContext.getResources().getString(2131428438);
      localContextMenuModel1.eventCode = 2;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.mContext.getResources().getString(2131428463);
      localContextMenuModel2.eventCode = 3;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = this.mContext.getResources().getString(2131428411);
      localContextMenuModel3.eventCode = 4;
      localArrayList.add(localContextMenuModel3);
      ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
      localContextMenuModel4.name = this.mContext.getResources().getString(2131428412);
      localContextMenuModel4.eventCode = 5;
      localArrayList.add(localContextMenuModel4);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new aqy(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(2131427392);
      localContextMenuDialog.show();
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.d = paramInt;
    this.e = true;
    paramView.showContextMenu();
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    if (paramOperatingModel.getID() == 0)
    {
      String[] arrayOfString = this.mContext.getResources().getStringArray(2131165209);
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = arrayOfString[0];
      localContextMenuModel1.eventCode = 0;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = arrayOfString[1];
      localContextMenuModel2.eventCode = 1;
      localArrayList.add(localContextMenuModel2);
      if (ft.d() == 2)
        arrayOfString[2] = arrayOfString[2].replace("Sim", "Uim");
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = arrayOfString[2];
      localContextMenuModel3.eventCode = 2;
      localArrayList.add(localContextMenuModel3);
      ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
      localContextMenuModel4.name = arrayOfString[3];
      localContextMenuModel4.eventCode = 3;
      localArrayList.add(localContextMenuModel4);
      ContextMenuModel localContextMenuModel5 = new ContextMenuModel();
      localContextMenuModel5.name = arrayOfString[4];
      localContextMenuModel5.eventCode = 4;
      localArrayList.add(localContextMenuModel5);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new aqv(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(2131427392);
      localContextMenuDialog.show();
    }
  }

  public final void onResume()
  {
    super.onResume();
    a();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427470);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqu
 * JD-Core Version:    0.6.2
 */