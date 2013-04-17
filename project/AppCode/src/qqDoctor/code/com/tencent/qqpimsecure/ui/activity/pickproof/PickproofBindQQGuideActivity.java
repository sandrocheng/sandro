package com.tencent.qqpimsecure.ui.activity.pickproof;

import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import ho;
import java.util.ArrayList;
import java.util.List;
import nd;

public class PickproofBindQQGuideActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  final class a extends BaseView
  {
    private boolean a;
    private ho b = ho.a();

    public a(Context arg2)
    {
      super(2130903121);
      int i = this.b.bV();
      if (i == 0);
      for (this.a = true; ; this.a = false)
      {
        this.b.z(i + 1);
        return;
      }
    }

    public final List createOperatingBarDataList()
    {
      ArrayList localArrayList = new ArrayList();
      if (this.a);
      for (int i = 2131430254; ; i = 2131427438)
      {
        OperatingModel localOperatingModel1 = new OperatingModel(0, i);
        localOperatingModel1.setStyle(0);
        localArrayList.add(localOperatingModel1);
        OperatingModel localOperatingModel2 = new OperatingModel(1, 2131429924);
        localOperatingModel2.setStyle(1);
        localArrayList.add(localOperatingModel2);
        return localArrayList;
      }
    }

    public final void onOperatingBarClick(OperatingModel paramOperatingModel)
    {
      nd localnd = nd.a();
      switch (paramOperatingModel.getID())
      {
      default:
      case 0:
      case 1:
      }
      while (true)
      {
        PickproofBindQQGuideActivity.this.finish();
        return;
        localnd.a(26381);
        continue;
        localnd.a(26382);
        Intent localIntent = new Intent();
        localIntent.setClass(this.mContext, PickproofAccountLoginActivity.class);
        localIntent.putExtra("action", 0);
        localIntent.putExtra("update", true);
        this.mContext.startActivity(localIntent);
      }
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setTitleTextData(2131429289);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofBindQQGuideActivity
 * JD-Core Version:    0.6.2
 */