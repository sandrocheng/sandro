import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity2;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity4;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bep extends BaseView
{
  private EditText a;
  private ImageView b;
  private ho c;
  private AntitheftManager d;
  private ki e;
  private List<OperatingModel> f = new ArrayList();

  public bep(Context paramContext)
  {
    super(paramContext, 2130903204);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    this.f.clear();
    OperatingModel localOperatingModel1 = new OperatingModel(0, this.mContext.getString(2131427406));
    localOperatingModel1.setStyle(0);
    this.f.add(localOperatingModel1);
    OperatingModel localOperatingModel2 = new OperatingModel(1, this.mContext.getString(2131427407));
    this.f.add(localOperatingModel2);
    return this.f;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramIntent == null) || (paramInt2 == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = paramIntent.getStringArrayListExtra("selecteddata");
      if (localArrayList != null)
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          String str2 = str1.substring(0, str1.indexOf(';'));
          this.a.setText(str2);
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.c = ho.a();
    this.d = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    this.e = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    ((Activity)this.mContext).getWindow().setSoftInputMode(3);
    this.a = ((EditText)findViewById(2131231242));
    String str = this.d.getHelperNumber();
    if (str == null)
    {
      str = this.c.bE();
      this.d.setHelperNumber(str);
    }
    if (str != null)
      this.a.setText(str);
    this.b = ((ImageView)findViewById(2131230789));
    this.b.setOnClickListener(new beq(this));
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
      Intent localIntent2 = new Intent();
      localIntent2.setClass(this.mContext, PickproofGuidelActivity2.class);
      this.mContext.startActivity(localIntent2);
      ((Activity)this.mContext).finish();
      continue;
      String str1 = this.a.getText().toString().trim();
      if ((str1 == null) || (str1.equals("")))
      {
        xn.a(this.mContext, 2131429327);
      }
      else
      {
        String str2 = str1.replace("+86", "").replace("-", "");
        if (ft.b(str2))
        {
          String str3 = ft.b(this.mContext);
          if ((str3 != null) && (str2.equals(str3)))
          {
            xn.a(this.mContext, 2131429332);
          }
          else
          {
            this.d.setHelperNumber(str2);
            String str4 = ki.a(str2);
            if ((str4 != null) && (str4.replace("-", "").equals(str2)))
              str4 = null;
            this.c.u(str4);
            Intent localIntent1 = new Intent();
            localIntent1.setClass(this.mContext, PickproofGuidelActivity4.class);
            this.mContext.startActivity(localIntent1);
            ((Activity)this.mContext).finish();
          }
        }
        else
        {
          ha.b(this.mContext, 2131429323);
        }
      }
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429308);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bep
 * JD-Core Version:    0.6.2
 */