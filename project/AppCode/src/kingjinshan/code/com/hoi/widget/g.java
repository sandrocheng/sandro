package com.hoi.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.ijinshan.kpref.DialogPreference;

public final class g extends DialogPreference
{
  private String o;
  private String p;
  private EditText q;

  private g(Context paramContext)
  {
    super(paramContext, null);
    a(2130903098);
  }

  private void b(String paramString)
  {
    this.o = paramString;
  }

  private void c(String paramString)
  {
    this.p = paramString;
  }

  protected final View I_()
  {
    View localView = super.I_();
    this.q = ((EditText)localView.findViewById(2131231007));
    String str = A();
    if (str != null)
    {
      int i = E().getInt(str, 0);
      this.q.setText(Integer.toString(i));
    }
    if (this.o != null)
      ((TextView)localView.findViewById(2131231006)).setText(this.o);
    if (this.p != null)
      ((TextView)localView.findViewById(2131231008)).setText(this.p);
    return localView;
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = super.a(paramViewGroup);
    String str = A();
    if (str != null)
      b(Integer.valueOf(E().getInt(str, 0)));
    return localView;
  }

  protected final String a(String paramString)
  {
    return paramString;
  }

  protected final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = this.q.getText().toString();
      int i = 0;
      if (str != null)
      {
        int j = str.length();
        i = 0;
        if (j != 0)
          i = (int)Float.parseFloat(str);
      }
      if (b(Integer.valueOf(i)))
      {
        SharedPreferences.Editor localEditor = F();
        localEditor.putInt(A(), i);
        localEditor.commit();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.g
 * JD-Core Version:    0.6.2
 */