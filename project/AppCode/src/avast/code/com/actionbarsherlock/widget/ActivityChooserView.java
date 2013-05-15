package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.string;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView extends ViewGroup
  implements ActivityChooserModel.ActivityChooserModelClient
{
  private static final boolean IS_HONEYCOMB;
  private final IcsLinearLayout mActivityChooserContent;
  private final Drawable mActivityChooserContentBackground;
  private final ActivityChooserView.ActivityChooserViewAdapter mAdapter;
  private final ActivityChooserView.Callbacks mCallbacks;
  private final Context mContext;
  private int mDefaultActionButtonContentDescription;
  private final FrameLayout mDefaultActivityButton;
  private final ImageView mDefaultActivityButtonImage;
  private final FrameLayout mExpandActivityOverflowButton;
  private final ImageView mExpandActivityOverflowButtonImage;
  private int mInitialActivityCount = 4;
  private boolean mIsAttachedToWindow;
  private boolean mIsSelectingDefaultActivity;
  private final int mListPopupMaxWidth;
  private IcsListPopupWindow mListPopupWindow;
  private final DataSetObserver mModelDataSetOberver = new ActivityChooserView.1(this);
  private PopupWindow.OnDismissListener mOnDismissListener;
  private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener = new ActivityChooserView.2(this);
  ActionProvider mProvider;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = true; ; bool = false)
    {
      IS_HONEYCOMB = bool;
      return;
    }
  }

  public ActivityChooserView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActivityChooserView, paramInt, 0);
    this.mInitialActivityCount = localTypedArray.getInt(1, 4);
    Drawable localDrawable = localTypedArray.getDrawable(2);
    localTypedArray.recycle();
    LayoutInflater.from(this.mContext).inflate(R.layout.abs__activity_chooser_view, this, true);
    this.mCallbacks = new ActivityChooserView.Callbacks(this, null);
    this.mActivityChooserContent = ((IcsLinearLayout)findViewById(R.id.abs__activity_chooser_view_content));
    this.mActivityChooserContentBackground = this.mActivityChooserContent.getBackground();
    this.mDefaultActivityButton = ((FrameLayout)findViewById(R.id.abs__default_activity_button));
    this.mDefaultActivityButton.setOnClickListener(this.mCallbacks);
    this.mDefaultActivityButton.setOnLongClickListener(this.mCallbacks);
    this.mDefaultActivityButtonImage = ((ImageView)this.mDefaultActivityButton.findViewById(R.id.abs__image));
    this.mExpandActivityOverflowButton = ((FrameLayout)findViewById(R.id.abs__expand_activities_button));
    this.mExpandActivityOverflowButton.setOnClickListener(this.mCallbacks);
    this.mExpandActivityOverflowButtonImage = ((ImageView)this.mExpandActivityOverflowButton.findViewById(R.id.abs__image));
    this.mExpandActivityOverflowButtonImage.setImageDrawable(localDrawable);
    this.mAdapter = new ActivityChooserView.ActivityChooserViewAdapter(this, null);
    this.mAdapter.registerDataSetObserver(new ActivityChooserView.3(this));
    Resources localResources = paramContext.getResources();
    this.mListPopupMaxWidth = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
  }

  private IcsListPopupWindow getListPopupWindow()
  {
    if (this.mListPopupWindow == null)
    {
      this.mListPopupWindow = new IcsListPopupWindow(getContext());
      this.mListPopupWindow.setAdapter(this.mAdapter);
      this.mListPopupWindow.setAnchorView(this);
      this.mListPopupWindow.setModal(true);
      this.mListPopupWindow.setOnItemClickListener(this.mCallbacks);
      this.mListPopupWindow.setOnDismissListener(this.mCallbacks);
    }
    return this.mListPopupWindow;
  }

  private void showPopupUnchecked(int paramInt)
  {
    if (this.mAdapter.getDataModel() == null)
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    boolean bool;
    int j;
    label59: label92: IcsListPopupWindow localIcsListPopupWindow;
    if (this.mDefaultActivityButton.getVisibility() == 0)
    {
      bool = true;
      int i = this.mAdapter.getActivityCount();
      if (!bool)
        break label189;
      j = 1;
      if ((paramInt == 2147483647) || (i <= j + paramInt))
        break label195;
      this.mAdapter.setShowFooterView(true);
      this.mAdapter.setMaxActivityCount(paramInt - 1);
      localIcsListPopupWindow = getListPopupWindow();
      if (!localIcsListPopupWindow.isShowing())
      {
        if ((!this.mIsSelectingDefaultActivity) && (bool))
          break label214;
        this.mAdapter.setShowDefaultActivity(true, bool);
      }
    }
    while (true)
    {
      localIcsListPopupWindow.setContentWidth(Math.min(this.mAdapter.measureContentWidth(), this.mListPopupMaxWidth));
      localIcsListPopupWindow.show();
      if (this.mProvider != null)
        this.mProvider.subUiVisibilityChanged(true);
      localIcsListPopupWindow.getListView().setContentDescription(this.mContext.getString(R.string.abs__activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label189: j = 0;
      break label59;
      label195: this.mAdapter.setShowFooterView(false);
      this.mAdapter.setMaxActivityCount(paramInt);
      break label92;
      label214: this.mAdapter.setShowDefaultActivity(false, false);
    }
  }

  private void updateAppearance()
  {
    if (this.mAdapter.getCount() > 0)
    {
      this.mExpandActivityOverflowButton.setEnabled(true);
      int i = this.mAdapter.getActivityCount();
      int j = this.mAdapter.getHistorySize();
      if ((i <= 0) || (j <= 0))
        break label159;
      this.mDefaultActivityButton.setVisibility(0);
      ResolveInfo localResolveInfo = this.mAdapter.getDefaultActivity();
      PackageManager localPackageManager = this.mContext.getPackageManager();
      this.mDefaultActivityButtonImage.setImageDrawable(localResolveInfo.loadIcon(localPackageManager));
      if (this.mDefaultActionButtonContentDescription != 0)
      {
        CharSequence localCharSequence = localResolveInfo.loadLabel(localPackageManager);
        String str = this.mContext.getString(this.mDefaultActionButtonContentDescription, new Object[] { localCharSequence });
        this.mDefaultActivityButton.setContentDescription(str);
      }
      label126: if (this.mDefaultActivityButton.getVisibility() != 0)
        break label171;
      this.mActivityChooserContent.setBackgroundDrawable(this.mActivityChooserContentBackground);
    }
    while (true)
    {
      return;
      this.mExpandActivityOverflowButton.setEnabled(false);
      break;
      label159: this.mDefaultActivityButton.setVisibility(8);
      break label126;
      label171: this.mActivityChooserContent.setBackgroundDrawable(null);
      this.mActivityChooserContent.setPadding(0, 0, 0, 0);
    }
  }

  public boolean dismissPopup()
  {
    if (isShowingPopup())
    {
      getListPopupWindow().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive())
        localViewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
    }
    return true;
  }

  public ActivityChooserModel getDataModel()
  {
    return this.mAdapter.getDataModel();
  }

  public boolean isShowingPopup()
  {
    return getListPopupWindow().isShowing();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ActivityChooserModel localActivityChooserModel = this.mAdapter.getDataModel();
    if (localActivityChooserModel != null)
      localActivityChooserModel.registerObserver(this.mModelDataSetOberver);
    this.mIsAttachedToWindow = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    ActivityChooserModel localActivityChooserModel = this.mAdapter.getDataModel();
    if (localActivityChooserModel != null);
    try
    {
      localActivityChooserModel.unregisterObserver(this.mModelDataSetOberver);
      label24: ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive())
        localViewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
      this.mIsAttachedToWindow = false;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label24;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mActivityChooserContent.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (getListPopupWindow().isShowing())
      showPopupUnchecked(this.mAdapter.getMaxActivityCount());
    while (true)
    {
      return;
      dismissPopup();
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    IcsLinearLayout localIcsLinearLayout = this.mActivityChooserContent;
    if (this.mDefaultActivityButton.getVisibility() != 0)
      paramInt2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    measureChild(localIcsLinearLayout, paramInt1, paramInt2);
    setMeasuredDimension(localIcsLinearLayout.getMeasuredWidth(), localIcsLinearLayout.getMeasuredHeight());
  }

  public void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel)
  {
    this.mAdapter.setDataModel(paramActivityChooserModel);
    if (isShowingPopup())
    {
      dismissPopup();
      showPopup();
    }
  }

  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.mDefaultActionButtonContentDescription = paramInt;
  }

  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = this.mContext.getString(paramInt);
    this.mExpandActivityOverflowButtonImage.setContentDescription(str);
  }

  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.mExpandActivityOverflowButtonImage.setImageDrawable(paramDrawable);
  }

  public void setInitialActivityCount(int paramInt)
  {
    this.mInitialActivityCount = paramInt;
  }

  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.mOnDismissListener = paramOnDismissListener;
  }

  public void setProvider(ActionProvider paramActionProvider)
  {
    this.mProvider = paramActionProvider;
  }

  public boolean showPopup()
  {
    boolean bool1 = isShowingPopup();
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = this.mIsAttachedToWindow;
      bool2 = false;
      if (bool3)
        break label24;
    }
    while (true)
    {
      return bool2;
      label24: this.mIsSelectingDefaultActivity = false;
      showPopupUnchecked(this.mInitialActivityCount);
      bool2 = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView
 * JD-Core Version:    0.6.2
 */