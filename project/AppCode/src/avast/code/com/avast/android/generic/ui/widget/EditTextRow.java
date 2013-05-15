package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class EditTextRow extends Row
{
  private EditText a;

  public EditTextRow(Context paramContext)
  {
    super(paramContext);
  }

  public EditTextRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.c, aa.b));
  }

  public EditTextRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.b));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    paramTypedArray.recycle();
  }

  protected void a()
  {
    inflate(getContext(), v.d, this);
    this.a = ((EditText)findViewById(t.S));
    this.a.setId(-1);
    this.a.setOnFocusChangeListener(new g(this));
  }

  public void a(int paramInt)
  {
    this.a.setSelection(paramInt);
  }

  public void a(String paramString)
  {
    this.a.setText(paramString);
  }

  public void a(InputFilter[] paramArrayOfInputFilter)
  {
    this.a.setFilters(paramArrayOfInputFilter);
  }

  public void b()
  {
    if (e() != null)
      this.a.setText(e().b(this.g));
  }

  public void b(int paramInt)
  {
    this.a.setInputType(paramInt);
  }

  public void b(String paramString)
  {
    this.a.setHint(paramString);
  }

  public boolean c()
  {
    if (e() != null);
    for (boolean bool = e().a(this.g, this.a.getText().toString()); ; bool = false)
      return bool;
  }

  public CharSequence d()
  {
    return this.a.getText().toString();
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    super.setFocusable(paramBoolean);
    super.setClickable(paramBoolean);
    this.a.setEnabled(paramBoolean);
    this.a.setFocusable(paramBoolean);
    this.a.setClickable(paramBoolean);
    this.a.setFocusableInTouchMode(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.EditTextRow
 * JD-Core Version:    0.6.2
 */