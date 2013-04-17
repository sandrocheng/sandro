package com.tencent.qqpimsecure.ui.activity.pickproof;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import ha;
import java.util.ArrayList;
import java.util.List;

public class PickproofBindQQSuccessGuideActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  final class a extends BaseView
  {
    public a(Context arg2)
    {
      super(2130903121);
    }

    public final List createOperatingBarDataList()
    {
      ArrayList localArrayList = new ArrayList();
      OperatingModel localOperatingModel = new OperatingModel(0, 2131429983);
      localOperatingModel.setStyle(1);
      localArrayList.add(localOperatingModel);
      return localArrayList;
    }

    public final void onCreate()
    {
      super.onCreate();
      ((ImageView)findViewById(2131230849)).setImageResource(2130838117);
      ha.b(PickproofBindQQSuccessGuideActivity.this, 2131429440);
    }

    public final void onOperatingBarClick(OperatingModel paramOperatingModel)
    {
      switch (paramOperatingModel.getID())
      {
      default:
      case 0:
      }
      while (true)
      {
        return;
        Intent localIntent = new Intent();
        localIntent.setClass(this.mContext, PickproofActivity.class);
        localIntent.putExtra("BIND_QQ", true);
        localIntent.setFlags(67108864);
        this.mContext.startActivity(localIntent);
        ((Activity)this.mContext).finish();
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
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofBindQQSuccessGuideActivity
 * JD-Core Version:    0.6.2
 */