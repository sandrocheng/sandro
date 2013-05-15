package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.actionbarsherlock.R.styleable;

public class FakeDialogPhoneWindow extends LinearLayout
{
  final TypedValue mMinWidthMajor = new TypedValue();
  final TypedValue mMinWidthMinor = new TypedValue();

  public FakeDialogPhoneWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockTheme);
    localTypedArray.getValue(49, this.mMinWidthMajor);
    localTypedArray.getValue(50, this.mMinWidthMinor);
    localTypedArray.recycle();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int i;
    int k;
    TypedValue localTypedValue;
    label57: int i1;
    label83: int m;
    if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels)
    {
      i = 1;
      super.onMeasure(paramInt1, paramInt2);
      int j = getMeasuredWidth();
      k = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      if (i == 0)
        break label121;
      localTypedValue = this.mMinWidthMinor;
      if (localTypedValue.type == 0)
        break label167;
      if (localTypedValue.type != 5)
        break label130;
      i1 = (int)localTypedValue.getDimension(localDisplayMetrics);
      if (j >= i1)
        break label167;
      m = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
    }
    for (int n = 1; ; n = 0)
    {
      if (n != 0)
        super.onMeasure(m, paramInt2);
      return;
      i = 0;
      break;
      label121: localTypedValue = this.mMinWidthMajor;
      break label57;
      label130: if (localTypedValue.type == 6)
      {
        i1 = (int)localTypedValue.getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
        break label83;
      }
      i1 = 0;
      break label83;
      label167: m = k;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.FakeDialogPhoneWindow
 * JD-Core Version:    0.6.2
 */