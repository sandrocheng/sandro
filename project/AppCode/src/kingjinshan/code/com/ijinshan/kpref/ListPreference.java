package com.ijinshan.kpref;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.android.internal.R.styleable;
import com.keniu.security.util.aq;

public class ListPreference extends DialogPreference
{
  private CharSequence[] o;
  private CharSequence[] p;
  private String q;
  private String r;
  private int s;

  public ListPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public ListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ListPreference, 0, 0);
    this.o = localTypedArray1.getTextArray(0);
    this.p = localTypedArray1.getTextArray(1);
    localTypedArray1.recycle();
    TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.Preference, 0, 0);
    this.r = localTypedArray2.getString(6);
    localTypedArray2.recycle();
  }

  private CharSequence M()
  {
    int i = N();
    if ((i >= 0) && (this.o != null));
    for (CharSequence localCharSequence = this.o[i]; ; localCharSequence = null)
      return localCharSequence;
  }

  private int N()
  {
    return c(this.q);
  }

  private void a(CharSequence[] paramArrayOfCharSequence)
  {
    this.o = paramArrayOfCharSequence;
  }

  private void b(int paramInt)
  {
    if (this.p != null)
      b(this.p[paramInt].toString());
  }

  private void b(CharSequence[] paramArrayOfCharSequence)
  {
    this.p = paramArrayOfCharSequence;
  }

  protected final Object a(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(ListPreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      ListPreference.SavedState localSavedState = (ListPreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      b(localSavedState.a);
    }
  }

  protected final void a(aq paramaq)
  {
    super.a(paramaq);
    if ((this.o == null) || (this.p == null))
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    this.s = N();
    paramaq.a(this.o, this.s, new h(this));
    paramaq.a(null, null);
  }

  public final void a(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    if ((paramCharSequence == null) && (this.r != null))
      this.r = null;
    while (true)
    {
      return;
      if ((paramCharSequence != null) && (!paramCharSequence.equals(this.r)))
        this.r = paramCharSequence.toString();
    }
  }

  protected final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if ((paramBoolean) && (this.s >= 0) && (this.p != null))
    {
      String str = this.p[this.s].toString();
      if (b(str))
        b(str);
    }
  }

  protected final void a(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean);
    for (String str = a(this.q); ; str = (String)paramObject)
    {
      b(str);
      return;
    }
  }

  public final void b(String paramString)
  {
    this.q = paramString;
    f(paramString);
  }

  public final int c(String paramString)
  {
    int i;
    if ((paramString != null) && (this.p != null))
    {
      i = this.p.length - 1;
      if (i >= 0)
        if (!this.p[i].equals(paramString));
    }
    while (true)
    {
      return i;
      i--;
      break;
      i = -1;
    }
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    if (B());
    while (true)
    {
      return localObject;
      ListPreference.SavedState localSavedState = new ListPreference.SavedState((Parcelable)localObject);
      localSavedState.a = this.q;
      localObject = localSavedState;
    }
  }

  public final void l()
  {
    this.o = D().getResources().getTextArray(2131165229);
  }

  public final CharSequence[] m()
  {
    return this.o;
  }

  public final void n()
  {
    this.p = D().getResources().getTextArray(2131165230);
  }

  public final CharSequence[] o()
  {
    return this.p;
  }

  public final CharSequence p()
  {
    int i = N();
    CharSequence localCharSequence;
    if ((i >= 0) && (this.o != null))
    {
      localCharSequence = this.o[i];
      if ((this.r != null) && (localCharSequence != null))
        break label46;
    }
    label46: for (Object localObject = super.p(); ; localObject = String.format(this.r, new Object[] { localCharSequence }))
    {
      return localObject;
      localCharSequence = null;
      break;
    }
  }

  public final String q()
  {
    return this.q;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.ListPreference
 * JD-Core Version:    0.6.2
 */