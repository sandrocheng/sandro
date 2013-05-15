package android.support.v4.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avast.android.generic.aa;
import com.avast.android.generic.util.m;
import com.avast.android.generic.v;

public class FragmentBreadCrumbs extends ViewGroup
  implements FragmentManager.OnBackStackChangedListener
{
  private static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
  private static final int MEASURED_STATE_MASK = -16777216;
  private static final int MEASURED_STATE_TOO_SMALL = 16777216;
  FragmentActivity mActivity;
  LinearLayout mContainer;
  LayoutInflater mInflater;
  BackStackRecord mLastEntry;
  View.OnClickListener mLastEntryListener;
  int mMaxVisible = -1;
  private FragmentBreadCrumbs.OnBreadCrumbClickListener mOnBreadCrumbClickListener;
  private View.OnClickListener mOnClickListener = new FragmentBreadCrumbs.1(this);
  private View.OnClickListener mParentClickListener;
  BackStackRecord mParentEntry;
  private int mParentWidth = -1;
  BackStackRecord mTopEntry;

  public FragmentBreadCrumbs(Context paramContext)
  {
    this(paramContext, null);
  }

  public FragmentBreadCrumbs(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aa.e);
  }

  public FragmentBreadCrumbs(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public static int combineMeasuredStates(int paramInt1, int paramInt2)
  {
    return paramInt1 | paramInt2;
  }

  private BackStackRecord createBackStackEntry(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence1 == null);
    BackStackRecord localBackStackRecord;
    for (Object localObject = null; ; localObject = localBackStackRecord)
    {
      return localObject;
      localBackStackRecord = new BackStackRecord((FragmentManagerImpl)this.mActivity.getSupportFragmentManager());
      localBackStackRecord.setBreadCrumbTitle(paramCharSequence1);
      localBackStackRecord.setBreadCrumbShortTitle(paramCharSequence2);
    }
  }

  private static final int getMeasuredState(View paramView)
  {
    return 0xFF000000 & paramView.getMeasuredWidth() | 0xFFFFFF00 & paramView.getMeasuredHeight() >> 16;
  }

  private int getPostEntryCount()
  {
    if (this.mLastEntry == null);
    for (int i = 0; ; i = 1)
      return i;
  }

  private FragmentManager.BackStackEntry getPreEntry(int paramInt)
  {
    BackStackRecord localBackStackRecord;
    if (this.mParentEntry != null)
      if (paramInt == 0)
        localBackStackRecord = this.mParentEntry;
    while (true)
    {
      return localBackStackRecord;
      localBackStackRecord = this.mTopEntry;
      continue;
      localBackStackRecord = this.mTopEntry;
    }
  }

  private int getPreEntryCount()
  {
    int i = 1;
    int j;
    if (this.mTopEntry != null)
    {
      j = i;
      if (this.mParentEntry == null)
        break label27;
    }
    while (true)
    {
      return j + i;
      j = 0;
      break;
      label27: i = 0;
    }
  }

  public static int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0:
    default:
    case -2147483648:
    case 1073741824:
    }
    while (true)
    {
      return paramInt1 | 0xFF000000 & paramInt3;
      if (j < paramInt1)
      {
        paramInt1 = j | 0x1000000;
        continue;
        paramInt1 = j;
      }
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((getContext() instanceof FragmentActivity))
    {
      setActivity((FragmentActivity)getContext());
      return;
    }
    throw new IllegalStateException("FragmentBreadCrumbs can be used only in FragmentActivity");
  }

  public void onBackStackChanged()
  {
    updateCrumbs();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int k = getPaddingTop();
    int m = getPaddingBottom();
    int n = getChildCount();
    for (int i1 = 0; i1 < n; i1++)
    {
      View localView = getChildAt(i1);
      localView.layout(i, k, i + localView.getMeasuredWidth() - j, k + localView.getMeasuredHeight() - m);
    }
    if (this.mParentWidth < getMeasuredWidth())
      this.mParentWidth = getMeasuredWidth();
    int i2;
    if (this.mParentWidth == this.mContainer.getMeasuredWidth())
    {
      m.e("TOO BIG");
      i2 = this.mContainer.getChildCount();
    }
    for (int i3 = 0; ; i3++)
      if (i3 < i2)
      {
        if ((this.mContainer.getChildAt(i3).getVisibility() == 0) && (this.mContainer.getChildAt(i3).findViewById(16908310).getTag() != this.mLastEntry))
        {
          this.mContainer.getChildAt(i3).setVisibility(8);
          if ((this.mContainer.getChildAt(i3 + 1) != null) && (this.mContainer.getChildAt(i3 + 1).findViewById(16908294) != null))
            this.mContainer.getChildAt(i3 + 1).findViewById(16908294).setVisibility(8);
          this.mContainer.invalidate();
        }
      }
      else
        return;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = getChildCount();
    int k = getPaddingLeft();
    int m = getPaddingRight();
    int n = getPaddingTop();
    int i1 = getPaddingBottom();
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    while (i2 < j)
    {
      View localView = getChildAt(i2);
      if (localView.getVisibility() != 8)
      {
        measureChild(localView, paramInt1, paramInt2);
        i3 = Math.max(i3, localView.getMeasuredWidth());
        i4 = Math.max(i4, localView.getMeasuredHeight());
        i = combineMeasuredStates(i, getMeasuredState(localView));
      }
      i2++;
    }
    int i5 = i3 + (k + m);
    int i6 = Math.max(i4 + (n + i1), getSuggestedMinimumHeight());
    setMeasuredDimension(resolveSizeAndState(Math.max(i5, getSuggestedMinimumWidth()), paramInt1, i), resolveSizeAndState(i6, paramInt2, i << 16));
  }

  public void setActivity(FragmentActivity paramFragmentActivity)
  {
    this.mActivity = paramFragmentActivity;
    if (this.mContainer == null)
    {
      this.mInflater = ((LayoutInflater)paramFragmentActivity.getSystemService("layout_inflater"));
      this.mContainer = ((LinearLayout)this.mInflater.inflate(v.D, this, false));
      addView(this.mContainer);
      paramFragmentActivity.getSupportFragmentManager().addOnBackStackChangedListener(this);
      updateCrumbs();
    }
  }

  public void setLastTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    setLastTitle(paramCharSequence1, paramCharSequence2, null);
  }

  public void setLastTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, View.OnClickListener paramOnClickListener)
  {
    this.mLastEntry = createBackStackEntry(paramCharSequence1, paramCharSequence2);
    this.mLastEntryListener = paramOnClickListener;
    updateCrumbs();
  }

  public void setMaxVisible(int paramInt)
  {
    if (paramInt < 1)
      throw new IllegalArgumentException("visibleCrumbs must be greater than zero");
    this.mMaxVisible = paramInt;
  }

  public void setOnBreadCrumbClickListener(FragmentBreadCrumbs.OnBreadCrumbClickListener paramOnBreadCrumbClickListener)
  {
    this.mOnBreadCrumbClickListener = paramOnBreadCrumbClickListener;
  }

  public void setParentTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, View.OnClickListener paramOnClickListener)
  {
    this.mParentEntry = createBackStackEntry(paramCharSequence1, paramCharSequence2);
    this.mParentClickListener = paramOnClickListener;
    updateCrumbs();
  }

  public void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.mTopEntry = createBackStackEntry(paramCharSequence1, paramCharSequence2);
    updateCrumbs();
  }

  void updateCrumbs()
  {
    FragmentManager localFragmentManager = this.mActivity.getSupportFragmentManager();
    int i = localFragmentManager.getBackStackEntryCount();
    int j = getPreEntryCount();
    int k = getPostEntryCount();
    int m = this.mContainer.getChildCount();
    int n = 0;
    Object localObject;
    if (n < k + (i + j))
    {
      if (n < j)
        localObject = getPreEntry(n);
      while (true)
      {
        if ((n >= m) || (this.mContainer.getChildAt(n).getTag() == localObject))
          break label441;
        for (int i8 = n; i8 < m; i8++)
          this.mContainer.removeViewAt(n);
        if (n < j + i)
          localObject = localFragmentManager.getBackStackEntryAt(n - j);
        else
          localObject = this.mLastEntry;
      }
    }
    label421: label427: label433: label441: for (int i7 = n; ; i7 = m)
    {
      if (n >= i7)
      {
        View localView4 = this.mInflater.inflate(v.v, this, false);
        TextView localTextView = (TextView)localView4.findViewById(16908310);
        localTextView.setText(((FragmentManager.BackStackEntry)localObject).getBreadCrumbTitle());
        localTextView.setTag(localObject);
        if (n == 0)
          localView4.findViewById(16908294).setVisibility(8);
        this.mContainer.addView(localView4);
        localTextView.setOnClickListener(this.mOnClickListener);
      }
      n++;
      m = i7;
      break;
      int i1 = k + (i + j);
      for (int i2 = this.mContainer.getChildCount(); i2 > i1; i2--)
        this.mContainer.removeViewAt(i2 - 1);
      int i3 = 0;
      if (i3 < i2)
      {
        View localView1 = this.mContainer.getChildAt(i3);
        View localView2 = localView1.findViewById(16908310);
        int i4;
        label323: boolean bool;
        label336: int i5;
        label366: View localView3;
        if (this.mLastEntryListener == null)
        {
          i4 = 1;
          if (i3 >= i2 - i4)
            break label421;
          bool = true;
          localView2.setEnabled(bool);
          if (this.mMaxVisible > 0)
          {
            if (i3 >= i2 - this.mMaxVisible)
              break label427;
            i5 = 8;
            localView1.setVisibility(i5);
            localView3 = localView1.findViewById(16908294);
            if ((i3 <= i2 - this.mMaxVisible) || (i3 == 0))
              break label433;
          }
        }
        for (int i6 = 0; ; i6 = 8)
        {
          localView3.setVisibility(i6);
          i3++;
          break;
          i4 = 0;
          break label323;
          bool = false;
          break label336;
          i5 = 0;
          break label366;
        }
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentBreadCrumbs
 * JD-Core Version:    0.6.2
 */