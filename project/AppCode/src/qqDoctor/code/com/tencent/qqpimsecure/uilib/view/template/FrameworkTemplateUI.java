package com.tencent.qqpimsecure.uilib.view.template;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.service.TabFactory;
import com.tencent.qqpimsecure.uilib.ui.adapter.PopListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.InfoBarView;
import com.tencent.qqpimsecure.uilib.view.PopListView;
import dv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FrameworkTemplateUI
{
  public static final byte BACK_BUTTON_STYLE_INVISIBLE = 0;
  public static final byte BACK_BUTTON_STYLE_TO_MAIN = 1;
  public static final byte BACK_BUTTON_STYLE_TO_PRE = 2;
  public static final byte INFO_BAR_STYLE_INVISIBLE = 48;
  public static final byte INFO_BAR_STYLE_MEMORY = 51;
  public static final byte INFO_BAR_STYLE_MIDDLE_TEXT = 54;
  public static final byte INFO_BAR_STYLE_NULL = 49;
  public static final byte INFO_BAR_STYLE_RAM = 52;
  public static final byte INFO_BAR_STYLE_TEXT = 50;
  public static final byte OPTION_BUTTON_STYLE_DESCRIPT = 20;
  public static final byte OPTION_BUTTON_STYLE_INVISIBLE = 16;
  public static final byte OPTION_BUTTON_STYLE_NAME_LIST = 21;
  public static final byte OPTION_BUTTON_STYLE_SEARCH = 19;
  public static final byte OPTION_BUTTON_STYLE_SETTING = 18;
  public static final byte TITLE_BAR_STYLE_NULL = 53;
  public static final byte TITLE_STYLE_TAB = 34;
  public static final byte TITLE_STYLE_TEXT = 33;
  private Context mApplicationContext;
  private BaseView mAttachFramework;
  private TextView mBackButton;
  private View.OnClickListener mBackClickListener = new FrameworkTemplateUI.1(this);
  private TextView mDescriptTextView;
  private EmptyTemplateUI mEmptyTemplateUI;
  private View mFrameworkLayout;
  private LinearLayout mInfoBarLayout;
  private InfoBarView mInfoBarView;
  private LoadingTemplateUI mLoadingTemplateUI;
  private FrameLayout mMainFrame;
  private LinearLayout mMainLayout;
  private View mOptionButton;
  private ImageView mOptionButtonImg;
  List<TabModel> mOptionButtonPopModelList;
  private View.OnClickListener mOptionClickListener = new FrameworkTemplateUI.4(this);
  private ImageView mOptionNotifyImg;
  private View.OnClickListener mOptionPopListener = new FrameworkTemplateUI.3(this);
  private AdapterView.OnItemClickListener mPopListItemClickListener = new FrameworkTemplateUI.2(this);
  private PopListView mPopListView;
  private dv<?> mPopOptionMenuCallback = null;
  private View.OnClickListener mTabClickListener = new FrameworkTemplateUI.5(this);
  private LinearLayout mTabLayout;
  private View mTipsView;
  private RelativeLayout mTitleBarLayout;
  private int mTitleBarStyle = 33;
  private TextView mTitleText;

  public FrameworkTemplateUI(Context paramContext)
  {
    this.mApplicationContext = paramContext.getApplicationContext();
    this.mFrameworkLayout = ((LinearLayout)LayoutInflater.from(this.mApplicationContext).inflate(2130903158, null));
    this.mTitleBarLayout = ((RelativeLayout)this.mFrameworkLayout.findViewById(2131231031));
    this.mBackButton = ((TextView)this.mFrameworkLayout.findViewById(2131231032));
    this.mOptionButton = this.mFrameworkLayout.findViewById(2131231035);
    this.mOptionButtonImg = ((ImageView)this.mOptionButton.findViewById(2131231036));
    this.mOptionNotifyImg = ((ImageView)this.mOptionButton.findViewById(2131231037));
    this.mTitleText = ((TextView)this.mFrameworkLayout.findViewById(2131231033));
    this.mTabLayout = ((LinearLayout)this.mFrameworkLayout.findViewById(2131231034));
    this.mInfoBarLayout = ((LinearLayout)this.mFrameworkLayout.findViewById(2131231040));
    this.mMainFrame = ((FrameLayout)this.mFrameworkLayout.findViewById(2131231039));
    this.mMainLayout = ((LinearLayout)this.mMainFrame.findViewById(2131231041));
    this.mDescriptTextView = ((TextView)this.mTitleBarLayout.findViewById(2131231038));
    initInfoBarView(this.mApplicationContext);
    this.mBackButton.setOnClickListener(this.mBackClickListener);
  }

  private void enableTabTitle()
  {
    if (this.mTitleText.getVisibility() != 8)
      this.mTitleText.setVisibility(8);
    if (this.mTabLayout.getVisibility() != 0)
      this.mTabLayout.setVisibility(0);
  }

  private void enableTextTitle()
  {
    if (this.mTitleText.getVisibility() != 0)
      this.mTitleText.setVisibility(0);
    if (this.mTabLayout.getVisibility() != 8)
      this.mTabLayout.setVisibility(8);
  }

  private void initInfoBarView(Context paramContext)
  {
    this.mInfoBarView = new InfoBarView(paramContext, 3);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    this.mInfoBarLayout.addView(this.mInfoBarView, localLayoutParams);
  }

  private void setBackTextAuto(String paramString)
  {
    synchronized (BaseView.mActivityTitleStack)
    {
      int i = this.mAttachFramework.toString().hashCode();
      BaseView.mActivityTitleStack.put(Integer.valueOf(i), paramString);
      if (BaseView.mActivityTitleStack.size() > 0)
      {
        ArrayList localArrayList = new ArrayList(BaseView.mActivityTitleStack.values());
        if (localArrayList.size() > 1)
          this.mBackButton.setText((CharSequence)localArrayList.get(-2 + localArrayList.size()));
      }
      return;
    }
  }

  private void setOptionButtonStyleInvisible()
  {
    if (this.mOptionButton.getVisibility() != 4)
      this.mOptionButton.setVisibility(4);
    if (this.mDescriptTextView.getVisibility() != 4)
      this.mDescriptTextView.setVisibility(4);
    if (this.mTitleText.getVisibility() != 0)
      this.mTitleText.setVisibility(0);
  }

  public void UpdateInfoBarMemoryAndRam()
  {
    this.mInfoBarView.doRefresh(this.mApplicationContext);
  }

  public void attachTemplateFramework(BaseView paramBaseView)
  {
    if (paramBaseView != null)
      this.mAttachFramework = paramBaseView;
  }

  public void clearParent(View paramView)
  {
    try
    {
      if (paramView.getParent() != null)
        ((ViewGroup)paramView.getParent()).removeView(paramView);
      label18: return;
    }
    catch (Exception localException)
    {
      break label18;
    }
  }

  public void createEmptyTemplateUI(UIConfigModel paramUIConfigModel)
  {
    if (this.mEmptyTemplateUI == null)
    {
      this.mEmptyTemplateUI = new EmptyTemplateUI(this.mApplicationContext);
      this.mEmptyTemplateUI.setTemplateType(paramUIConfigModel.mEmptyTemplateType);
      this.mEmptyTemplateUI.onCreate();
      this.mEmptyTemplateUI.setVisibility(4);
      this.mMainFrame.addView(this.mEmptyTemplateUI.getCurrentView(), 0);
    }
    while (true)
    {
      return;
      this.mMainFrame.removeView(this.mEmptyTemplateUI.getCurrentView());
      this.mEmptyTemplateUI.setTemplateType(paramUIConfigModel.mEmptyTemplateType);
      this.mEmptyTemplateUI.onCreate();
      this.mEmptyTemplateUI.setVisibility(4);
      this.mMainFrame.addView(this.mEmptyTemplateUI.getCurrentView(), 0);
      this.mEmptyTemplateUI.reset();
    }
  }

  public void createLoadingTemplateUI(UIConfigModel paramUIConfigModel)
  {
    if (this.mLoadingTemplateUI == null)
    {
      this.mLoadingTemplateUI = new LoadingTemplateUI(this.mApplicationContext);
      this.mLoadingTemplateUI.onCreate();
      this.mMainFrame.addView(this.mLoadingTemplateUI.getCurrentView(), 0, new ViewGroup.LayoutParams(-1, -1));
    }
    while (true)
    {
      this.mLoadingTemplateUI.setVisibility(4);
      return;
      this.mMainFrame.removeView(this.mLoadingTemplateUI.getCurrentView());
      this.mMainFrame.addView(this.mLoadingTemplateUI.getCurrentView(), 0, new ViewGroup.LayoutParams(-1, -1));
    }
  }

  public void detachTemplateFramework(BaseView paramBaseView)
  {
    if (this.mAttachFramework == paramBaseView)
      this.mAttachFramework = null;
  }

  public EmptyTemplateUI getEmptyTemplateUI()
  {
    return this.mEmptyTemplateUI;
  }

  public LoadingTemplateUI getLoadingTemplateUI()
  {
    return this.mLoadingTemplateUI;
  }

  public int getMainViewTop()
  {
    return this.mMainFrame.getTop() + this.mInfoBarLayout.getBottom();
  }

  public LinearLayout getTabLayout()
  {
    return this.mTabLayout;
  }

  public void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    if (paramUIConfigModel.mCreateEmptyTemplateUI)
      createEmptyTemplateUI(paramUIConfigModel);
    label71: 
    while (true)
    {
      if (paramUIConfigModel.mCreateLoadingTemplateUI)
        createLoadingTemplateUI(paramUIConfigModel);
      while (true)
      {
        return;
        if (this.mEmptyTemplateUI == null)
          break label71;
        this.mMainFrame.removeView(this.mEmptyTemplateUI.getCurrentView());
        break;
        if (this.mLoadingTemplateUI != null)
          this.mMainFrame.removeView(this.mLoadingTemplateUI.getCurrentView());
      }
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (((paramConfiguration.orientation == 2) || (paramConfiguration.orientation == 1)) && (this.mPopListView != null) && (this.mPopListView.isShowing()))
      this.mPopListView.dismissPopList();
  }

  public void popOptionMenu(Context paramContext)
  {
    if (this.mOptionButtonPopModelList == null);
    while (true)
    {
      return;
      if ((this.mPopListView == null) || (!this.mPopListView.isShowing()))
      {
        this.mPopListView = new PopListView(paramContext);
        PopListAdapter localPopListAdapter = new PopListAdapter(paramContext);
        this.mPopListView.setAdapter(localPopListAdapter);
        this.mPopListView.setAnchorView(this.mOptionButton);
        this.mPopListView.setOnItemClickedListner(this.mPopListItemClickListener);
        Iterator localIterator = this.mOptionButtonPopModelList.iterator();
        while (localIterator.hasNext())
          localPopListAdapter.addTabModel((TabModel)localIterator.next());
        this.mPopListView.showPopList();
        this.mAttachFramework.onShowPopOptionMenu();
        if (this.mPopOptionMenuCallback != null)
          this.mPopOptionMenuCallback.a(null);
      }
    }
  }

  public void removeExistedTipsView()
  {
    if ((this.mTipsView != null) && (this.mMainFrame != null))
    {
      this.mMainFrame.removeView(this.mTipsView);
      this.mTipsView = null;
    }
  }

  public void resetTemplateUI()
  {
    this.mMainLayout.removeAllViews();
    setBackButtonStyle((byte)2);
    setBackButtonBackground(this.mApplicationContext, 2130837767);
    setBackButtonTextColor(this.mApplicationContext, 2131296400);
    setOptionButtonStyle((byte)16);
    setOptionButtonBackground(this.mApplicationContext.getResources().getDrawable(2130837770));
    setTitleStyle(33);
    setTitleTextColor(this.mApplicationContext, 2131296400);
    this.mTitleText.setText("");
    this.mTabLayout.removeAllViews();
    setInfoBarStyle((byte)50);
    removeExistedTipsView();
    setOptionButtonEnable(true);
    this.mTitleBarLayout.setVisibility(0);
    setTitleBarBackground(this.mApplicationContext, 2130837762);
    setBackGroundColor(this.mApplicationContext, 2131296295);
    setTitleBarLayoutPadding();
    if ((this.mPopListView != null) && (this.mPopListView.isShowing()))
      this.mPopListView.dismissPopList();
  }

  public void setBackButtonBackground(Context paramContext, int paramInt)
  {
    this.mBackButton.setBackgroundResource(paramInt);
  }

  public void setBackButtonStyle(byte paramByte)
  {
    switch (paramByte)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (this.mBackButton.getVisibility() != 4)
      {
        this.mBackButton.setVisibility(4);
        continue;
        if (this.mBackButton.getVisibility() != 0)
        {
          this.mBackButton.setVisibility(0);
          continue;
          if (this.mBackButton.getVisibility() != 0)
            this.mBackButton.setVisibility(0);
        }
      }
    }
  }

  public void setBackButtonTextColor(Context paramContext, int paramInt)
  {
    this.mBackButton.setTextColor(paramContext.getResources().getColor(paramInt));
  }

  public void setBackGroundColor(Context paramContext, int paramInt)
  {
    this.mMainFrame.setBackgroundColor(paramContext.getResources().getColor(paramInt));
  }

  public void setBackText(int paramInt)
  {
    this.mBackButton.setText(paramInt);
  }

  public void setBackText(String paramString)
  {
    this.mBackButton.setText(paramString);
  }

  public void setDescriptionTextView(CharSequence paramCharSequence)
  {
    if (this.mOptionButton.getVisibility() == 0)
      this.mOptionButton.setVisibility(4);
    if (this.mTitleText.getVisibility() == 0)
      this.mTitleText.setVisibility(4);
    if (this.mDescriptTextView.getVisibility() != 0)
      this.mDescriptTextView.setVisibility(0);
    this.mDescriptTextView.setText(paramCharSequence);
    this.mOptionButtonPopModelList = null;
  }

  public void setInfoBarRamAndProcessCount(String paramString, int paramInt)
  {
    this.mInfoBarView.setPhoneRam(paramString);
    this.mInfoBarView.setProcessNum(paramInt);
  }

  public void setInfoBarStyle(byte paramByte)
  {
    if (paramByte == 49)
      if (this.mInfoBarLayout.getVisibility() != 8)
        this.mInfoBarLayout.setVisibility(8);
    while (true)
    {
      this.mInfoBarView.setShadowVisible(true);
      return;
      if (paramByte == 48)
      {
        if (this.mInfoBarLayout.getVisibility() != 4)
          this.mInfoBarLayout.setVisibility(4);
      }
      else
      {
        if (this.mInfoBarLayout.getVisibility() != 0)
          this.mInfoBarLayout.setVisibility(0);
        switch (paramByte)
        {
        case 53:
        default:
          break;
        case 50:
          this.mInfoBarView.changeInfoBarType(this.mApplicationContext, 3);
          break;
        case 51:
          this.mInfoBarView.changeInfoBarType(this.mApplicationContext, 1);
          UpdateInfoBarMemoryAndRam();
          break;
        case 52:
          this.mInfoBarView.changeInfoBarType(this.mApplicationContext, 2);
          break;
        case 54:
          this.mInfoBarView.changeInfoBarType(this.mApplicationContext, 5);
        }
      }
    }
  }

  public void setInfoBarWithCustomView(View paramView)
  {
    if (this.mInfoBarLayout.getVisibility() != 0)
      this.mInfoBarLayout.setVisibility(0);
    this.mInfoBarView.changeInfoBarType(this.mApplicationContext, 4);
    if (paramView.getParent() == null)
      this.mInfoBarView.addView(paramView);
  }

  public void setInfoBarWithoutShadow()
  {
    this.mInfoBarView.setShadowVisible(false);
  }

  public void setMainView(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if (localViewParent != null)
      ((ViewGroup)localViewParent).removeAllViews();
    this.mMainLayout.removeAllViews();
    this.mMainLayout.addView(paramView, new ViewGroup.LayoutParams(-1, -1));
  }

  public void setOptionButtonBackground(Drawable paramDrawable)
  {
    this.mOptionButton.setBackgroundDrawable(paramDrawable);
  }

  public void setOptionButtonEnable(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.mOptionButtonImg.setAlpha(76);
    while (true)
    {
      this.mOptionButton.setEnabled(paramBoolean);
      return;
      this.mOptionButtonImg.setAlpha(255);
    }
  }

  public void setOptionButtonPopStyle(List<TabModel> paramList)
  {
    this.mOptionButtonImg.setImageResource(2130838132);
    this.mOptionButton.setOnClickListener(this.mOptionPopListener);
    if (this.mOptionButton.getVisibility() != 0)
      this.mOptionButton.setVisibility(0);
    this.mOptionButtonPopModelList = paramList;
    this.mOptionNotifyImg.setVisibility(8);
  }

  public void setOptionButtonStyle(byte paramByte)
  {
    switch (paramByte)
    {
    case 17:
    default:
    case 16:
    case 18:
    case 19:
    case 21:
    case 20:
    }
    while (true)
    {
      this.mOptionNotifyImg.setVisibility(8);
      return;
      setOptionButtonStyleInvisible();
      continue;
      setOptionButtonWithImageResource(2130837777);
      continue;
      setOptionButtonWithImageResource(2130837776);
      continue;
      setOptionButtonWithImageResource(2130837775);
      continue;
      setDescriptionTextView("");
    }
  }

  public void setOptionButtonWithImageResource(int paramInt)
  {
    if (this.mOptionButton.getVisibility() != 0)
      this.mOptionButton.setVisibility(0);
    this.mOptionButton.setOnClickListener(this.mOptionClickListener);
    this.mOptionButtonImg.setImageResource(paramInt);
    this.mOptionButtonPopModelList = null;
  }

  public void setOptionNotifyImg(int paramInt)
  {
    if (paramInt <= 0)
      this.mOptionNotifyImg.setVisibility(8);
    while (true)
    {
      return;
      this.mOptionNotifyImg.setVisibility(0);
      this.mOptionNotifyImg.setImageResource(paramInt);
    }
  }

  public void setPopOptionMenuCallback(dv paramdv)
  {
    this.mPopOptionMenuCallback = paramdv;
  }

  public void setTipsView(View paramView)
  {
    removeExistedTipsView();
    clearParent(paramView);
    this.mTipsView = paramView;
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
    if (this.mMainFrame != null);
    try
    {
      this.mMainFrame.addView(paramView, localLayoutParams);
      label41: return;
    }
    catch (Exception localException)
    {
      break label41;
    }
  }

  public void setTitleBar(byte paramByte)
  {
    if (paramByte == 53)
      this.mTitleBarLayout.setVisibility(8);
    while (true)
    {
      return;
      this.mTitleBarLayout.setVisibility(0);
    }
  }

  public void setTitleBarBackground(Context paramContext, int paramInt)
  {
    this.mTitleBarLayout.setBackgroundResource(paramInt);
  }

  public void setTitleBarLayoutPadding()
  {
    this.mTitleBarLayout.setPadding((int)(0.5F + 5.0F * this.mApplicationContext.getResources().getDisplayMetrics().density), 0, (int)(0.5F + 5.0F * this.mApplicationContext.getResources().getDisplayMetrics().density), 0);
  }

  public void setTitleStyle(int paramInt)
  {
    this.mTitleBarStyle = paramInt;
    switch (this.mTitleBarStyle)
    {
    default:
    case 34:
    case 33:
    }
    while (true)
    {
      return;
      enableTabTitle();
      continue;
      enableTextTitle();
    }
  }

  public void setTitleTabViews(Set<TabModel> paramSet)
  {
    int i = 0;
    if (paramSet.size() == 1);
    for (int j = 1; ; j = 0)
    {
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        TabModel localTabModel = (TabModel)localIterator.next();
        View localView = TabFactory.createTabView(this.mApplicationContext, localTabModel, i, j);
        localView.setOnClickListener(this.mTabClickListener);
        this.mTabLayout.addView(localView);
        i++;
      }
    }
  }

  public void setTitleTextColor(Context paramContext, int paramInt)
  {
    this.mTitleText.setTextColor(paramContext.getResources().getColor(paramInt));
  }

  public void setTitleTextData(int paramInt)
  {
    this.mTitleText.setText(paramInt);
    setBackTextAuto(QQPimApplication.a().getString(paramInt));
  }

  public void setTitleTextData(String paramString)
  {
    this.mTitleText.setText(paramString);
    setBackTextAuto(paramString);
  }

  public void updateFocusTitleTab(Set<TabModel> paramSet, TabModel paramTabModel)
  {
    int i;
    int j;
    label23: View localView;
    if (paramSet.size() == 1)
    {
      i = 0;
      Iterator localIterator = paramSet.iterator();
      j = 0;
      if (!localIterator.hasNext())
        return;
      TabModel localTabModel = (TabModel)localIterator.next();
      localView = this.mTabLayout.findViewById(localTabModel.getID());
      if ((localView != null) && (i != 0))
      {
        if (localTabModel.getID() != paramTabModel.getID())
          break label125;
        if (j != 0)
          break label114;
        localView.setBackgroundResource(2130838331);
      }
    }
    while (true)
    {
      TabFactory.setTabStyle(this.mApplicationContext, localView, true);
      j++;
      break label23;
      i = 1;
      break;
      label114: localView.setBackgroundResource(2130838334);
    }
    label125: if (j == 0)
      localView.setBackgroundResource(2130838330);
    while (true)
    {
      TabFactory.setTabStyle(this.mApplicationContext, localView, false);
      break;
      localView.setBackgroundResource(2130838333);
    }
  }

  public void updateInfoBarText(int paramInt)
  {
    setInfoBarStyle((byte)50);
    this.mInfoBarView.setCommonText(paramInt);
  }

  public void updateInfoBarText(String paramString)
  {
    setInfoBarStyle((byte)50);
    this.mInfoBarView.setCommonText(paramString);
  }

  public void updateInfoBarTextWithMiddleStyle(String paramString)
  {
    setInfoBarStyle((byte)54);
    this.mInfoBarView.setCommonText(paramString);
  }

  public View view()
  {
    return this.mFrameworkLayout;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI
 * JD-Core Version:    0.6.2
 */