package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Date;

class j extends DateFormat
{
  j(h paramh)
  {
  }

  public StringBuffer format(Date paramDate, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    return new StringBuffer(this.a.a.getContext().getString(2131493753));
  }

  public Date parse(String paramString, ParsePosition paramParsePosition)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.j
 * JD-Core Version:    0.6.2
 */