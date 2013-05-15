package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ui.widget.Row;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.v;

public class ReportFrequencyRow extends Row
  implements Handler.Callback
{
  public ReportFrequencyRow(Context paramContext)
  {
    super(paramContext);
  }

  public ReportFrequencyRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130772086);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, 2130772086, 2131558561));
  }

  public ReportFrequencyRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, paramInt, 2131558561));
  }

  private void a(int paramInt)
  {
    Resources localResources = getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    d(localResources.getQuantityString(2131689496, paramInt, arrayOfObject));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    paramTypedArray.recycle();
  }

  private void c()
  {
    a(((ae)ad.a(getContext(), ae.class)).B());
  }

  protected void a()
  {
    inflate(getContext(), 2130903199, this);
    a(new o(this));
    c();
    ((s)ad.a(getContext(), s.class)).a(2131165229, this);
  }

  public boolean handleMessage(Message paramMessage)
  {
    c();
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.ReportFrequencyRow
 * JD-Core Version:    0.6.2
 */