package com.ijinshan.kpref;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;

public class EditTextPreference extends DialogPreference
{
  private EditText o;
  private String p;

  private EditTextPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842898);
  }

  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.o = new EditText(paramContext, paramAttributeSet);
    this.o.setId(16908291);
    this.o.setEnabled(true);
  }

  private static void a(View paramView, EditText paramEditText)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.findViewById(2131231346);
    if (localViewGroup != null)
      localViewGroup.addView(paramEditText, -1, -2);
  }

  private void b(String paramString)
  {
    boolean bool1 = c();
    this.p = paramString;
    f(paramString);
    boolean bool2 = c();
    if (bool2 != bool1)
      d(bool2);
  }

  private String m()
  {
    return this.p;
  }

  protected final Object a(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(EditTextPreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      EditTextPreference.SavedState localSavedState = (EditTextPreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      b(localSavedState.a);
    }
  }

  protected final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (paramBoolean)
    {
      String str = this.o.getText().toString();
      if (b(str))
        b(str);
    }
  }

  protected final void a(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean);
    for (String str = a(this.p); ; str = (String)paramObject)
    {
      b(str);
      return;
    }
  }

  protected final void b(View paramView)
  {
    super.b(paramView);
    EditText localEditText = this.o;
    localEditText.setText(this.p);
    ViewParent localViewParent = localEditText.getParent();
    if (localViewParent != paramView)
    {
      if (localViewParent != null)
        ((ViewGroup)localViewParent).removeView(localEditText);
      ViewGroup localViewGroup = (ViewGroup)paramView.findViewById(2131231346);
      if (localViewGroup != null)
        localViewGroup.addView(localEditText, -1, -2);
    }
  }

  public final boolean c()
  {
    if ((TextUtils.isEmpty(this.p)) || (super.c()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    if (B());
    while (true)
    {
      return localObject;
      EditTextPreference.SavedState localSavedState = new EditTextPreference.SavedState((Parcelable)localObject);
      localSavedState.a = this.p;
      localObject = localSavedState;
    }
  }

  protected final boolean i()
  {
    return true;
  }

  public final EditText l()
  {
    return this.o;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.EditTextPreference
 * JD-Core Version:    0.6.2
 */