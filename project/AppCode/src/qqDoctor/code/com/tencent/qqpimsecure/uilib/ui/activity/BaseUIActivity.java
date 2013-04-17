package com.tencent.qqpimsecure.uilib.ui.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.TemplateUIFactory;
import com.tencent.tmsecure.utils.SDKUtil;

public abstract class BaseUIActivity extends BaseActivityGroup
{
  private BaseView mCurrentView;
  private FrameworkTemplateUI mTemplateUI;

  private void startHardwareAccelerated()
  {
    if (SDKUtil.getSDKVersion() == 16)
      getWindow().setFlags(16777216, 16777216);
  }

  public void finish()
  {
    if (this.mCurrentView != null)
      this.mCurrentView.finishActivity();
    super.finish();
  }

  public void finishActivityWithAnim()
  {
    overridePendingTransition(2130968597, 2130968600);
  }

  public BaseView getCurrentView()
  {
    return this.mCurrentView;
  }

  public abstract BaseView getView();

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.mCurrentView.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onBackPressed()
  {
    if (this.mCurrentView != null)
      this.mCurrentView.onBackClick();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.mCurrentView != null)
      this.mCurrentView.onConfigurationChanged(paramConfiguration);
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return this.mCurrentView.onContextItemSelected(paramMenuItem);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (SDKUtil.getSDKVersion() == 16)
      getWindow().setFlags(16777216, 16777216);
    this.mTemplateUI = TemplateUIFactory.Instance().getTemplateUIInstance(this);
    this.mCurrentView = getView();
    if (this.mCurrentView != null)
    {
      this.mCurrentView.setFrameworkTemplateUI(this.mTemplateUI);
      if (!this.mCurrentView.isCreated())
        this.mCurrentView.onCreate();
    }
    while (true)
    {
      return;
      finish();
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.mCurrentView.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.mCurrentView != null)
      this.mCurrentView.onCreateOptionsMenu(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  public void onDestroy()
  {
    if (this.mCurrentView != null)
      this.mCurrentView.onDestroy();
    super.onDestroy();
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return this.mCurrentView.onMenuOpened(paramInt, paramMenu);
  }

  public void onNewIntent(Intent paramIntent)
  {
    this.mCurrentView.onNewIntent(paramIntent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public void onPause()
  {
    if (this.mCurrentView != null)
      this.mCurrentView.onPause();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (this.mCurrentView != null)
      this.mCurrentView.onPrepareOptionsMenu(paramMenu);
    if (paramMenu.size() > 0);
    for (boolean bool = super.onPrepareOptionsMenu(paramMenu); ; bool = false)
      return bool;
  }

  public void onResume()
  {
    super.onResume();
    if (this.mCurrentView != null)
      this.mCurrentView.onResume();
  }

  public void onStart()
  {
    super.onStart();
    if (this.mCurrentView != null)
    {
      if (this.mTemplateUI == null)
      {
        this.mTemplateUI = TemplateUIFactory.Instance().getTemplateUIInstance(this);
        this.mCurrentView.setFrameworkTemplateUI(this.mTemplateUI);
      }
      setContentView(this.mCurrentView.getView(), new ViewGroup.LayoutParams(-1, -1));
      this.mCurrentView.onStart();
    }
  }

  public void onStop()
  {
    if (this.mCurrentView != null)
    {
      this.mCurrentView.onStop();
      this.mCurrentView.setFrameworkTemplateUI(null);
    }
    TemplateUIFactory.Instance().recycleTemplateUI(this.mTemplateUI);
    this.mTemplateUI = null;
    super.onStop();
  }

  public void startActivityWithAnim()
  {
    overridePendingTransition(2130968599, 2130968598);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity
 * JD-Core Version:    0.6.2
 */