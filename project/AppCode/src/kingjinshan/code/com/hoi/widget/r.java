package com.hoi.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.keniu.security.traffic.y;
import com.keniu.security.util.CustomDialogPreference;
import java.lang.reflect.Field;

public final class r extends CustomDialogPreference
{
  private NumberPicker o;
  private NumberPicker p;
  private LayoutInflater q;
  private String[] r = { "KB", "MB", "GB" };
  private long[] s = { 1024L, 1048576L, 1073741824L };
  private int[] t = { 0, 999 };
  private long u = 0L;
  private t v = t.b;
  private long w = -1L;
  private s x = null;

  private r(Context paramContext)
  {
    super(paramContext, null);
    b(2130903251);
    c(2130903092);
    this.q = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public static r a(Context paramContext, long paramLong)
  {
    r localr = new r(paramContext);
    localr.r = new String[] { "MB", "GB" };
    localr.s = new long[] { 1048576L, 1073741824L };
    localr.t = new int[] { 0, 9999 };
    localr.u = paramLong;
    localr.v = t.b;
    localr.w = paramLong;
    return localr;
  }

  private static r a(Context paramContext, String paramString, int paramInt)
  {
    r localr = new r(paramContext);
    localr.r = new String[] { paramString };
    localr.s = new long[] { 1L };
    localr.t = new int[] { 1, 31 };
    localr.u = paramInt;
    localr.v = t.a;
    localr.w = paramInt;
    return localr;
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, String[] paramArrayOfString)
  {
    this.o.a(paramInt1, paramInt2);
    this.p.a(0, paramInt3, paramArrayOfString);
    this.p.a();
    NumberPicker localNumberPicker = this.p;
    boolean bool = false;
    if (paramInt3 > 0)
      bool = true;
    localNumberPicker.a(bool);
  }

  private static void a(DialogInterface paramDialogInterface, boolean paramBoolean)
  {
    try
    {
      Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(paramDialogInterface, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void a(s params)
  {
    this.x = params;
  }

  protected final View J_()
  {
    View localView = super.J_();
    this.o = ((NumberPicker)localView.findViewById(2131231503));
    this.o.a(NumberPicker.b);
    this.o.a(100L);
    this.p = ((NumberPicker)localView.findViewById(2131231504));
    this.p.a(NumberPicker.b);
    this.p.a(200L);
    if (!x())
      c(false);
    int i = this.t[0];
    int j = this.t[1];
    int k = this.r.length - 1;
    String[] arrayOfString = this.r;
    this.o.a(i, j);
    this.p.a(0, k, arrayOfString);
    this.p.a();
    NumberPicker localNumberPicker = this.p;
    boolean bool;
    if (k > 0)
    {
      bool = true;
      localNumberPicker.a(bool);
      if ((this.w >= this.t[0] * this.s[0]) && (this.w <= this.t[1] * this.s[(this.s.length - 1)]))
      {
        if (this.w != 0L)
          break label244;
        this.o.a(0);
        this.p.a(0);
      }
    }
    while (true)
    {
      return localView;
      bool = false;
      break;
      label244: int m = this.s.length - 1;
      int n = 1;
      int i1 = 1;
      while (m >= 0)
      {
        if ((this.w / this.s[m] > 0L) && (i1 != 0))
        {
          this.o.a((int)(this.w / this.s[m]));
          this.p.a(m);
          i1 = 0;
        }
        if ((this.w % this.s[m] == 0L) && (n != 0) && (this.w / this.s[m] > 0L) && (this.w / this.s[m] <= this.t[1]))
        {
          this.o.a((int)(this.w / this.s[m]));
          this.p.a(m);
          n = 0;
        }
        m--;
      }
    }
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = this.q.inflate(2130903092, paramViewGroup, false);
    String str = A();
    if (str != null)
    {
      if (this.v != t.b)
        break label55;
      b(Long.valueOf(E().getLong(str, this.u)));
    }
    while (true)
    {
      return localView;
      label55: b(Integer.valueOf(E().getInt(str, (int)this.u)));
    }
  }

  protected final String a(String paramString)
  {
    return paramString;
  }

  protected final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    long l2;
    if (paramBoolean)
    {
      long l1 = this.o.d();
      int i = this.p.d();
      l2 = l1 * this.s[i];
      this.w = l2;
      if (this.v != t.b)
        break label107;
      if (b(Long.valueOf(l2)))
      {
        SharedPreferences.Editor localEditor2 = F();
        localEditor2.putLong(A(), l2);
        localEditor2.commit();
      }
    }
    while (true)
    {
      if (this.x != null);
      return;
      label107: if (b(Integer.valueOf((int)l2)))
      {
        SharedPreferences.Editor localEditor1 = F();
        localEditor1.putInt(A(), (int)l2);
        localEditor1.commit();
      }
    }
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    super.onClick(paramDialogInterface, paramInt);
    if (A().equals(D().getString(2131428307)))
    {
      if (-1 != paramInt)
        break label91;
      long l = this.o.d();
      int i = this.p.d();
      if (l * this.s[i] <= y.a(D()).d)
        break label91;
      Toast.makeText(D(), 2131428089, 1).show();
      a(paramDialogInterface, false);
    }
    while (true)
    {
      return;
      label91: a(paramDialogInterface, true);
      paramDialogInterface.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.r
 * JD-Core Version:    0.6.2
 */