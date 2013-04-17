import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity4;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.ArrayList;
import java.util.List;

public final class bet extends BaseView
{
  private ho a;
  private List<OperatingModel> b = new ArrayList();

  public bet(Context paramContext)
  {
    super(paramContext, 2130903206);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    this.b.clear();
    OperatingModel localOperatingModel1 = new OperatingModel(0, this.mContext.getString(2131427406));
    localOperatingModel1.setStyle(0);
    this.b.add(localOperatingModel1);
    OperatingModel localOperatingModel2 = new OperatingModel(1, this.mContext.getString(2131429349));
    this.b.add(localOperatingModel2);
    return this.b;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ho.a();
    ManagerCreator.getManager(AntitheftManager.class);
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setClass(this.mContext, PickproofGuidelActivity4.class);
      this.mContext.startActivity(localIntent);
      ((Activity)this.mContext).finish();
      continue;
      String str = ft.c(this.mContext);
      this.a.p(str);
      nd.a().a(26103);
      this.a.V(true);
      this.a.B(true);
      yb.a(this.mContext).a(true);
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131429430);
      localDialog.setMessage(2131429431);
      localDialog.setPositiveButton(2131430056, new beu(this, localDialog), 1);
      localDialog.setNegativeButton(2131427344, new bev(this, localDialog), 2);
      localDialog.show();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429334);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bet
 * JD-Core Version:    0.6.2
 */