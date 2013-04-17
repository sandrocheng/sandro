import android.content.Context;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.ExpandableListContextMenuInfo;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.DialCommonPhoneExAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class arb extends BaseView
  implements View.OnCreateContextMenuListener
{
  private ExpandableListView a;
  private DialCommonPhoneExAdapter b;
  private HashMap<String, ArrayList<UsefulNumberEntity>> c = new HashMap();
  private List<ListModel<UsefulNumberEntity>> d = new ArrayList();
  private UsefulNumberManager e;

  public arb(Context paramContext)
  {
    super(paramContext, 2130903144);
    this.mContext = paramContext;
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((ExpandableListView)findViewById(2131230995));
    this.a.setGroupIndicator(null);
    this.a.setDivider(this.mContext.getResources().getDrawable(2130837925));
    this.a.setChildDivider(this.mContext.getResources().getDrawable(2130837925));
    this.e = ((UsefulNumberManager)ManagerCreator.getManager(UsefulNumberManager.class));
    this.c.clear();
    this.d.clear();
    this.c = this.e.getAllYellowNumbersWithGroup();
    this.b = new DialCommonPhoneExAdapter(this.mContext, this.c);
    this.a.setAdapter(this.b);
    this.a.setOnCreateContextMenuListener(this);
    this.a.setOnGroupClickListener(new arc(this));
    this.a.setOnChildClickListener(new ard(this));
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    ExpandableListView.ExpandableListContextMenuInfo localExpandableListContextMenuInfo = (ExpandableListView.ExpandableListContextMenuInfo)paramContextMenuInfo;
    if (ExpandableListView.getPackedPositionType(localExpandableListContextMenuInfo.packedPosition) == 1)
    {
      int i = ExpandableListView.getPackedPositionGroup(localExpandableListContextMenuInfo.packedPosition);
      int j = ExpandableListView.getPackedPositionChild(localExpandableListContextMenuInfo.packedPosition);
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.mContext.getResources().getString(2131428411);
      localContextMenuModel1.eventCode = 2;
      localArrayList.add(localContextMenuModel1);
      ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
      localContextMenuModel2.name = this.mContext.getResources().getString(2131428412);
      localContextMenuModel2.eventCode = 3;
      localArrayList.add(localContextMenuModel2);
      ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
      localContextMenuModel3.name = this.mContext.getResources().getString(2131428413);
      localContextMenuModel3.eventCode = 4;
      localArrayList.add(localContextMenuModel3);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new are(this, localContextMenuDialog, i, j));
      UsefulNumberEntity localUsefulNumberEntity = (UsefulNumberEntity)((ArrayList)this.c.get((String)this.c.keySet().toArray()[i])).get(j);
      localContextMenuDialog.setTitle(localUsefulNumberEntity.getName() + " " + localUsefulNumberEntity.getNumber());
      localContextMenuDialog.show();
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return false;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131427467);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arb
 * JD-Core Version:    0.6.2
 */