package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import java.util.regex.Pattern;

public class PasswordTextView extends EditText
{
  private static final Pattern a = Pattern.compile("\\**[^\\*]+\\**");
  private static final Pattern b = Pattern.compile(".*\\*+.*");
  private o c;
  private p d;
  private n e;
  private l f;

  public PasswordTextView(Context paramContext)
  {
    super(paramContext);
    d();
  }

  public PasswordTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }

  public PasswordTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }

  private void d()
  {
    setTypeface(Typeface.MONOSPACE);
    setInputType(3);
    addTextChangedListener(this.c);
  }

  public String a()
  {
    return this.d.a.toString();
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    PasswordTextView.SavedState localSavedState = (PasswordTextView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.d.a.append(localSavedState.a);
    char[] arrayOfChar = new char[localSavedState.a.length()];
    for (int i = 0; i < arrayOfChar.length; i++)
      arrayOfChar[i] = '*';
    setText(String.valueOf(arrayOfChar));
    setSelection(localSavedState.b);
  }

  public Parcelable onSaveInstanceState()
  {
    String str = this.d.a.toString();
    int i = getSelectionStart();
    setText("");
    PasswordTextView.SavedState localSavedState = new PasswordTextView.SavedState(super.onSaveInstanceState());
    localSavedState.a = str;
    localSavedState.b = i;
    return localSavedState;
  }

  public void setFilters(InputFilter[] paramArrayOfInputFilter)
  {
    if (paramArrayOfInputFilter == null)
      throw new IllegalArgumentException();
    if (this.e == null)
      this.e = new n(this, null);
    if (this.d == null)
      this.d = new p();
    if (this.c == null)
      this.c = new o(this, null);
    if (this.f == null)
      this.f = l.a;
    InputFilter[] arrayOfInputFilter;
    if (paramArrayOfInputFilter.length == 0)
    {
      arrayOfInputFilter = new InputFilter[2];
      arrayOfInputFilter[0] = new m(this, this.f);
      arrayOfInputFilter[1] = this.d;
    }
    while (true)
    {
      super.setFilters(arrayOfInputFilter);
      return;
      arrayOfInputFilter = new InputFilter[2 + paramArrayOfInputFilter.length];
      System.arraycopy(paramArrayOfInputFilter, 0, arrayOfInputFilter, 0, paramArrayOfInputFilter.length);
      arrayOfInputFilter[paramArrayOfInputFilter.length] = new m(this, this.f);
      arrayOfInputFilter[(1 + paramArrayOfInputFilter.length)] = this.d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.PasswordTextView
 * JD-Core Version:    0.6.2
 */