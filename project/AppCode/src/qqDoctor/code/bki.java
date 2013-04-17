import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.SecureContactActivity;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceSettingActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public final class bki extends BaseTabView
{
  private AresEngineManager a;
  private jp b;
  private ho c;
  private ov d;
  private ArrayList<TabModel> e;
  private DataHandler.DataHandlerCallback f = new bkj(this);
  private Handler g = new bkk(this);

  public bki(Context paramContext)
  {
    super(paramContext);
  }

  public final void a()
  {
    setTabMessage(0, this.b.e());
    setTabMessage(1, this.c.N());
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131427391)), new bip(this.mContext, this));
    localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131427390)), new bhz(this.mContext, this));
    return localLinkedHashMap;
  }

  public final void onBackClick()
  {
    aai.a().c();
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class));
    this.b = new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts");
    this.c = ho.a();
    this.d = ov.a();
    int i = this.b.e();
    int j = this.c.N();
    if ((i == 0) && (j > 0))
    {
      setDefaultTab(1);
      this.c.h(0);
    }
    while (true)
    {
      if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
        nd.a().a(26061);
      this.c.d(true);
      return;
      setDefaultTab(0);
    }
  }

  public final void onOptionClick(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 3:
    case 2:
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent(this.mContext, SecureSpaceSettingActivity.class);
      this.mContext.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent(this.mContext, SecureContactActivity.class);
      this.mContext.startActivity(localIntent1);
    }
  }

  public final void onPause()
  {
    super.onPause();
    try
    {
      this.a.findIntercepter("incoming_sms").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("outing_sms").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("incoming_call").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("system_call").dataHandler().removeCallback(this.f);
      this.d.a(true, true);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void onResume()
  {
    super.onResume();
    setTabMessage(0, this.b.e());
    setTabMessage(1, this.c.N());
    try
    {
      this.a.findIntercepter("incoming_sms").dataHandler().addCallback(this.f);
      this.a.findIntercepter("outing_sms").dataHandler().addCallback(this.f);
      this.a.findIntercepter("incoming_call").dataHandler().addCallback(this.f);
      this.a.findIntercepter("system_call").dataHandler().addCallback(this.f);
      if (this.c.an())
      {
        this.c.ao();
        rj localrj = rj.a();
        if (localrj.d())
        {
          Dialog localDialog = new Dialog(getActivity());
          localDialog.setTitle(2131427642);
          localDialog.setMessage(2131427822);
          localDialog.setPositiveButton(2131427395, new bkl(this, localrj, localDialog), 2);
          localDialog.setNegativeButton(2131427379, new bkm(localDialog), 2);
          localDialog.show();
        }
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.d.a(true, false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131427988);
    if (this.e == null)
    {
      this.e = new ArrayList(2);
      TabModel localTabModel1 = new TabModel(2, 0, this.mContext.getResources().getDrawable(2130838154), null, this.mContext.getString(2131427465));
      this.e.add(localTabModel1);
      TabModel localTabModel2 = new TabModel(3, 0, this.mContext.getResources().getDrawable(2130838280), null, this.mContext.getString(2131428661));
      this.e.add(localTabModel2);
    }
    paramFrameworkTemplateUI.setOptionButtonPopStyle(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bki
 * JD-Core Version:    0.6.2
 */