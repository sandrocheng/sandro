package com.tencent.qqpimsecure.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import anu;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import di;
import np;
import qx;

public class HelpActivity extends BaseUIActivity
{
  public static void a(Menu paramMenu)
  {
    if (paramMenu.findItem(99) == null)
      paramMenu.add(0, 99, 20 + paramMenu.size(), 2131427451).setIcon(2130838014);
  }

  public static void a(TabMenuView.MenuModel paramMenuModel, Context paramContext)
  {
    if (paramMenuModel.getId() == 99)
    {
      Intent localIntent = new Intent(paramContext, HelpActivity.class);
      qx.a();
      int i = di.b().c();
      localIntent.putExtra("title", 2131428597);
      localIntent.putExtra("info", i);
      paramContext.startActivity(localIntent);
    }
  }

  public BaseView getView()
  {
    return new anu(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.HelpActivity
 * JD-Core Version:    0.6.2
 */