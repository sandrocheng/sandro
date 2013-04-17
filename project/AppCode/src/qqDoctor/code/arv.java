import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class arv extends BaseView
{
  private ho a = ho.a();

  public arv(Context paramContext)
  {
    super(paramContext, 2130903147);
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(1, 2131430177, 1));
    return localArrayList;
  }

  public final void onBackClick()
  {
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a.cF();
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    if (paramOperatingModel.getID() == 1)
    {
      a.c(this.mContext);
      getActivity().finish();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131430178));
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arv
 * JD-Core Version:    0.6.2
 */