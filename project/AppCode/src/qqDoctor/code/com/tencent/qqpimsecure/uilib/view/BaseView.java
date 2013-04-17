package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.common.AutoTestUtil;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.LoadingTemplateUI;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import gw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import sl;

public abstract class BaseView extends ViewFramework
{
  public static final int MSG_CLEAR_ALL = -3;
  public static final int MSG_FINISH_LOAD_DATA = -2;
  public static final int MSG_LOAD_DATA = -1;
  public static final Map<Integer, String> mActivityTitleStack = new LinkedHashMap();
  private AutoTestUtil mAutoTestUtil;
  protected IBatchNext mBatchNext;
  private boolean mEnableAutoTest = false;
  private FrameworkTemplateUI mFrameworkTemplateUI;
  protected Handler mHandler = new BaseView.1(this);
  private sl mImageLoaderService;
  private View mMainView;
  private View mOperatingBar;
  private List<OperatingModel> mOperatingModelList;
  private TabMenuView mTabMenuView;
  private Thread mThread;
  private UIConfigModel mUIConfigModel;
  private boolean mViewDestroy = false;
  private int mViewResId = -1;

  public BaseView(Context paramContext)
  {
    super(paramContext);
  }

  public BaseView(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.mViewResId = paramInt;
  }

  private List<TabMenuView.MenuModel> convertToMenuModel(Menu paramMenu)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramMenu.size();
    int j = 0;
    if (j < i)
    {
      MenuItem localMenuItem = paramMenu.getItem(j);
      TabMenuView.MenuModel localMenuModel;
      if (localMenuItem != null)
      {
        localMenuModel = new TabMenuView.MenuModel();
        localMenuModel.setId(localMenuItem.getItemId());
        localMenuModel.setTitle(String.valueOf(localMenuItem));
        localMenuModel.setIcon(localMenuItem.getIcon());
        if (localMenuItem.getGroupId() >= 0)
          break label117;
      }
      label117: for (boolean bool = true; ; bool = false)
      {
        localMenuModel.setDisable(bool);
        localArrayList.add(localMenuModel);
        j++;
        break;
      }
    }
    return localArrayList;
  }

  private View createMainViewWithOperatingBar(View paramView)
  {
    this.mOperatingModelList = createOperatingBarDataList();
    if (this.mOperatingModelList != null)
    {
      this.mOperatingBar = createOperatingBarView(this.mContext, this.mOperatingModelList, new BaseView.2(this));
      LinearLayout localLinearLayout = new LinearLayout(this.mContext);
      localLinearLayout.setOrientation(1);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      localLayoutParams.weight = 1.0F;
      localLinearLayout.addView(paramView, localLayoutParams);
      localLinearLayout.addView(this.mOperatingBar, new LinearLayout.LayoutParams(-1, -2));
      paramView = localLinearLayout;
    }
    return paramView;
  }

  private int getButtonViewStyleByOperatingModel(OperatingModel paramOperatingModel)
  {
    int i = 2;
    switch (paramOperatingModel.getStyle())
    {
    case 0:
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return i;
      i = 1;
      continue;
      i = 6;
    }
  }

  private float getOperatingBarButtonWeight(int paramInt)
  {
    return 1.0F;
  }

  private void initMainView()
  {
    if (this.mMainView != null)
      return;
    if (this.mViewResId <= 0);
    for (View localView = getCustomView(); ; localView = LayoutInflater.from(this.mContext).inflate(this.mViewResId, null))
    {
      this.mMainView = createMainViewWithOperatingBar(localView);
      break;
    }
  }

  private void initTabMenuView()
  {
    this.mTabMenuView = new TabMenuView(this.mContext, new ArrayList(), new BaseView.3(this));
  }

  private void startAutoTest()
  {
    if (!this.mEnableAutoTest);
    while (true)
    {
      return;
      this.mAutoTestUtil = new AutoTestUtil();
      String str1 = getActivity().getClass().getName();
      String str2 = str1.substring(1 + str1.lastIndexOf('.'), str1.length());
      this.mAutoTestUtil.startAnalysis(str2, System.currentTimeMillis(), Runtime.getRuntime());
    }
  }

  protected List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public View createOperatingBarView(Context paramContext, List<OperatingModel> paramList, View.OnClickListener paramOnClickListener)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903192, null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131231061);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      OperatingModel localOperatingModel = (OperatingModel)localIterator.next();
      int i = getButtonViewStyleByOperatingModel(localOperatingModel);
      ButtonView localButtonView = new ButtonView(paramContext, i);
      localButtonView.setId(localOperatingModel.getID());
      localButtonView.setTag(localOperatingModel);
      String str = localOperatingModel.getText();
      if (localOperatingModel.getNumber() > 0)
        str = str + "(" + localOperatingModel.getNumber() + ")";
      if (localOperatingModel.getTextSize() > 0)
        localButtonView.setTextSize(localOperatingModel.getTextSize());
      localButtonView.setText(str);
      localButtonView.setOnClickListener(paramOnClickListener);
      localButtonView.setButtonEnabled(localOperatingModel.isEnable());
      localButtonView.setVisibility(localOperatingModel.getVisible());
      localButtonView.setPrifixImageIcon(localOperatingModel.getButtonIconid());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams.weight = getOperatingBarButtonWeight(i);
      localLinearLayout.addView(localButtonView, localLayoutParams);
    }
    return localView;
  }

  public View findViewById(int paramInt)
  {
    return this.mMainView.findViewById(paramInt);
  }

  public void finishActivity()
  {
    this.mViewDestroy = true;
    synchronized (mActivityTitleStack)
    {
      mActivityTitleStack.remove(Integer.valueOf(toString().hashCode()));
      return;
    }
  }

  public BaseUIActivity getActivity()
  {
    return (BaseUIActivity)this.mContext;
  }

  public View getCustomView()
  {
    return null;
  }

  public int getFrameworkHeight()
  {
    Rect localRect = new Rect();
    getActivity().getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    if (i == 0)
      i = PhoneInfoUtil.dip2px(this.mContext, 25.0F);
    FrameworkTemplateUI localFrameworkTemplateUI = this.mFrameworkTemplateUI;
    int j = 0;
    if (localFrameworkTemplateUI != null)
      j = this.mFrameworkTemplateUI.getMainViewTop();
    return i + j;
  }

  public FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.mFrameworkTemplateUI;
  }

  public Handler getHandler()
  {
    return this.mHandler;
  }

  public sl getImageLoaderService()
  {
    return this.mImageLoaderService;
  }

  public View getMainView()
  {
    return this.mMainView;
  }

  public View getMainViewOperatingBar()
  {
    return this.mOperatingBar;
  }

  public int getNotificationHeight()
  {
    return gw.a(getActivity());
  }

  public List<OperatingModel> getOperatingBarDataList()
  {
    return this.mOperatingModelList;
  }

  public View getView()
  {
    if (this.mFrameworkTemplateUI != null);
    for (View localView = this.mFrameworkTemplateUI.view(); ; localView = null)
      return localView;
  }

  public void hideEmptyView()
  {
    EmptyTemplateUI localEmptyTemplateUI;
    if (getFrameworkTemplateUI() != null)
    {
      localEmptyTemplateUI = getFrameworkTemplateUI().getEmptyTemplateUI();
      if (localEmptyTemplateUI != null)
        break label20;
    }
    while (true)
    {
      return;
      label20: localEmptyTemplateUI.getCurrentView().setVisibility(4);
    }
  }

  protected void initFrameworkTemplateUI(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.mMainView != null)
      paramFrameworkTemplateUI.setMainView(this.mMainView);
    paramFrameworkTemplateUI.onConfigModelCreate(this.mUIConfigModel);
    subviewTemplateUIConfig(paramFrameworkTemplateUI);
  }

  public void loadDataList()
  {
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.mBatchNext != null)
      this.mBatchNext.netxToDo();
  }

  public void onBackClick()
  {
    getActivity().finish();
  }

  public void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.mFrameworkTemplateUI != null)
      this.mFrameworkTemplateUI.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate()
  {
    super.onCreate();
    this.mViewDestroy = false;
    this.mUIConfigModel = new UIConfigModel();
    onConfigModelCreate(this.mUIConfigModel);
    startAutoTest();
    initMainView();
    if (this.mUIConfigModel.mCreateImageLoaderService)
      this.mImageLoaderService = new sl();
  }

  public void onDestroy()
  {
    this.mViewDestroy = true;
    if (this.mEnableAutoTest)
      this.mAutoTestUtil.stopAnalysis();
    if (this.mImageLoaderService != null)
      this.mImageLoaderService.e();
    if (this.mTabMenuView != null)
      this.mTabMenuView.dismiss();
    super.onDestroy();
  }

  public void onHandlerMessage(Message paramMessage)
  {
  }

  public void onLoadDataStart()
  {
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    if (this.mTabMenuView == null)
      this.mTabMenuView = new TabMenuView(this.mContext, new ArrayList(), new BaseView.3(this));
    if (this.mTabMenuView.isShowing())
      this.mTabMenuView.dismiss();
    while (true)
    {
      List localList = convertToMenuModel(paramMenu);
      this.mTabMenuView.setDataList(localList);
      this.mTabMenuView.getBodyAdapter().setDataList(localList);
      this.mTabMenuView.getBodyAdapter().notifyDataSetChanged();
      this.mTabMenuView.update();
      return false;
      if (this.mFrameworkTemplateUI != null)
        this.mTabMenuView.showAtLocation(this.mFrameworkTemplateUI.view(), 80, 0, 0);
    }
  }

  public void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
  }

  public void onOptionClick(int paramInt)
  {
  }

  protected void onSDCardMounted()
  {
  }

  public void onSDCardUnmounted()
  {
  }

  public void onShowPopOptionMenu()
  {
  }

  public void onStart()
  {
    super.onStart();
    if (this.mFrameworkTemplateUI != null)
      initFrameworkTemplateUI(this.mFrameworkTemplateUI);
  }

  public void onTabClick(TabModel paramTabModel)
  {
  }

  public void refreshListData()
  {
  }

  public void refreshOperatingBar(OperatingModel paramOperatingModel)
  {
    if (this.mOperatingBar == null);
    while (true)
    {
      return;
      View localView = this.mOperatingBar.findViewById(paramOperatingModel.getID());
      if ((localView != null) && ((localView instanceof ButtonView)))
      {
        ButtonView localButtonView = (ButtonView)localView;
        String str = paramOperatingModel.getText();
        if (paramOperatingModel.getNumber() > 0)
          str = str + "(" + paramOperatingModel.getNumber() + ")";
        localButtonView.setText(str);
        int i = getButtonViewStyleByOperatingModel(paramOperatingModel);
        if (localButtonView.getButtonType() != i)
          localButtonView.setButtonByType(i);
        localButtonView.setButtonEnabled(paramOperatingModel.isEnable());
        localButtonView.setVisibility(paramOperatingModel.getVisible());
        localButtonView.setCheckBoxState(paramOperatingModel.isCheck());
        localButtonView.setPrifixImageIcon(paramOperatingModel.getButtonIconid());
        if (paramOperatingModel.isAction())
          localButtonView.startRunning();
        else
          localButtonView.stopRunning();
      }
    }
  }

  public void release()
  {
    this.mContext = null;
  }

  public void resetContext(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public void setBackText(int paramInt)
  {
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setBackText(paramInt);
  }

  public void setBackText(String paramString)
  {
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setBackText(paramString);
  }

  public void setBatchNext(IBatchNext paramIBatchNext)
  {
    this.mBatchNext = paramIBatchNext;
  }

  public void setEmptyImage(int paramInt)
  {
    EmptyTemplateUI localEmptyTemplateUI;
    if (getFrameworkTemplateUI() != null)
    {
      localEmptyTemplateUI = getFrameworkTemplateUI().getEmptyTemplateUI();
      if (localEmptyTemplateUI != null)
        break label20;
    }
    while (true)
    {
      return;
      label20: if (!localEmptyTemplateUI.isShown())
        localEmptyTemplateUI.setVisibility(0);
      localEmptyTemplateUI.setImageResource(paramInt);
    }
  }

  public void setEmptyText(int paramInt)
  {
    setEmptyText(this.mContext.getString(paramInt));
  }

  public void setEmptyText(String paramString)
  {
    EmptyTemplateUI localEmptyTemplateUI;
    if (getFrameworkTemplateUI() != null)
    {
      localEmptyTemplateUI = getFrameworkTemplateUI().getEmptyTemplateUI();
      if (localEmptyTemplateUI != null)
        break label20;
    }
    while (true)
    {
      return;
      label20: if (!localEmptyTemplateUI.isShown())
        localEmptyTemplateUI.setVisibility(0);
      localEmptyTemplateUI.setText(paramString);
    }
  }

  public void setFrameworkTemplateUI(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.mFrameworkTemplateUI != null)
      this.mFrameworkTemplateUI.detachTemplateFramework(this);
    if (paramFrameworkTemplateUI != null)
      paramFrameworkTemplateUI.attachTemplateFramework(this);
    this.mFrameworkTemplateUI = paramFrameworkTemplateUI;
  }

  public void startLoading()
  {
    LoadingTemplateUI localLoadingTemplateUI;
    if (getFrameworkTemplateUI() != null)
    {
      hideEmptyView();
      localLoadingTemplateUI = getFrameworkTemplateUI().getLoadingTemplateUI();
      if (localLoadingTemplateUI != null)
        break label24;
    }
    while (true)
    {
      return;
      label24: if (!localLoadingTemplateUI.isShown())
        localLoadingTemplateUI.setVisibility(0);
      localLoadingTemplateUI.startLoading();
    }
  }

  public void stopLoading()
  {
    LoadingTemplateUI localLoadingTemplateUI;
    if (getFrameworkTemplateUI() != null)
    {
      localLoadingTemplateUI = getFrameworkTemplateUI().getLoadingTemplateUI();
      if (localLoadingTemplateUI != null)
        break label20;
    }
    while (true)
    {
      return;
      label20: if (localLoadingTemplateUI.isShown())
        localLoadingTemplateUI.setVisibility(4);
      localLoadingTemplateUI.stopLoading();
    }
  }

  protected abstract void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI);

  public static abstract interface IBatchNext
  {
    public abstract void netxToDo();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseView
 * JD-Core Version:    0.6.2
 */