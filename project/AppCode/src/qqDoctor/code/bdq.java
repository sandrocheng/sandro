import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionMonitorSettingActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.permission.MonitorLogListView;
import java.util.LinkedHashMap;

public final class bdq extends BaseTabView
{
  public int a = -1;

  public bdq(Context paramContext)
  {
    super(paramContext);
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131427958)), new bdr(this.mContext, this));
    if (this.a == 0)
      localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131429556)), new MonitorLogListView(this.mContext, this));
    return localLinkedHashMap;
  }

  public final void onCreate()
  {
    super.onCreate();
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, PermissionMonitorSettingActivity.class);
    getActivity().startActivity(localIntent);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131427958);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    if (this.a == 0)
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdq
 * JD-Core Version:    0.6.2
 */