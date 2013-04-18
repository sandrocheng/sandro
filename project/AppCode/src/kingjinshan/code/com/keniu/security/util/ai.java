package com.keniu.security.util;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.SimpleCursorAdapter;

public final class ai
{
  public int A;
  public boolean B = false;
  public boolean[] C;
  public boolean D;
  public boolean E;
  public int F = -1;
  public DialogInterface.OnMultiChoiceClickListener G;
  public Cursor H;
  public String I;
  public String J;
  public boolean K;
  public AdapterView.OnItemSelectedListener L;
  public an M;
  public boolean N = true;
  public boolean O = true;
  public final Context a;
  public final LayoutInflater b;
  public int c = 0;
  public Drawable d;
  public CharSequence e;
  public View f;
  public CharSequence g;
  public boolean h = true;
  public boolean i = true;
  public boolean j = true;
  public CharSequence k;
  public DialogInterface.OnClickListener l;
  public CharSequence m;
  public DialogInterface.OnClickListener n;
  public CharSequence o;
  public DialogInterface.OnClickListener p;
  public boolean q;
  public DialogInterface.OnCancelListener r;
  public DialogInterface.OnKeyListener s;
  public CharSequence[] t;
  public ListAdapter u;
  public DialogInterface.OnClickListener v;
  public View w;
  public int x;
  public int y;
  public int z;

  public ai(Context paramContext)
  {
    this.a = paramContext;
    this.q = true;
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  private void b(MyAlertController paramMyAlertController)
  {
    MyAlertController.RecycleListView localRecycleListView = (MyAlertController.RecycleListView)this.b.inflate(2130903266, null);
    Object localObject;
    if (this.D)
      if (this.H == null)
      {
        localObject = new aj(this, this.a, this.t, localRecycleListView);
        if (this.M != null);
        MyAlertController.a(paramMyAlertController, (ListAdapter)localObject);
        MyAlertController.a(paramMyAlertController, this.F);
        if (this.v == null)
          break label274;
        localRecycleListView.setOnItemClickListener(new al(this, paramMyAlertController));
        label95: if (this.L != null)
          localRecycleListView.setOnItemSelectedListener(this.L);
        if (!this.E)
          break label298;
        localRecycleListView.setChoiceMode(1);
      }
    while (true)
    {
      localRecycleListView.a = this.N;
      MyAlertController.a(paramMyAlertController, localRecycleListView);
      return;
      localObject = new ak(this, this.a, this.H, localRecycleListView);
      break;
      int i1;
      if (this.E)
        i1 = 2130903269;
      while (true)
        if (this.H == null)
        {
          if (this.u != null)
          {
            localObject = this.u;
            break;
            i1 = 2130903267;
            continue;
          }
          localObject = new ArrayAdapter(this.a, i1, 2131231547, this.t);
          break;
        }
      Context localContext = this.a;
      Cursor localCursor = this.H;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.I;
      localObject = new SimpleCursorAdapter(localContext, i1, localCursor, arrayOfString, new int[] { 16908308 });
      break;
      label274: if (this.G == null)
        break label95;
      localRecycleListView.setOnItemClickListener(new am(this, localRecycleListView, paramMyAlertController));
      break label95;
      label298: if (this.D)
        localRecycleListView.setChoiceMode(2);
    }
  }

  public final void a(MyAlertController paramMyAlertController)
  {
    MyAlertController.RecycleListView localRecycleListView;
    Object localObject;
    if (this.f != null)
    {
      paramMyAlertController.a(this.f);
      if (this.g != null)
        paramMyAlertController.b(this.g);
      if (this.k != null)
      {
        paramMyAlertController.a(-1, this.k, this.l, null);
        MyAlertController.a(paramMyAlertController, this.h);
      }
      if (this.m != null)
      {
        paramMyAlertController.a(-2, this.m, this.n, null);
        MyAlertController.b(paramMyAlertController, this.i);
      }
      if (this.o != null)
      {
        paramMyAlertController.a(-3, this.o, this.p, null);
        MyAlertController.c(paramMyAlertController, this.j);
      }
      if (this.K)
        paramMyAlertController.a(true);
      if ((this.t != null) || (this.H != null) || (this.u != null))
      {
        localRecycleListView = (MyAlertController.RecycleListView)this.b.inflate(2130903266, null);
        if (!this.D)
          break label382;
        if (this.H != null)
          break label360;
        localObject = new aj(this, this.a, this.t, localRecycleListView);
        label202: if (this.M != null);
        MyAlertController.a(paramMyAlertController, (ListAdapter)localObject);
        MyAlertController.a(paramMyAlertController, this.F);
        if (this.v == null)
          break label497;
        localRecycleListView.setOnItemClickListener(new al(this, paramMyAlertController));
        label250: if (this.L != null)
          localRecycleListView.setOnItemSelectedListener(this.L);
        if (!this.E)
          break label521;
        localRecycleListView.setChoiceMode(1);
        label277: localRecycleListView.a = this.N;
        MyAlertController.a(paramMyAlertController, localRecycleListView);
      }
      if (this.w != null)
      {
        if (!this.B)
          break label536;
        paramMyAlertController.a(this.w, this.x, this.y, this.z, this.A);
      }
    }
    while (true)
    {
      if (!this.O)
        MyAlertController.l(paramMyAlertController);
      return;
      if (this.e == null)
        break;
      paramMyAlertController.a(this.e);
      break;
      label360: localObject = new ak(this, this.a, this.H, localRecycleListView);
      break label202;
      label382: int i1;
      if (this.E)
        i1 = 2130903269;
      while (true)
        if (this.H == null)
        {
          if (this.u != null)
          {
            localObject = this.u;
            break;
            i1 = 2130903267;
            continue;
          }
          localObject = new ArrayAdapter(this.a, i1, 2131231547, this.t);
          break;
        }
      Context localContext = this.a;
      Cursor localCursor = this.H;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.I;
      localObject = new SimpleCursorAdapter(localContext, i1, localCursor, arrayOfString, new int[] { 16908308 });
      break label202;
      label497: if (this.G == null)
        break label250;
      localRecycleListView.setOnItemClickListener(new am(this, localRecycleListView, paramMyAlertController));
      break label250;
      label521: if (!this.D)
        break label277;
      localRecycleListView.setChoiceMode(2);
      break label277;
      label536: paramMyAlertController.b(this.w);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ai
 * JD-Core Version:    0.6.2
 */