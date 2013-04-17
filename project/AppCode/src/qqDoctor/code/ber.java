import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity3;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity5;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class ber extends BaseView
{
  private ho a;
  private EditText b;
  private List<OperatingModel> c = new ArrayList();

  public ber(Context paramContext)
  {
    super(paramContext, 2130903205);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    this.c.clear();
    OperatingModel localOperatingModel1 = new OperatingModel(0, this.mContext.getString(2131427406));
    localOperatingModel1.setStyle(0);
    this.c.add(localOperatingModel1);
    OperatingModel localOperatingModel2 = new OperatingModel(1, this.mContext.getString(2131427407));
    this.c.add(localOperatingModel2);
    return this.c;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ho.a();
    this.b = ((EditText)findViewById(2131231243));
    String str = this.a.bT();
    if (str != null)
      this.b.setText(str);
    this.b.addTextChangedListener(new bes(this));
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
      localIntent2.setClass(this.mContext, PickproofGuidelActivity3.class);
      this.mContext.startActivity(localIntent2);
      ((Activity)this.mContext).finish();
      continue;
      String str = this.b.getText().toString().trim();
      if ((str == null) || (str.equals("")))
      {
        if (this.b.isFocused())
        {
          xn.a(this.mContext, 2131429328);
        }
        else
        {
          this.b.setFocusable(true);
          this.b.setFocusableInTouchMode(true);
          this.b.requestFocus();
        }
      }
      else
      {
        this.a.t(str);
        this.a.D(true);
        Intent localIntent1 = new Intent();
        localIntent1.setClass(this.mContext, PickproofGuidelActivity5.class);
        this.mContext.startActivity(localIntent1);
        ((Activity)this.mContext).finish();
      }
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429333);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ber
 * JD-Core Version:    0.6.2
 */