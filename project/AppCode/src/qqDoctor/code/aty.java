import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.LinkedHashMap;

public final class aty extends BaseTabView
{
  private int a;

  public aty(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if ((this.a == 3) || (this.a == 4))
    {
      localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131429203)), new ams(this.mContext, this, 3));
      localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131429202)), new ams(this.mContext, this, 4));
    }
    while (true)
    {
      return localLinkedHashMap;
      if ((this.a == 5) || (this.a == 6))
      {
        localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131429205)), new ams(this.mContext, this, 5));
        localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131429204)), new ams(this.mContext, this, 6));
      }
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131427982);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aty
 * JD-Core Version:    0.6.2
 */