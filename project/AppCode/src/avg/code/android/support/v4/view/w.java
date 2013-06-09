package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public final class w extends ViewGroup.LayoutParams
{
  public boolean a;
  public int b;

  public w()
  {
    super(-1, -1);
  }

  public w(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.b());
    this.b = localTypedArray.getInteger(0, 0);
    localTypedArray.recycle();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.w
 * JD-Core Version:    0.6.2
 */