package com.tencent.qqpimsecure.ui.activity;

import android.content.Context;
import android.content.Intent;
import ant;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class HelpListViewActivity extends BaseUIActivity
{
  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, HelpListViewActivity.class);
    localIntent.putExtra("type", 24);
    paramContext.startActivity(localIntent);
  }

  public BaseView getView()
  {
    return new ant(this, getIntent().getIntExtra("type", 0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.HelpListViewActivity
 * JD-Core Version:    0.6.2
 */