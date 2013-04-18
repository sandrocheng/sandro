package com.keniu.security.protection;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.keniu.security.commui.b;
import com.keniu.security.commui.c;
import com.keniu.security.protection.ui.ag;
import com.keniu.security.util.av;
import java.lang.reflect.Method;

public final class u extends c
  implements View.OnClickListener, View.OnKeyListener
{
  private Button g;
  private Button h;
  private EditText i;
  private TextView j;
  private TextView k;
  private f l;
  private SurfaceView m;
  private Context n;
  private int o;
  private int p;

  public u(ScreenLockService paramScreenLockService, Context paramContext)
  {
    super(paramContext);
    this.n = paramContext;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.format = 1;
    this.c.height = -1;
    this.c.width = -1;
    this.e = LayoutInflater.from(this.n).inflate(2130903165, null);
    this.g = ((Button)this.e.findViewById(2131231267));
    this.h = ((Button)this.e.findViewById(2131231227));
    this.i = ((EditText)this.e.findViewById(2131231265));
    this.j = ((TextView)this.e.findViewById(2131231266));
    this.m = ((SurfaceView)this.e.findViewById(2131231268));
    this.k = ((TextView)this.e.findViewById(2131231269));
    if (ScreenLockService.c(this.a))
    {
      this.h.setVisibility(0);
      this.g.setVisibility(8);
      this.j.setVisibility(8);
      this.h.setOnClickListener(this);
    }
    while (true)
    {
      if (ScreenLockService.d(this.a))
      {
        this.m.setVisibility(0);
        if (ScreenLockService.c(this.a))
        {
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(180, 240);
          this.m.setLayoutParams(localLayoutParams);
        }
      }
      try
      {
        Class localClass = this.m.getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Boolean.TYPE;
        Method localMethod = localClass.getMethod("setZOrderOnTop", arrayOfClass);
        SurfaceView localSurfaceView = this.m;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(true);
        localMethod.invoke(localSurfaceView, arrayOfObject);
        this.k.setVisibility(0);
        SurfaceHolder localSurfaceHolder = this.m.getHolder();
        this.l = new f(this.n, localSurfaceHolder);
        this.o = 0;
        this.p = 0;
        return;
        this.g.setOnClickListener(this);
        this.j.setOnClickListener(this);
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  private void a()
  {
    ag.b(this.n, false);
    ag.a(this.n, false);
    if (ScreenLockService.a(this.a) == 2)
    {
      if (ScreenLockService.b(this.a) != null)
        ScreenLockService.b(this.a).b();
      c();
    }
    while (true)
    {
      return;
      c();
      this.a.stopSelf();
    }
  }

  private void a(int paramInt1, int paramInt2)
  {
    b localb = new b(this.d);
    localb.a(this.n.getString(paramInt1), this.n.getString(paramInt2), null, this.n.getString(2131428298));
    localb.b();
    localb.a(new w(this, localb), null);
    localb.d();
  }

  private void b()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.format = 1;
    this.c.height = -1;
    this.c.width = -1;
    this.e = LayoutInflater.from(this.n).inflate(2130903165, null);
    this.g = ((Button)this.e.findViewById(2131231267));
    this.h = ((Button)this.e.findViewById(2131231227));
    this.i = ((EditText)this.e.findViewById(2131231265));
    this.j = ((TextView)this.e.findViewById(2131231266));
    this.m = ((SurfaceView)this.e.findViewById(2131231268));
    this.k = ((TextView)this.e.findViewById(2131231269));
    if (ScreenLockService.c(this.a))
    {
      this.h.setVisibility(0);
      this.g.setVisibility(8);
      this.j.setVisibility(8);
      this.h.setOnClickListener(this);
    }
    while (true)
    {
      if (ScreenLockService.d(this.a))
      {
        this.m.setVisibility(0);
        if (ScreenLockService.c(this.a))
        {
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(180, 240);
          this.m.setLayoutParams(localLayoutParams);
        }
      }
      try
      {
        Class localClass = this.m.getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Boolean.TYPE;
        Method localMethod = localClass.getMethod("setZOrderOnTop", arrayOfClass);
        SurfaceView localSurfaceView = this.m;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(true);
        localMethod.invoke(localSurfaceView, arrayOfObject);
        this.k.setVisibility(0);
        SurfaceHolder localSurfaceHolder = this.m.getHolder();
        this.l = new f(this.n, localSurfaceHolder);
        return;
        this.g.setOnClickListener(this);
        this.j.setOnClickListener(this);
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  private void e()
  {
    String str1 = av.c(this.n);
    String str2 = ag.a(this.n);
    String str3;
    if ((str2 == null) || (str2.equals("")))
      str3 = this.n.getString(2131429219);
    while (true)
    {
      b localb = new b(this.d);
      localb.a(this.n.getString(2131427865), str3, null, this.n.getString(2131428298));
      localb.b();
      localb.a(new v(this, localb), null);
      localb.d();
      return;
      if ((str1 == null) || (str1.equals("-1")))
      {
        str3 = this.n.getString(2131429220);
      }
      else
      {
        String str4 = this.a.getString(2131429369);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str2.substring(0, 3);
        arrayOfObject[1] = str2.substring(7);
        str3 = String.format(str4, arrayOfObject);
      }
    }
  }

  private void f()
  {
    a(2131429371, 2131428884);
  }

  private void g()
  {
    a(2131427865, 2131429372);
  }

  private boolean h()
  {
    boolean bool;
    if (ScreenLockService.c(this.a))
      bool = false;
    while (true)
    {
      return bool;
      if ((ag.g(this.n)) && (ScreenLockService.d(this.a)))
        bool = true;
      else
        bool = false;
    }
  }

  public final void onClick(View paramView)
  {
    paramView.setFocusable(true);
    if (paramView == this.g)
    {
      String str5 = this.i.getText().toString();
      if (!TextUtils.isEmpty(str5))
        if (ag.e(this.n, str5))
          a();
    }
    label145: 
    do
      while (true)
      {
        return;
        this.o = (1 + this.o);
        a(2131429371, 2131428884);
        if (this.o >= 2)
        {
          if ((!ScreenLockService.c(this.a)) && (ag.g(this.n)) && (ScreenLockService.d(this.a)));
          for (int i1 = 1; ; i1 = 0)
          {
            if (i1 == 0)
              break label145;
            this.l.c();
            com.jxphone.mosecurity.a.a.a(this.n, "pto", "12", "");
            break;
          }
          continue;
          this.p = (1 + this.p);
          if (this.p >= 2)
          {
            a(2131427865, 2131429372);
            continue;
            if (paramView != this.h)
              break;
            a();
          }
        }
      }
    while (paramView != this.j);
    String str1 = av.c(this.n);
    String str2 = ag.a(this.n);
    String str3;
    if ((str2 == null) || (str2.equals("")))
      str3 = this.n.getString(2131429219);
    while (true)
    {
      b localb = new b(this.d);
      localb.a(this.n.getString(2131427865), str3, null, this.n.getString(2131428298));
      localb.b();
      localb.a(new v(this, localb), null);
      localb.d();
      break;
      if ((str1 == null) || (str1.equals("-1")))
      {
        str3 = this.n.getString(2131429220);
      }
      else
      {
        String str4 = this.a.getString(2131429369);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str2.substring(0, 3);
        arrayOfObject[1] = str2.substring(7);
        str3 = String.format(str4, arrayOfObject);
      }
    }
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    c();
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.u
 * JD-Core Version:    0.6.2
 */