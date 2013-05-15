package android.support.v4.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class PagerTitleStrip extends ViewGroup
  implements bg
{
  private static final int[] n = { 16842804, 16842901, 16842904, 16842927 };
  private static final int[] o = { 16843660 };
  private static final ac q;
  ViewPager a;
  TextView b;
  TextView c;
  TextView d;
  int e;
  private int f = -1;
  private float g = -1.0F;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private final ab l = new ab(this, null);
  private WeakReference m;
  private int p;

  static
  {
    if (Build.VERSION.SDK_INT >= 14);
    for (q = new ae(); ; q = new ad())
      return;
  }

  public PagerTitleStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TextView localTextView1 = new TextView(paramContext);
    this.b = localTextView1;
    addView(localTextView1);
    TextView localTextView2 = new TextView(paramContext);
    this.c = localTextView2;
    addView(localTextView2);
    TextView localTextView3 = new TextView(paramContext);
    this.d = localTextView3;
    addView(localTextView3);
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, n);
    int i1 = localTypedArray1.getResourceId(0, 0);
    if (i1 != 0)
    {
      this.b.setTextAppearance(paramContext, i1);
      this.c.setTextAppearance(paramContext, i1);
      this.d.setTextAppearance(paramContext, i1);
    }
    int i2 = localTypedArray1.getDimensionPixelSize(1, 0);
    if (i2 != 0)
      a(0, i2);
    if (localTypedArray1.hasValue(2))
    {
      int i3 = localTypedArray1.getColor(2, 0);
      this.b.setTextColor(i3);
      this.c.setTextColor(i3);
      this.d.setTextColor(i3);
    }
    this.i = localTypedArray1.getInteger(3, 80);
    localTypedArray1.recycle();
    this.e = this.c.getTextColors().getDefaultColor();
    a(0.6F);
    this.b.setEllipsize(TextUtils.TruncateAt.END);
    this.c.setEllipsize(TextUtils.TruncateAt.END);
    this.d.setEllipsize(TextUtils.TruncateAt.END);
    boolean bool = false;
    if (i1 != 0)
    {
      TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(i1, o);
      bool = localTypedArray2.getBoolean(0, false);
      localTypedArray2.recycle();
    }
    if (bool)
    {
      a(this.b);
      a(this.c);
      a(this.d);
    }
    while (true)
    {
      this.h = ((int)(16.0F * paramContext.getResources().getDisplayMetrics().density));
      return;
      this.b.setSingleLine();
      this.c.setSingleLine();
      this.d.setSingleLine();
    }
  }

  private static void a(TextView paramTextView)
  {
    q.a(paramTextView);
  }

  int a()
  {
    Drawable localDrawable = getBackground();
    int i1 = 0;
    if (localDrawable != null)
      i1 = localDrawable.getIntrinsicHeight();
    return i1;
  }

  public void a(float paramFloat)
  {
    this.p = (0xFF & (int)(255.0F * paramFloat));
    int i1 = this.p << 24 | 0xFFFFFF & this.e;
    this.b.setTextColor(i1);
    this.d.setTextColor(i1);
  }

  public void a(int paramInt)
  {
    this.h = paramInt;
    requestLayout();
  }

  public void a(int paramInt, float paramFloat)
  {
    this.b.setTextSize(paramInt, paramFloat);
    this.c.setTextSize(paramInt, paramFloat);
    this.d.setTextSize(paramInt, paramFloat);
  }

  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    int i1;
    int i3;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i14;
    int i15;
    int i20;
    int i21;
    int i22;
    int i26;
    int i28;
    int i29;
    int i30;
    if (paramInt != this.f)
    {
      a(paramInt, this.a.b());
      this.k = true;
      i1 = this.b.getMeasuredWidth();
      int i2 = this.c.getMeasuredWidth();
      i3 = this.d.getMeasuredWidth();
      int i4 = i2 / 2;
      i5 = getWidth();
      i6 = getHeight();
      i7 = getPaddingLeft();
      i8 = getPaddingRight();
      i9 = getPaddingTop();
      i10 = getPaddingBottom();
      int i11 = i7 + i4;
      int i12 = i8 + i4;
      int i13 = i5 - i11 - i12;
      float f1 = 0.5F + paramFloat;
      if (f1 > 1.0F)
        f1 -= 1.0F;
      i14 = i5 - i12 - (int)(f1 * i13) - i2 / 2;
      i15 = i14 + i2;
      int i16 = this.b.getBaseline();
      int i17 = this.c.getBaseline();
      int i18 = this.d.getBaseline();
      int i19 = Math.max(Math.max(i16, i17), i18);
      i20 = i19 - i16;
      i21 = i19 - i17;
      i22 = i19 - i18;
      int i23 = i20 + this.b.getMeasuredHeight();
      int i24 = i21 + this.c.getMeasuredHeight();
      int i25 = i22 + this.d.getMeasuredHeight();
      i26 = Math.max(Math.max(i23, i24), i25);
      switch (0x70 & this.i)
      {
      default:
        i28 = i9 + i20;
        i29 = i21 + i9;
        i30 = i9 + i22;
      case 16:
      case 80:
      }
    }
    while (true)
    {
      this.c.layout(i14, i29, i15, i29 + this.c.getMeasuredHeight());
      int i31 = Math.min(i7, i14 - this.h - i1);
      this.b.layout(i31, i28, i1 + i31, i28 + this.b.getMeasuredHeight());
      int i32 = Math.max(i5 - i8 - i3, i15 + this.h);
      this.d.layout(i32, i30, i32 + i3, i30 + this.d.getMeasuredHeight());
      this.g = paramFloat;
      this.k = false;
      while (true)
      {
        return;
        if ((paramBoolean) || (paramFloat != this.g))
          break;
      }
      int i33 = (i6 - i9 - i10 - i26) / 2;
      i28 = i33 + i20;
      i29 = i21 + i33;
      i30 = i33 + i22;
      continue;
      int i27 = i6 - i10 - i26;
      i28 = i27 + i20;
      i29 = i21 + i27;
      i30 = i27 + i22;
    }
  }

  void a(int paramInt, x paramx)
  {
    int i1;
    if (paramx != null)
    {
      i1 = paramx.getCount();
      this.j = true;
      if ((paramInt < 1) || (paramx == null))
        break label239;
    }
    label239: for (CharSequence localCharSequence1 = paramx.getPageTitle(paramInt - 1); ; localCharSequence1 = null)
    {
      this.b.setText(localCharSequence1);
      TextView localTextView = this.c;
      if ((paramx != null) && (paramInt < i1));
      for (CharSequence localCharSequence2 = paramx.getPageTitle(paramInt); ; localCharSequence2 = null)
      {
        localTextView.setText(localCharSequence2);
        int i2 = paramInt + 1;
        CharSequence localCharSequence3 = null;
        if (i2 < i1)
        {
          localCharSequence3 = null;
          if (paramx != null)
            localCharSequence3 = paramx.getPageTitle(paramInt + 1);
        }
        this.d.setText(localCharSequence3);
        int i3 = getWidth() - getPaddingLeft() - getPaddingRight();
        int i4 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i5 = View.MeasureSpec.makeMeasureSpec((int)(0.8F * i3), -2147483648);
        int i6 = View.MeasureSpec.makeMeasureSpec(i4, -2147483648);
        this.b.measure(i5, i6);
        this.c.measure(i5, i6);
        this.d.measure(i5, i6);
        this.f = paramInt;
        if (!this.k)
          a(paramInt, this.g, false);
        this.j = false;
        return;
        i1 = 0;
        break;
      }
    }
  }

  void a(x paramx1, x paramx2)
  {
    if (paramx1 != null)
    {
      paramx1.unregisterDataSetObserver(this.l);
      this.m = null;
    }
    if (paramx2 != null)
    {
      paramx2.registerDataSetObserver(this.l);
      this.m = new WeakReference(paramx2);
    }
    if (this.a != null)
    {
      this.f = -1;
      this.g = -1.0F;
      a(this.a.c(), paramx2);
      requestLayout();
    }
  }

  public int b()
  {
    return this.h;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if (!(localViewParent instanceof ViewPager))
      throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    ViewPager localViewPager = (ViewPager)localViewParent;
    x localx1 = localViewPager.b();
    localViewPager.b(this.l);
    localViewPager.a(this.l);
    this.a = localViewPager;
    if (this.m != null);
    for (x localx2 = (x)this.m.get(); ; localx2 = null)
    {
      a(localx2, localx1);
      return;
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null)
    {
      a(this.a.b(), null);
      this.a.b(null);
      this.a.a(null);
      this.a = null;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.a != null)
    {
      boolean bool = this.g < 0.0F;
      float f1 = 0.0F;
      if (!bool)
        f1 = this.g;
      a(this.f, f1, true);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    if (i1 != 1073741824)
      throw new IllegalStateException("Must measure with an exact width");
    int i5 = a();
    int i6 = getPaddingTop() + getPaddingBottom();
    int i7 = i4 - i6;
    int i8 = View.MeasureSpec.makeMeasureSpec((int)(0.8F * i3), -2147483648);
    int i9 = View.MeasureSpec.makeMeasureSpec(i7, -2147483648);
    this.b.measure(i8, i9);
    this.c.measure(i8, i9);
    this.d.measure(i8, i9);
    if (i2 == 1073741824)
      setMeasuredDimension(i3, i4);
    while (true)
    {
      return;
      setMeasuredDimension(i3, Math.max(i5, i6 + this.c.getMeasuredHeight()));
    }
  }

  public void requestLayout()
  {
    if (!this.j)
      super.requestLayout();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTitleStrip
 * JD-Core Version:    0.6.2
 */