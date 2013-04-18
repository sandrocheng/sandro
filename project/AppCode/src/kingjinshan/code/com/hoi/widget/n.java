package com.hoi.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.keniu.security.util.CustomDialogPreference;

public final class n extends CustomDialogPreference
{
  private String o;
  private HorizontalNumberPicker p;
  private int q;
  private int r;
  private int s;
  private LayoutInflater t;

  public n(Context paramContext)
  {
    super(paramContext, null);
    b(2130903114);
    c(2130903092);
    this.t = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  private void b(String paramString)
  {
    this.o = paramString;
  }

  protected final View J_()
  {
    View localView = super.J_();
    this.p = ((HorizontalNumberPicker)localView.findViewById(2131231065));
    this.p.a(this.q, this.r);
    this.p.a();
    String str = A();
    if (str != null)
    {
      int i = E().getInt(str, this.s);
      this.p.a(i);
    }
    if (this.o != null)
    {
      TextView localTextView = (TextView)localView.findViewById(2131231064);
      localTextView.setTextColor(-16777216);
      localTextView.setText(this.o);
    }
    return localView;
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = this.t.inflate(2130903092, paramViewGroup, false);
    String str = A();
    if (str != null)
      b(Integer.valueOf(E().getInt(str, this.s)));
    return localView;
  }

  protected final String a(String paramString)
  {
    return paramString;
  }

  public final void a(int paramInt)
  {
    this.s = paramInt;
  }

  protected final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      int i = this.p.d();
      if (b(Integer.valueOf(i)))
      {
        SharedPreferences.Editor localEditor = F();
        localEditor.putInt(A(), i);
        localEditor.commit();
      }
    }
  }

  public final void b()
  {
    this.q = 1;
    this.r = 31;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.n
 * JD-Core Version:    0.6.2
 */