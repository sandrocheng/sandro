package com.keniu.security.util;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.SimpleCursorAdapter;

public final class aq
{
  private final ai a;
  private int b;

  private aq(Context paramContext)
  {
    this.a = new ai(paramContext);
    this.b = 2131361818;
  }

  public aq(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }

  private aq a(int paramInt, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    this.a.t = this.a.a.getResources().getTextArray(paramInt);
    this.a.G = paramOnMultiChoiceClickListener;
    this.a.C = paramArrayOfBoolean;
    this.a.D = true;
    return this;
  }

  private aq a(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.H = paramCursor;
    this.a.v = paramOnClickListener;
    this.a.F = paramInt;
    this.a.I = paramString;
    this.a.E = true;
    return this;
  }

  private aq a(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString)
  {
    this.a.H = paramCursor;
    this.a.I = paramString;
    this.a.v = paramOnClickListener;
    return this;
  }

  private aq a(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    this.a.H = paramCursor;
    this.a.G = paramOnMultiChoiceClickListener;
    this.a.J = paramString1;
    this.a.I = paramString2;
    this.a.D = true;
    return this;
  }

  private aq a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.w = paramView;
    this.a.B = true;
    this.a.x = paramInt1;
    this.a.y = paramInt2;
    this.a.z = paramInt3;
    this.a.A = paramInt4;
    return this;
  }

  private aq a(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.a.L = paramOnItemSelectedListener;
    return this;
  }

  private aq a(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.u = paramListAdapter;
    this.a.v = paramOnClickListener;
    this.a.F = paramInt;
    this.a.E = true;
    return this;
  }

  private aq a(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    this.a.t = paramArrayOfCharSequence;
    this.a.G = paramOnMultiChoiceClickListener;
    this.a.C = paramArrayOfBoolean;
    this.a.D = true;
    return this;
  }

  private aq b(boolean paramBoolean)
  {
    this.a.i = paramBoolean;
    return this;
  }

  private aq c(View paramView)
  {
    this.a.f = paramView;
    return this;
  }

  private aq c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.o = paramCharSequence;
    this.a.p = paramOnClickListener;
    return this;
  }

  private aq c(boolean paramBoolean)
  {
    this.a.j = paramBoolean;
    return this;
  }

  private aq d(boolean paramBoolean)
  {
    this.a.K = paramBoolean;
    return this;
  }

  private aq e(boolean paramBoolean)
  {
    this.a.N = paramBoolean;
    return this;
  }

  public final aq a()
  {
    this.a.c = 2130837821;
    return this;
  }

  public final aq a(int paramInt)
  {
    this.a.e = this.a.a.getText(paramInt);
    return this;
  }

  public final aq a(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.t = this.a.a.getResources().getTextArray(paramInt1);
    this.a.v = paramOnClickListener;
    this.a.F = paramInt2;
    this.a.E = true;
    return this;
  }

  public final aq a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.k = this.a.a.getText(paramInt);
    this.a.l = paramOnClickListener;
    return this;
  }

  public final aq a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.a.r = paramOnCancelListener;
    return this;
  }

  public final aq a(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    this.a.s = paramOnKeyListener;
    return this;
  }

  public final aq a(Drawable paramDrawable)
  {
    this.a.d = paramDrawable;
    return this;
  }

  public final aq a(View paramView)
  {
    this.a.w = paramView;
    this.a.B = false;
    return this;
  }

  public final aq a(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.u = paramListAdapter;
    this.a.v = paramOnClickListener;
    return this;
  }

  public final aq a(CharSequence paramCharSequence)
  {
    this.a.e = paramCharSequence;
    return this;
  }

  public final aq a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.k = paramCharSequence;
    this.a.l = paramOnClickListener;
    return this;
  }

  public final aq a(boolean paramBoolean)
  {
    this.a.q = paramBoolean;
    return this;
  }

  public final aq a(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.t = paramArrayOfCharSequence;
    this.a.v = paramOnClickListener;
    this.a.F = paramInt;
    this.a.E = true;
    return this;
  }

  public final aq a(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.t = paramArrayOfCharSequence;
    this.a.v = paramOnClickListener;
    return this;
  }

  public final aq b()
  {
    this.a.h = false;
    return this;
  }

  public final aq b(int paramInt)
  {
    this.a.g = this.a.a.getText(paramInt);
    return this;
  }

  public final aq b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.m = this.a.a.getText(paramInt);
    this.a.n = paramOnClickListener;
    return this;
  }

  public final aq b(View paramView)
  {
    this.a.w = paramView;
    this.a.B = false;
    this.a.O = false;
    return this;
  }

  public final aq b(CharSequence paramCharSequence)
  {
    this.a.g = paramCharSequence;
    return this;
  }

  public final aq b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.m = paramCharSequence;
    this.a.n = paramOnClickListener;
    return this;
  }

  public final ap c()
  {
    ap localap = new ap(this.a.a, this.b);
    ai localai = this.a;
    MyAlertController localMyAlertController = ap.a(localap);
    MyAlertController.RecycleListView localRecycleListView;
    Object localObject;
    if (localai.f != null)
    {
      localMyAlertController.a(localai.f);
      if (localai.g != null)
        localMyAlertController.b(localai.g);
      if (localai.k != null)
      {
        localMyAlertController.a(-1, localai.k, localai.l, null);
        MyAlertController.a(localMyAlertController, localai.h);
      }
      if (localai.m != null)
      {
        localMyAlertController.a(-2, localai.m, localai.n, null);
        MyAlertController.b(localMyAlertController, localai.i);
      }
      if (localai.o != null)
      {
        localMyAlertController.a(-3, localai.o, localai.p, null);
        MyAlertController.c(localMyAlertController, localai.j);
      }
      if (localai.K)
        localMyAlertController.a(true);
      if ((localai.t != null) || (localai.H != null) || (localai.u != null))
      {
        localRecycleListView = (MyAlertController.RecycleListView)localai.b.inflate(2130903266, null);
        if (!localai.D)
          break label463;
        if (localai.H != null)
          break label440;
        localObject = new aj(localai, localai.a, localai.t, localRecycleListView);
        label233: if (localai.M != null);
        MyAlertController.a(localMyAlertController, (ListAdapter)localObject);
        MyAlertController.a(localMyAlertController, localai.F);
        if (localai.v == null)
          break label586;
        localRecycleListView.setOnItemClickListener(new al(localai, localMyAlertController));
        label282: if (localai.L != null)
          localRecycleListView.setOnItemSelectedListener(localai.L);
        if (!localai.E)
          break label612;
        localRecycleListView.setChoiceMode(1);
        label311: localRecycleListView.a = localai.N;
        MyAlertController.a(localMyAlertController, localRecycleListView);
      }
      if (localai.w != null)
      {
        if (!localai.B)
          break label628;
        localMyAlertController.a(localai.w, localai.x, localai.y, localai.z, localai.A);
      }
    }
    while (true)
    {
      if (!localai.O)
        MyAlertController.l(localMyAlertController);
      localap.setCancelable(this.a.q);
      localap.setOnCancelListener(this.a.r);
      if (this.a.s != null)
        localap.setOnKeyListener(this.a.s);
      return localap;
      if (localai.e == null)
        break;
      localMyAlertController.a(localai.e);
      break;
      label440: localObject = new ak(localai, localai.a, localai.H, localRecycleListView);
      break label233;
      label463: int i;
      if (localai.E)
        i = 2130903269;
      while (true)
        if (localai.H == null)
        {
          if (localai.u != null)
          {
            localObject = localai.u;
            break;
            i = 2130903267;
            continue;
          }
          localObject = new ArrayAdapter(localai.a, i, 2131231547, localai.t);
          break;
        }
      Context localContext = localai.a;
      Cursor localCursor = localai.H;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = localai.I;
      localObject = new SimpleCursorAdapter(localContext, i, localCursor, arrayOfString, new int[] { 16908308 });
      break label233;
      label586: if (localai.G == null)
        break label282;
      localRecycleListView.setOnItemClickListener(new am(localai, localRecycleListView, localMyAlertController));
      break label282;
      label612: if (!localai.D)
        break label311;
      localRecycleListView.setChoiceMode(2);
      break label311;
      label628: localMyAlertController.b(localai.w);
    }
  }

  public final aq c(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.o = this.a.a.getText(paramInt);
    this.a.p = paramOnClickListener;
    return this;
  }

  public final ap d()
  {
    ap localap = c();
    localap.show();
    return localap;
  }

  public final aq d(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.t = this.a.a.getResources().getTextArray(paramInt);
    this.a.v = paramOnClickListener;
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.aq
 * JD-Core Version:    0.6.2
 */