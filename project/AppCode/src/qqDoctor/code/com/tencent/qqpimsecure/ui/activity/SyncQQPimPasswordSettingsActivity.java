package com.tencent.qqpimsecure.ui.activity;

import afb;
import afd;
import android.content.Context;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public class SyncQQPimPasswordSettingsActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  public final class a extends BaseView
  {
    private EditText b;
    private EditText c;

    public a(Context arg2)
    {
      super(2130903261);
    }

    public final boolean onContextItemSelected(MenuItem paramMenuItem)
    {
      return false;
    }

    public final void onCreate()
    {
      super.onCreate();
      this.b = ((EditText)findViewById(2131231405));
      this.c = ((EditText)findViewById(2131231412));
      findViewById(2131231426).setOnClickListener(new afb(this));
      findViewById(2131231427).setOnClickListener(new afd(this));
    }

    public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
    {
    }

    public final boolean onCreateOptionsMenu(Menu paramMenu)
    {
      return false;
    }

    public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
    {
      return false;
    }

    public final boolean onPrepareOptionsMenu(Menu paramMenu)
    {
      return false;
    }

    public final void onResume()
    {
      super.onResume();
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131427648);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncQQPimPasswordSettingsActivity
 * JD-Core Version:    0.6.2
 */