package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.uilib.viewpager.PagerAdapter;
import com.tencent.qqpimsecure.uilib.viewpager.ViewPager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public abstract class BaseTabView extends BaseView
{
  private boolean isSlade;
  private TabModel mCurTabModel;
  private ViewFramework mCurrentView;
  private TabModel mDefaultTabModel;
  private ArrayList<ViewFramework> mFrameViewList;
  ImageView mMiddleView;
  private LinkedHashMap<TabModel, ViewFramework> mTabDataMap = null;
  private MyPagerAdapter myAdapter;
  private ViewPager myViewPager;

  public BaseTabView(Context paramContext)
  {
    super(paramContext);
  }

  private void dispatchOnDestroy()
  {
    if (this.mTabDataMap == null);
    while (true)
    {
      return;
      Iterator localIterator = this.mTabDataMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        TabModel localTabModel = (TabModel)localIterator.next();
        if (this.mTabDataMap.get(localTabModel) != null)
          ((ViewFramework)this.mTabDataMap.get(localTabModel)).onDestroy();
      }
    }
  }

  private TabModel getTabModelBySerialNumber(int paramInt)
  {
    Iterator localIterator = this.mTabDataMap.keySet().iterator();
    TabModel localTabModel;
    do
    {
      if (!localIterator.hasNext())
        break;
      localTabModel = (TabModel)localIterator.next();
    }
    while (!((ViewFramework)this.mTabDataMap.get(localTabModel)).equals(this.mFrameViewList.get(paramInt)));
    while (true)
    {
      return localTabModel;
      localTabModel = null;
    }
  }

  private void setCurrentTab(TabModel paramTabModel)
  {
    ViewFramework localViewFramework = (ViewFramework)this.mTabDataMap.get(paramTabModel);
    if ((this.mCurrentView == localViewFramework) || (localViewFramework == null));
    while (true)
    {
      return;
      if (this.mCurrentView != null)
      {
        this.mCurrentView.onPause();
        this.mCurrentView.onStop();
      }
      if (!localViewFramework.isCreated())
      {
        localViewFramework.onCreate();
        localViewFramework.setCreated(true);
      }
      localViewFramework.onStart();
      localViewFramework.onResume();
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      if (localFrameworkTemplateUI != null)
        localFrameworkTemplateUI.updateFocusTitleTab(this.mTabDataMap.keySet(), paramTabModel);
      this.mCurTabModel = paramTabModel;
      this.mCurrentView = localViewFramework;
      if (localFrameworkTemplateUI != null)
        if (this.isSlade)
        {
          localFrameworkTemplateUI.setMainView(this.myViewPager);
          this.myViewPager.setCurrentItem(getSerialNumber(paramTabModel));
        }
        else
        {
          localFrameworkTemplateUI.setMainView(localViewFramework.getView());
        }
    }
  }

  public ViewFramework getCurrentView()
  {
    return this.mCurrentView;
  }

  public int getSerialNumber(TabModel paramTabModel)
  {
    int i = this.mFrameViewList.size();
    int j = 0;
    if (j < i)
      if (!((ViewFramework)this.mTabDataMap.get(paramTabModel)).equals(this.mFrameViewList.get(j)));
    for (int k = j; ; k = -1)
    {
      return k;
      j++;
      break;
    }
  }

  public abstract LinkedHashMap<TabModel, ViewFramework> getTabDataMap();

  public boolean isSlade()
  {
    return this.isSlade;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (getCurrentView() != null)
      getCurrentView().onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (getCurrentView() != null)
      getCurrentView().onContextItemSelected(paramMenuItem);
    return false;
  }

  public void onCreate()
  {
    super.onCreate();
    this.mTabDataMap = getTabDataMap();
    this.mDefaultTabModel = ((TabModel)this.mTabDataMap.keySet().iterator().next());
    setIsSlade(true);
    this.mFrameViewList = new ArrayList();
    Iterator localIterator = this.mTabDataMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      TabModel localTabModel = (TabModel)localIterator.next();
      this.mFrameViewList.add(this.mTabDataMap.get(localTabModel));
    }
    this.myViewPager = new ViewPager(this.mContext);
    this.myAdapter = new MyPagerAdapter(null);
    this.myViewPager.setAdapter(this.myAdapter);
    this.myViewPager.setOnPageChangeListener(new BaseTabView.1(this));
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (getCurrentView() != null)
      getCurrentView().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (getCurrentView() != null)
      getCurrentView().onCreateOptionsMenu(paramMenu);
    return false;
  }

  public void onDestroy()
  {
    dispatchOnDestroy();
    this.mCurrentView = null;
    this.mCurTabModel = null;
    super.onDestroy();
  }

  public void onNewIntent(Intent paramIntent)
  {
    if (getCurrentView() != null)
      getCurrentView().onNewIntent(paramIntent);
  }

  public void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    super.onOperatingBarClick(paramOperatingModel);
  }

  public boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    if (getCurrentView() != null)
      getCurrentView().onOptionsItemSelected(paramMenuModel);
    return false;
  }

  public void onPause()
  {
    if (getCurrentView() != null)
      getCurrentView().onPause();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (getCurrentView() != null)
      getCurrentView().onPrepareOptionsMenu(paramMenu);
    return false;
  }

  public void onResume()
  {
    super.onResume();
    if (getCurrentView() != null)
      getCurrentView().onResume();
    while (true)
    {
      return;
      if (this.mDefaultTabModel != null)
        setCurrentTab(this.mDefaultTabModel);
    }
  }

  public void onStart()
  {
    super.onStart();
    if (getCurrentView() != null)
      getCurrentView().onStart();
  }

  public void onStop()
  {
    if (getCurrentView() != null)
      getCurrentView().onStop();
    super.onStop();
  }

  public void onTabClick(TabModel paramTabModel)
  {
    setCurrentTab(paramTabModel);
  }

  public void setDefaultTab(int paramInt)
  {
    Iterator localIterator = this.mTabDataMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      TabModel localTabModel = (TabModel)localIterator.next();
      if (paramInt == localTabModel.getID())
        this.mDefaultTabModel = localTabModel;
    }
  }

  public void setIsSlade(boolean paramBoolean)
  {
    this.isSlade = paramBoolean;
  }

  public void setTabMessage(int paramInt1, int paramInt2)
  {
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if (localFrameworkTemplateUI == null);
    View localView;
    do
    {
      return;
      localView = localFrameworkTemplateUI.getTabLayout().findViewById(paramInt1);
    }
    while ((localView == null) || (localView.getTag() == null));
    if (paramInt2 > 0);
    for (String str = ((TabModel)localView.getTag()).getTitle() + "(" + paramInt2 + ")"; ; str = ((TabModel)localView.getTag()).getTitle())
    {
      ((TextView)localView.findViewById(2131230886)).setText(str);
      ((TextView)localView.findViewById(2131230885)).setText(str);
      break;
    }
  }

  public void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTabViews(this.mTabDataMap.keySet());
    if (this.mCurTabModel != null)
      paramFrameworkTemplateUI.updateFocusTitleTab(this.mTabDataMap.keySet(), this.mCurTabModel);
    if (this.mCurrentView != null)
    {
      if (!this.isSlade)
        break label62;
      paramFrameworkTemplateUI.setMainView(this.myViewPager);
    }
    while (true)
    {
      paramFrameworkTemplateUI.setTitleStyle(34);
      return;
      label62: paramFrameworkTemplateUI.setMainView(this.mCurrentView.getView());
    }
  }

  class MyPagerAdapter extends PagerAdapter
  {
    private MyPagerAdapter()
    {
    }

    public void destroyItem(View paramView, int paramInt, Object paramObject)
    {
      ((ViewPager)paramView).removeView(((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).getView());
    }

    public void finishUpdate(View paramView)
    {
    }

    public int getCount()
    {
      new StringBuilder("getCount = ").append(BaseTabView.this.mFrameViewList.size()).toString();
      return BaseTabView.this.mFrameViewList.size();
    }

    public Object instantiateItem(View paramView, int paramInt)
    {
      new StringBuilder("instantiateItem arg1 = ").append(paramInt).toString();
      if (!((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).isCreated())
      {
        ((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).onCreate();
        ((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).setCreated(true);
      }
      ((ViewPager)paramView).addView(((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).getView(), paramInt);
      return ((ViewFramework)BaseTabView.this.mFrameViewList.get(paramInt)).getView();
    }

    public boolean isViewFromObject(View paramView, Object paramObject)
    {
      if (paramView == paramObject);
      for (boolean bool = true; ; bool = false)
        return bool;
    }

    public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
    {
    }

    public Parcelable saveState()
    {
      return null;
    }

    public void startUpdate(View paramView)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseTabView
 * JD-Core Version:    0.6.2
 */