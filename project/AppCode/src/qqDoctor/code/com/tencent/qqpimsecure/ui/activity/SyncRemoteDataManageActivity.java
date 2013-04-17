package com.tencent.qqpimsecure.ui.activity;

import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public class SyncRemoteDataManageActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a();
  }

  final class a extends BaseView
  {
    public a()
    {
      super(2130903262);
    }

    public final void onCreate()
    {
      super.onCreate();
    }

    public final void onOptionClick(int paramInt)
    {
      Intent localIntent = new Intent(this.mContext, SyncSettingsActivity.class);
      this.mContext.startActivity(localIntent);
    }

    public final void onResume()
    {
      super.onResume();
      getFrameworkTemplateUI().updateInfoBarText(2131427556);
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
      paramFrameworkTemplateUI.setTitleTextData(2131428139);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncRemoteDataManageActivity
 * JD-Core Version:    0.6.2
 */