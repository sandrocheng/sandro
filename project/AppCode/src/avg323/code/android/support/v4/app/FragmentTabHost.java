package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList a;
  private Context b;
  private o c;
  private int d;
  private TabHost.OnTabChangeListener e;
  private y f;
  private boolean g;

  private z a(String paramString, z paramz)
  {
    Object localObject1 = null;
    int i = 0;
    Object localObject2;
    if (i < this.a.size())
    {
      localObject2 = (y)this.a.get(i);
      if (!y.b((y)localObject2).equals(paramString))
        break label202;
    }
    while (true)
    {
      i++;
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        throw new IllegalStateException("No tab known for tag " + paramString);
      if (this.f != localObject1)
      {
        if (paramz == null)
          paramz = this.c.a();
        if ((this.f != null) && (y.a(this.f) != null))
          paramz.b(y.a(this.f));
        if (localObject1 != null)
        {
          if (y.a(localObject1) != null)
            break label190;
          y.a(localObject1, Fragment.a(this.b, y.c(localObject1).getName(), y.d(localObject1)));
          paramz.a(this.d, y.a(localObject1), y.b(localObject1));
        }
      }
      while (true)
      {
        this.f = localObject1;
        return paramz;
        label190: paramz.c(y.a(localObject1));
      }
      label202: localObject2 = localObject1;
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    z localz1 = null;
    int i = 0;
    if (i < this.a.size())
    {
      y localy = (y)this.a.get(i);
      y.a(localy, this.c.a(y.b(localy)));
      if ((y.a(localy) != null) && (!y.a(localy).m()))
      {
        if (!y.b(localy).equals(str))
          break label98;
        this.f = localy;
      }
      while (true)
      {
        i++;
        break;
        label98: if (localz1 == null)
          localz1 = this.c.a();
        localz1.b(y.a(localy));
      }
    }
    this.g = true;
    z localz2 = a(str, localz1);
    if (localz2 != null)
    {
      localz2.a();
      this.c.b();
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.g = false;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    FragmentTabHost.SavedState localSavedState = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setCurrentTabByTag(localSavedState.a);
  }

  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    localSavedState.a = getCurrentTabTag();
    return localSavedState;
  }

  public void onTabChanged(String paramString)
  {
    if (this.g)
    {
      z localz = a(paramString, null);
      if (localz != null)
        localz.a();
    }
    if (this.e != null)
      this.e.onTabChanged(paramString);
  }

  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.e = paramOnTabChangeListener;
  }

  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentTabHost
 * JD-Core Version:    0.6.2
 */