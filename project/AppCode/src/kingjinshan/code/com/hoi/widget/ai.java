package com.hoi.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.t;

public final class ai extends Preference
{
  private final SharedPreferences o;
  private String p;
  private String q;
  private int r = 100;
  private int s = 0;

  private ai(Context paramContext)
  {
    super(paramContext);
    t();
    this.o = t.b(paramContext);
  }

  private int a(int paramInt)
  {
    return paramInt + this.s;
  }

  private void a(String paramString, int paramInt)
  {
    this.p = paramString;
    this.r = paramInt;
  }

  private void b(String paramString, int paramInt)
  {
    this.q = paramString;
    this.s = paramInt;
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = super.a(paramViewGroup);
    String str = A();
    SeekBar localSeekBar = (SeekBar)localView.findViewById(2131231541);
    if (this.q != null)
      ((TextView)((ViewStub)localView.findViewById(2131231544)).inflate().findViewById(2131231545)).setText(this.q);
    if (this.p != null)
      ((TextView)((ViewStub)localView.findViewById(2131231542)).inflate().findViewById(2131231543)).setText(this.p);
    int i = this.o.getInt(str, 85);
    localSeekBar.setMax(this.r - this.s);
    localSeekBar.setProgress(i);
    b(Integer.valueOf(i));
    localSeekBar.setOnSeekBarChangeListener(new aj(this, str));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.ai
 * JD-Core Version:    0.6.2
 */