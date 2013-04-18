package com.ijinshan.kpref;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.internal.R.styleable;
import com.android.internal.util.CharSequences;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class Preference
  implements j, Comparable
{
  public static final int a = 2147483647;
  public static int b = 10;
  public static int c = 9;
  public static int d = 1;
  public static int e = 5;
  public static int f = 2;
  public static int g = 7;
  public static int h = 0;
  public static int i = 4;
  public static int j = 11;
  public static int k = 6;
  public static int l = 3;
  public static int m = 8;
  public static boolean n = false;
  private boolean A;
  private boolean B = true;
  private String C;
  private Object D;
  private boolean E = true;
  private boolean F = true;
  private int G = 17367111;
  private int H;
  private boolean I = false;
  private l J;
  private List K;
  private boolean L;
  private Context o;
  private t p;
  private long q;
  private m r;
  private n s;
  private int t = 2147483647;
  private CharSequence u;
  private CharSequence v;
  private String w;
  private Intent x;
  private boolean y = true;
  private boolean z = true;

  public Preference(Context paramContext)
  {
    this(paramContext, null);
  }

  public Preference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842894);
  }

  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.o = paramContext;
    b();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.Preference, paramInt, 0);
    int i1 = localTypedArray.getIndexCount();
    if (i1 >= 0)
    {
      int i2 = localTypedArray.getIndex(i1);
      if (i2 == e)
        this.w = localTypedArray.getString(i2);
      while (true)
      {
        i1--;
        break;
        if (i2 == l)
          this.u = localTypedArray.getString(i2);
        else if (i2 == k)
          this.v = localTypedArray.getString(i2);
        else if (i2 == g)
          this.t = localTypedArray.getInt(i2, this.t);
        else if (i2 == f)
          this.G = localTypedArray.getResourceId(i2, this.G);
        else if (i2 == m)
          this.H = localTypedArray.getResourceId(i2, this.H);
        else if (i2 == d)
          this.y = localTypedArray.getBoolean(i2, true);
        else if (i2 == i)
          this.z = localTypedArray.getBoolean(i2, true);
        else if (i2 == h)
          this.B = localTypedArray.getBoolean(i2, this.B);
        else if (i2 == c)
          this.C = localTypedArray.getString(i2);
        else if (i2 == b)
          this.D = a(localTypedArray, i2);
        else if (i2 == j)
          this.F = localTypedArray.getBoolean(i2, this.F);
      }
    }
    localTypedArray.recycle();
  }

  private StringBuilder M()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence1 = this.u;
    if (!TextUtils.isEmpty(localCharSequence1))
      localStringBuilder.append(localCharSequence1).append(' ');
    CharSequence localCharSequence2 = p();
    if (!TextUtils.isEmpty(localCharSequence2))
      localStringBuilder.append(localCharSequence2).append(' ');
    if (localStringBuilder.length() > 0)
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    return localStringBuilder;
  }

  private int a(Preference paramPreference)
  {
    int i1;
    if ((this.t != 2147483647) || ((this.t == 2147483647) && (paramPreference.t != 2147483647)))
      i1 = this.t - paramPreference.t;
    while (true)
    {
      return i1;
      if (this.u == null)
        i1 = 1;
      else if (paramPreference.u == null)
        i1 = -1;
      else
        i1 = CharSequences.compareToIgnoreCase(this.u, paramPreference.u);
    }
  }

  private void a(SharedPreferences.Editor paramEditor)
  {
    if (this.p.e());
    try
    {
      paramEditor.commit();
      label17: return;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      break label17;
    }
  }

  private void a(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      for (int i1 = localViewGroup.getChildCount() - 1; i1 >= 0; i1--)
        a(localViewGroup.getChildAt(i1), paramBoolean);
    }
  }

  private void a(Object paramObject)
  {
    this.D = paramObject;
  }

  private void a(boolean paramBoolean)
  {
    if (this.z != paramBoolean)
    {
      this.z = paramBoolean;
      G();
    }
  }

  private boolean a(float paramFloat)
  {
    float f1;
    boolean bool;
    if (h())
      if (!h())
      {
        f1 = (0.0F / 0.0F);
        if (paramFloat != f1)
          break label49;
        bool = true;
      }
    while (true)
    {
      return bool;
      f1 = this.p.b().getFloat(this.w, (0.0F / 0.0F));
      break;
      label49: SharedPreferences.Editor localEditor = this.p.d();
      localEditor.putFloat(this.w, paramFloat);
      a(localEditor);
      bool = true;
      continue;
      bool = false;
    }
  }

  private boolean a(int paramInt)
  {
    int i1;
    boolean bool;
    if (h())
    {
      i1 = paramInt ^ 0xFFFFFFFF;
      if (!h())
      {
        if (paramInt != i1)
          break label48;
        bool = true;
      }
    }
    while (true)
    {
      return bool;
      i1 = this.p.b().getInt(this.w, i1);
      break;
      label48: SharedPreferences.Editor localEditor = this.p.d();
      localEditor.putInt(this.w, paramInt);
      a(localEditor);
      bool = true;
      continue;
      bool = false;
    }
  }

  private boolean a(long paramLong)
  {
    long l1;
    boolean bool;
    if (h())
    {
      l1 = 0xFFFFFFFF ^ paramLong;
      if (!h())
      {
        if (paramLong != l1)
          break label55;
        bool = true;
      }
    }
    while (true)
    {
      return bool;
      l1 = this.p.b().getLong(this.w, l1);
      break;
      label55: SharedPreferences.Editor localEditor = this.p.d();
      localEditor.putLong(this.w, paramLong);
      a(localEditor);
      bool = true;
      continue;
      bool = false;
    }
  }

  private int b(int paramInt)
  {
    if (!h());
    for (int i1 = paramInt; ; i1 = this.p.b().getInt(this.w, paramInt))
      return i1;
  }

  private static int b(String paramString)
  {
    int i1 = -1;
    try
    {
      Field localField = Class.forName("com.android.internal.R$styleable").getDeclaredField(paramString);
      localField.setAccessible(true);
      int i2 = ((Integer)localField.get(null)).intValue();
      i1 = i2;
      label34: return i1;
    }
    catch (Exception localException)
    {
      break label34;
    }
  }

  private long b(long paramLong)
  {
    if (!h());
    for (long l1 = paramLong; ; l1 = this.p.b().getLong(this.w, paramLong))
      return l1;
  }

  private void b()
  {
    try
    {
      if (!n)
      {
        n = true;
        b = b("Preference_defaultValue");
        c = b("Preference_dependency");
        d = b("Preference_enabled");
        e = b("Preference_key");
        f = b("Preference_layout");
        g = b("Preference_order");
        h = b("Preference_persistent");
        i = b("Preference_selectable");
        j = b("Preference_shouldDisableView");
        k = b("Preference_summary");
        l = b("Preference_title");
        m = b("Preference_widgetLayout");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void b(Preference paramPreference)
  {
    if (this.K == null)
      this.K = new ArrayList();
    this.K.add(paramPreference);
    paramPreference.b(c());
  }

  private Preference c(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (this.p == null));
    for (Preference localPreference = null; ; localPreference = this.p.a(paramString))
      return localPreference;
  }

  private void c(Preference paramPreference)
  {
    if (this.K != null)
      this.K.remove(paramPreference);
  }

  private boolean e()
  {
    return this.F;
  }

  private void f()
  {
    if (this.w == null)
      throw new IllegalStateException("Preference does not have a key assigned.");
    this.A = true;
  }

  private void g(boolean paramBoolean)
  {
    this.F = paramBoolean;
    G();
  }

  private boolean g()
  {
    if (!TextUtils.isEmpty(this.w));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean h()
  {
    if ((this.p != null) && (this.B) && (g()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private m i()
  {
    return this.r;
  }

  private n j()
  {
    return this.s;
  }

  private boolean k()
  {
    if (this.p == null);
    for (boolean bool = false; ; bool = this.p.e())
      return bool;
  }

  private void l()
  {
    if (TextUtils.isEmpty(this.C));
    while (true)
    {
      return;
      Preference localPreference = c(this.C);
      if (localPreference == null)
        break;
      if (localPreference.K == null)
        localPreference.K = new ArrayList();
      localPreference.K.add(this);
      b(localPreference.c());
    }
    throw new IllegalStateException("Dependency \"" + this.C + "\" not found for preference \"" + this.w + "\" (title: \"" + this.u + "\"");
  }

  private void m()
  {
    if (this.C != null)
    {
      Preference localPreference = c(this.C);
      if ((localPreference != null) && (localPreference.K != null))
        localPreference.K.remove(this);
    }
  }

  private String n()
  {
    return this.C;
  }

  private void o()
  {
    if ((!h()) || (!E().contains(this.w)))
      if (this.D != null)
        a(false, this.D);
    while (true)
    {
      return;
      a(true, null);
    }
  }

  private float q()
  {
    if (!h());
    for (float f1 = (0.0F / 0.0F); ; f1 = this.p.b().getFloat(this.w, (0.0F / 0.0F)))
      return f1;
  }

  public final String A()
  {
    return this.w;
  }

  public final boolean B()
  {
    return this.B;
  }

  public final void C()
  {
    this.B = true;
  }

  public final Context D()
  {
    return this.o;
  }

  public final SharedPreferences E()
  {
    if (this.p == null);
    for (SharedPreferences localSharedPreferences = null; ; localSharedPreferences = this.p.b())
      return localSharedPreferences;
  }

  public final SharedPreferences.Editor F()
  {
    if (this.p == null);
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.p.d())
      return localEditor;
  }

  protected final void G()
  {
    if (this.J != null)
      this.J.a();
  }

  protected final void H()
  {
    if (this.J != null)
      this.J.b();
  }

  public final t I()
  {
    return this.p;
  }

  protected void J()
  {
    l();
  }

  protected void K()
  {
    m();
  }

  protected void K_()
  {
  }

  final boolean L()
  {
    return this.I;
  }

  public final View a(View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = a(paramViewGroup); ; localView = paramView)
    {
      a(localView);
      return localView;
    }
  }

  protected View a(ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)this.o.getSystemService("layout_inflater");
    View localView = localLayoutInflater.inflate(this.G, paramViewGroup, false);
    if (this.H != 0)
    {
      ViewGroup localViewGroup = (ViewGroup)localView.findViewById(16908312);
      localLayoutInflater.inflate(this.H, localViewGroup);
    }
    return localView;
  }

  protected Object a(TypedArray paramTypedArray, int paramInt)
  {
    return null;
  }

  protected String a(String paramString)
  {
    if (!h());
    for (String str = paramString; ; str = this.p.b().getString(this.w, paramString))
      return str;
  }

  public final void a(Intent paramIntent)
  {
    this.x = paramIntent;
  }

  public final void a(Bundle paramBundle)
  {
    b(paramBundle);
  }

  protected void a(Parcelable paramParcelable)
  {
    this.L = true;
    if ((paramParcelable != Preference.BaseSavedState.EMPTY_STATE) && (paramParcelable != null))
      throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
  }

  protected void a(View paramView)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(16908310);
    if (localTextView1 != null)
      localTextView1.setText(this.u);
    TextView localTextView2 = (TextView)paramView.findViewById(16908304);
    if (localTextView2 != null)
    {
      if (TextUtils.isEmpty(p()))
        break label85;
      if (localTextView2.getVisibility() != 0)
        localTextView2.setVisibility(0);
      localTextView2.setText(p());
    }
    while (true)
    {
      if (this.F)
        a(paramView, x());
      return;
      label85: if (localTextView2.getVisibility() != 8)
        localTextView2.setVisibility(8);
    }
  }

  final void a(PreferenceScreen paramPreferenceScreen)
  {
    if (!x());
    while (true)
    {
      return;
      K_();
      if (this.s != null)
        this.s.a(this);
      t localt = this.p;
      if (localt != null)
      {
        x localx = localt.k();
        if ((paramPreferenceScreen != null) && (localx != null) && (localx.a(paramPreferenceScreen, this)));
      }
      else if (this.x != null)
      {
        this.o.startActivity(this.x);
      }
    }
  }

  final void a(l paraml)
  {
    this.J = paraml;
  }

  public final void a(m paramm)
  {
    this.r = paramm;
  }

  public final void a(n paramn)
  {
    this.s = paramn;
  }

  protected void a(t paramt)
  {
    this.p = paramt;
    this.q = paramt.a();
    if ((!h()) || (!E().contains(this.w)))
      if (this.D != null)
        a(false, this.D);
    while (true)
    {
      return;
      a(true, null);
    }
  }

  public void a(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (this.v != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(this.v))))
    {
      this.v = paramCharSequence;
      G();
    }
  }

  protected void a(boolean paramBoolean, Object paramObject)
  {
  }

  void b(Bundle paramBundle)
  {
    if (g())
    {
      this.L = false;
      Parcelable localParcelable = d();
      if (!this.L)
        throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
      if (localParcelable != null)
        paramBundle.putParcelable(this.w, localParcelable);
    }
  }

  public final void b(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (this.u != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(this.u))))
    {
      this.u = paramCharSequence;
      G();
    }
  }

  public final void b(boolean paramBoolean)
  {
    if (this.E == paramBoolean)
      if (paramBoolean)
        break label32;
    label32: for (boolean bool = true; ; bool = false)
    {
      this.E = bool;
      d(c());
      G();
      return;
    }
  }

  protected final boolean b(Object paramObject)
  {
    if (this.r == null);
    for (boolean bool = true; ; bool = this.r.a(this, paramObject))
      return bool;
  }

  public final void c(int paramInt)
  {
    if (paramInt != this.G)
      this.I = true;
    this.G = paramInt;
  }

  public final void c(Bundle paramBundle)
  {
    d(paramBundle);
  }

  public void c(boolean paramBoolean)
  {
    if (this.y != paramBoolean)
    {
      this.y = paramBoolean;
      d(c());
      G();
    }
  }

  public boolean c()
  {
    if (!x());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected Parcelable d()
  {
    this.L = true;
    return Preference.BaseSavedState.EMPTY_STATE;
  }

  public final void d(int paramInt)
  {
    if (paramInt != this.t)
    {
      this.t = paramInt;
      H();
    }
  }

  void d(Bundle paramBundle)
  {
    if (g())
    {
      Parcelable localParcelable = paramBundle.getParcelable(this.w);
      if (localParcelable != null)
      {
        this.L = false;
        a(localParcelable);
        if (!this.L)
          throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
      }
    }
  }

  public final void d(String paramString)
  {
    this.w = paramString;
    if ((this.A) && (!g()))
    {
      if (this.w == null)
        throw new IllegalStateException("Preference does not have a key assigned.");
      this.A = true;
    }
  }

  public final void d(boolean paramBoolean)
  {
    List localList = this.K;
    if (localList == null);
    while (true)
    {
      return;
      int i1 = localList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((Preference)localList.get(i2)).b(paramBoolean);
    }
  }

  public final void e(int paramInt)
  {
    b(this.o.getString(paramInt));
  }

  public final void e(String paramString)
  {
    m();
    this.C = paramString;
    l();
  }

  protected final boolean e(boolean paramBoolean)
  {
    boolean bool2;
    boolean bool1;
    if (h())
      if (!paramBoolean)
      {
        bool2 = true;
        if (paramBoolean != f(bool2))
          break label31;
        bool1 = true;
      }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label31: SharedPreferences.Editor localEditor = this.p.d();
      localEditor.putBoolean(this.w, paramBoolean);
      a(localEditor);
      bool1 = true;
      continue;
      bool1 = false;
    }
  }

  public final void f(int paramInt)
  {
    a(this.o.getString(paramInt));
  }

  protected final boolean f(String paramString)
  {
    boolean bool;
    if (h())
      if (paramString == a(null))
        bool = true;
    while (true)
    {
      return bool;
      SharedPreferences.Editor localEditor = this.p.d();
      localEditor.putString(this.w, paramString);
      a(localEditor);
      bool = true;
      continue;
      bool = false;
    }
  }

  protected final boolean f(boolean paramBoolean)
  {
    if (!h());
    for (boolean bool = paramBoolean; ; bool = this.p.b().getBoolean(this.w, paramBoolean))
      return bool;
  }

  public CharSequence p()
  {
    return this.v;
  }

  public final Intent r()
  {
    return this.x;
  }

  public final int s()
  {
    return this.G;
  }

  public final void t()
  {
    if (2130903264 != this.H)
      this.I = true;
    this.H = 2130903264;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence1 = this.u;
    if (!TextUtils.isEmpty(localCharSequence1))
      localStringBuilder.append(localCharSequence1).append(' ');
    CharSequence localCharSequence2 = p();
    if (!TextUtils.isEmpty(localCharSequence2))
      localStringBuilder.append(localCharSequence2).append(' ');
    if (localStringBuilder.length() > 0)
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    return localStringBuilder.toString();
  }

  public final int u()
  {
    return this.H;
  }

  public final int v()
  {
    return this.t;
  }

  public final CharSequence w()
  {
    return this.u;
  }

  public boolean x()
  {
    if ((this.y) && (this.E));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean y()
  {
    return this.z;
  }

  final long z()
  {
    return this.q;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.Preference
 * JD-Core Version:    0.6.2
 */