package com.keniu.security.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.internal.R.styleable;

public final class MyAlertController
{
  private Drawable A;
  private TextView B;
  private TextView C;
  private View D;
  private boolean E;
  private ListAdapter F;
  private int G = -1;
  private Handler H;
  private boolean I = true;
  View.OnClickListener a = new ah(this);
  private final Context b;
  private final DialogInterface c;
  private final Window d;
  private CharSequence e;
  private CharSequence f;
  private ListView g;
  private View h;
  private int i;
  private int j;
  private int k;
  private int l;
  private boolean m = false;
  private boolean n = true;
  private Button o;
  private CharSequence p;
  private Message q;
  private boolean r = true;
  private Button s;
  private CharSequence t;
  private Message u;
  private boolean v = true;
  private Button w;
  private CharSequence x;
  private Message y;
  private ScrollView z;

  public MyAlertController(Context paramContext, DialogInterface paramDialogInterface, Window paramWindow)
  {
    this.b = paramContext;
    this.c = paramDialogInterface;
    this.d = paramWindow;
    this.H = new ao(paramDialogInterface);
  }

  private void a(Button paramButton)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    localLayoutParams.gravity = 1;
    localLayoutParams.weight = 0.5F;
    paramButton.setLayoutParams(localLayoutParams);
    this.d.findViewById(2131231410).setVisibility(0);
    this.d.findViewById(2131231413).setVisibility(0);
  }

  private boolean a(LinearLayout paramLinearLayout)
  {
    boolean bool;
    if (this.D != null)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      paramLinearLayout.addView(this.D, localLayoutParams);
      this.d.findViewById(2131231454).setVisibility(8);
      bool = true;
    }
    while (true)
    {
      return bool;
      if (!TextUtils.isEmpty(this.e));
      for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label101;
        this.B = ((TextView)this.d.findViewById(2131231456));
        this.B.setText(this.e);
        bool = true;
        break;
      }
      label101: this.d.findViewById(2131231454).setVisibility(8);
      paramLinearLayout.setVisibility(8);
      bool = false;
    }
  }

  private void b(LinearLayout paramLinearLayout)
  {
    this.z = ((ScrollView)this.d.findViewById(2131231458));
    this.z.setFocusable(false);
    this.C = ((TextView)this.d.findViewById(2131231344));
    if (this.C == null);
    while (true)
    {
      return;
      if (this.f != null)
      {
        this.C.setText(this.f);
        this.d.findViewById(2131231458).setBackgroundDrawable(null);
        this.d.findViewById(2131231335).setVisibility(0);
      }
      else
      {
        this.C.setVisibility(8);
        this.z.removeView(this.C);
        if (this.g != null)
        {
          this.g.setBackgroundDrawable(this.z.getBackground());
          paramLinearLayout.removeView(this.d.findViewById(2131231458));
          paramLinearLayout.addView(this.g, new LinearLayout.LayoutParams(-1, -1));
          paramLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0F));
        }
        else
        {
          paramLinearLayout.setVisibility(8);
        }
      }
    }
  }

  private static boolean c(View paramView)
  {
    boolean bool;
    if (paramView.onCheckIsTextEditor())
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramView instanceof ViewGroup))
      {
        bool = false;
      }
      else
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int i1 = localViewGroup.getChildCount();
        while (true)
          if (i1 > 0)
          {
            i1--;
            if (c(localViewGroup.getChildAt(i1)))
            {
              bool = true;
              break;
            }
          }
        bool = false;
      }
    }
  }

  private void d()
  {
    LinearLayout localLinearLayout1 = (LinearLayout)this.d.findViewById(2131231457);
    this.z = ((ScrollView)this.d.findViewById(2131231458));
    this.z.setFocusable(false);
    this.C = ((TextView)this.d.findViewById(2131231344));
    int i1;
    label152: label198: int i2;
    label246: int i3;
    label259: label266: LinearLayout localLinearLayout2;
    TypedArray localTypedArray;
    if (this.C != null)
    {
      if (this.f != null)
      {
        this.C.setText(this.f);
        this.d.findViewById(2131231458).setBackgroundDrawable(null);
        this.d.findViewById(2131231335).setVisibility(0);
      }
    }
    else
    {
      this.o = ((Button)this.d.findViewById(2131231462));
      this.o.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.p))
        break label649;
      this.o.setVisibility(8);
      i1 = 0;
      this.s = ((Button)this.d.findViewById(2131231464));
      this.s.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.t))
        break label673;
      this.s.setVisibility(8);
      this.w = ((Button)this.d.findViewById(2131231463));
      this.w.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.x))
        break label699;
      this.w.setVisibility(8);
      i2 = i1;
      if (i2 != 1)
        break label725;
      a(this.o);
      if (i2 == 0)
        break label757;
      i3 = 1;
      localLinearLayout2 = (LinearLayout)this.d.findViewById(2131231453);
      localTypedArray = this.b.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
      if (this.D == null)
        break label763;
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLinearLayout2.addView(this.D, localLayoutParams);
      this.d.findViewById(2131231454).setVisibility(8);
      label340: View localView = this.d.findViewById(2131231461);
      if (i3 == 0)
        localView.setVisibility(8);
      if (this.h == null)
        break label857;
      FrameLayout localFrameLayout1 = (FrameLayout)this.d.findViewById(2131231459);
      FrameLayout localFrameLayout2 = (FrameLayout)this.d.findViewById(2131231460);
      if (!this.I)
        break label841;
      localFrameLayout2.setBackgroundDrawable(this.b.getResources().getDrawable(2130838044));
      label426: localFrameLayout2.addView(this.h, new ViewGroup.LayoutParams(-1, -1));
      if (this.m)
        localFrameLayout2.setPadding(this.i, this.j, this.k, this.l);
      if (this.g != null)
        ((LinearLayout.LayoutParams)localFrameLayout1.getLayoutParams()).weight = 0.0F;
    }
    while (true)
    {
      if ((this.g != null) && (this.F != null))
      {
        this.g.setAdapter(this.F);
        if (this.G >= 0)
        {
          this.g.setItemChecked(this.G, true);
          this.g.setSelection(this.G);
        }
      }
      localTypedArray.recycle();
      return;
      this.C.setVisibility(8);
      this.z.removeView(this.C);
      if (this.g != null)
      {
        this.g.setBackgroundDrawable(this.z.getBackground());
        localLinearLayout1.removeView(this.d.findViewById(2131231458));
        localLinearLayout1.addView(this.g, new LinearLayout.LayoutParams(-1, -1));
        localLinearLayout1.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0F));
        break;
      }
      localLinearLayout1.setVisibility(8);
      break;
      label649: this.o.setText(this.p);
      this.o.setVisibility(0);
      i1 = 1;
      break label152;
      label673: this.s.setText(this.t);
      this.s.setVisibility(0);
      i1 |= 2;
      break label198;
      label699: this.w.setText(this.x);
      this.w.setVisibility(0);
      i2 = i1 | 0x4;
      break label246;
      label725: if (i2 == 2)
      {
        a(this.w);
        break label259;
      }
      if (i2 != 4)
        break label259;
      a(this.w);
      break label259;
      label757: i3 = 0;
      break label266;
      label763: if (!TextUtils.isEmpty(this.e));
      for (int i4 = 1; ; i4 = 0)
      {
        if (i4 == 0)
          break label817;
        this.B = ((TextView)this.d.findViewById(2131231456));
        this.B.setText(this.e);
        break;
      }
      label817: this.d.findViewById(2131231454).setVisibility(8);
      localLinearLayout2.setVisibility(8);
      break label340;
      label841: this.d.findViewById(2131231335).setVisibility(0);
      break label426;
      label857: this.d.findViewById(2131231459).setVisibility(8);
    }
  }

  private boolean e()
  {
    this.o = ((Button)this.d.findViewById(2131231462));
    this.o.setOnClickListener(this.a);
    int i1;
    label94: int i2;
    if (TextUtils.isEmpty(this.p))
    {
      this.o.setVisibility(8);
      i1 = 0;
      this.s = ((Button)this.d.findViewById(2131231464));
      this.s.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.t))
        break label187;
      this.s.setVisibility(8);
      this.w = ((Button)this.d.findViewById(2131231463));
      this.w.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.x))
        break label213;
      this.w.setVisibility(8);
      i2 = i1;
      label142: if (i2 != 1)
        break label239;
      a(this.o);
      label155: if (i2 == 0)
        break label271;
    }
    label271: for (boolean bool = true; ; bool = false)
    {
      return bool;
      this.o.setText(this.p);
      this.o.setVisibility(0);
      i1 = 1;
      break;
      label187: this.s.setText(this.t);
      this.s.setVisibility(0);
      i1 |= 2;
      break label94;
      label213: this.w.setText(this.x);
      this.w.setVisibility(0);
      i2 = i1 | 0x4;
      break label142;
      label239: if (i2 == 2)
      {
        a(this.w);
        break label155;
      }
      if (i2 != 4)
        break label155;
      a(this.w);
      break label155;
    }
  }

  public final void a()
  {
    this.d.requestFeature(1);
    if ((this.h == null) || (!c(this.h)))
      this.d.setFlags(131072, 131072);
    this.d.setContentView(2130903232);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.d.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f1 = localDisplayMetrics.density;
    Log.v("density", String.valueOf(f1));
    int i1 = localDisplayMetrics.widthPixels;
    int i2 = localDisplayMetrics.heightPixels;
    WindowManager.LayoutParams localLayoutParams = this.d.getAttributes();
    LinearLayout localLinearLayout1;
    label254: int i3;
    label303: label349: int i4;
    label399: label413: int i5;
    label421: LinearLayout localLinearLayout2;
    TypedArray localTypedArray;
    if ((i1 <= 240) || (i2 <= 320))
    {
      localLayoutParams.width = i1;
      localLayoutParams.gravity = 17;
      this.d.setAttributes(localLayoutParams);
      localLinearLayout1 = (LinearLayout)this.d.findViewById(2131231457);
      this.z = ((ScrollView)this.d.findViewById(2131231458));
      this.z.setFocusable(false);
      this.C = ((TextView)this.d.findViewById(2131231344));
      if (this.C != null)
      {
        if (this.f == null)
          break label721;
        this.C.setText(this.f);
        this.d.findViewById(2131231458).setBackgroundDrawable(null);
        this.d.findViewById(2131231335).setVisibility(0);
      }
      this.o = ((Button)this.d.findViewById(2131231462));
      this.o.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.p))
        break label822;
      this.o.setVisibility(8);
      i3 = 0;
      this.s = ((Button)this.d.findViewById(2131231464));
      this.s.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.t))
        break label847;
      this.s.setVisibility(8);
      this.w = ((Button)this.d.findViewById(2131231463));
      this.w.setOnClickListener(this.a);
      if (!TextUtils.isEmpty(this.x))
        break label875;
      this.w.setVisibility(8);
      i4 = i3;
      if (i4 != 1)
        break label903;
      a(this.o);
      if (i4 == 0)
        break label937;
      i5 = 1;
      localLinearLayout2 = (LinearLayout)this.d.findViewById(2131231453);
      localTypedArray = this.b.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
      if (this.D == null)
        break label943;
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
      localLinearLayout2.addView(this.D, localLayoutParams1);
      this.d.findViewById(2131231454).setVisibility(8);
      label495: View localView = this.d.findViewById(2131231461);
      if (i5 == 0)
        localView.setVisibility(8);
      if (this.h == null)
        break label1037;
      FrameLayout localFrameLayout1 = (FrameLayout)this.d.findViewById(2131231459);
      FrameLayout localFrameLayout2 = (FrameLayout)this.d.findViewById(2131231460);
      if (!this.I)
        break label1021;
      localFrameLayout2.setBackgroundDrawable(this.b.getResources().getDrawable(2130838044));
      label581: localFrameLayout2.addView(this.h, new ViewGroup.LayoutParams(-1, -1));
      if (this.m)
        localFrameLayout2.setPadding(this.i, this.j, this.k, this.l);
      if (this.g != null)
        ((LinearLayout.LayoutParams)localFrameLayout1.getLayoutParams()).weight = 0.0F;
    }
    while (true)
    {
      if ((this.g != null) && (this.F != null))
      {
        this.g.setAdapter(this.F);
        if (this.G >= 0)
        {
          this.g.setItemChecked(this.G, true);
          this.g.setSelection(this.G);
        }
      }
      localTypedArray.recycle();
      return;
      localLayoutParams.width = ((int)(300.0F * f1));
      break;
      label721: this.C.setVisibility(8);
      this.z.removeView(this.C);
      if (this.g != null)
      {
        this.g.setBackgroundDrawable(this.z.getBackground());
        localLinearLayout1.removeView(this.d.findViewById(2131231458));
        localLinearLayout1.addView(this.g, new LinearLayout.LayoutParams(-1, -1));
        localLinearLayout1.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0F));
        break label254;
      }
      localLinearLayout1.setVisibility(8);
      break label254;
      label822: this.o.setText(this.p);
      this.o.setVisibility(0);
      i3 = 1;
      break label303;
      label847: this.s.setText(this.t);
      this.s.setVisibility(0);
      i3 |= 2;
      break label349;
      label875: this.w.setText(this.x);
      this.w.setVisibility(0);
      i4 = i3 | 0x4;
      break label399;
      label903: if (i4 == 2)
      {
        a(this.w);
        break label413;
      }
      if (i4 != 4)
        break label413;
      a(this.w);
      break label413;
      label937: i5 = 0;
      break label421;
      label943: if (!TextUtils.isEmpty(this.e));
      for (int i6 = 1; ; i6 = 0)
      {
        if (i6 == 0)
          break label997;
        this.B = ((TextView)this.d.findViewById(2131231456));
        this.B.setText(this.e);
        break;
      }
      label997: this.d.findViewById(2131231454).setVisibility(8);
      localLinearLayout2.setVisibility(8);
      break label495;
      label1021: this.d.findViewById(2131231335).setVisibility(0);
      break label581;
      label1037: this.d.findViewById(2131231459).setVisibility(8);
    }
  }

  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    if ((paramMessage == null) && (paramOnClickListener != null));
    for (Message localMessage = this.H.obtainMessage(paramInt, paramOnClickListener); ; localMessage = paramMessage)
    {
      switch (paramInt)
      {
      default:
        throw new IllegalArgumentException("Button does not exist");
      case -1:
        this.p = paramCharSequence;
        this.q = localMessage;
      case -2:
      case -3:
      }
      while (true)
      {
        return;
        this.t = paramCharSequence;
        this.u = localMessage;
        continue;
        this.x = paramCharSequence;
        this.y = localMessage;
      }
    }
  }

  public final void a(View paramView)
  {
    this.D = paramView;
  }

  public final void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.h = paramView;
    this.m = true;
    this.i = paramInt1;
    this.j = paramInt2;
    this.k = paramInt3;
    this.l = paramInt4;
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    if (this.B != null)
      this.B.setText(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    this.E = paramBoolean;
  }

  public final boolean a(KeyEvent paramKeyEvent)
  {
    if ((this.z != null) && (this.z.executeKeyEvent(paramKeyEvent)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ListView b()
  {
    return this.g;
  }

  public final void b(View paramView)
  {
    this.h = paramView;
    this.m = false;
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.f = paramCharSequence;
    if (this.C != null)
      this.C.setText(paramCharSequence);
  }

  public final boolean b(KeyEvent paramKeyEvent)
  {
    if ((this.z != null) && (this.z.executeKeyEvent(paramKeyEvent)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final Button c()
  {
    return this.o;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.MyAlertController
 * JD-Core Version:    0.6.2
 */