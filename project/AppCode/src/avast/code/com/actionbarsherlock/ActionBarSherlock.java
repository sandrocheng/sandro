package com.actionbarsherlock;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.ActionBarSherlockCompat;
import com.actionbarsherlock.internal.ActionBarSherlockNative;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.MenuInflater;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public abstract class ActionBarSherlock
{
  private static final Class[] CONSTRUCTOR_ARGS;
  protected static final boolean DEBUG = false;
  public static final int FLAG_DELEGATE = 1;
  private static final HashMap IMPLEMENTATIONS;
  protected static final String TAG = "ActionBarSherlock";
  protected final Activity mActivity;
  protected final boolean mIsDelegate;
  protected MenuInflater mMenuInflater;

  static
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Activity.class;
    arrayOfClass[1] = Integer.TYPE;
    CONSTRUCTOR_ARGS = arrayOfClass;
    IMPLEMENTATIONS = new HashMap();
    registerImplementation(ActionBarSherlockCompat.class);
    registerImplementation(ActionBarSherlockNative.class);
  }

  protected ActionBarSherlock(Activity paramActivity, int paramInt)
  {
    this.mActivity = paramActivity;
    if ((paramInt & 0x1) != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.mIsDelegate = bool;
      return;
    }
  }

  public static void registerImplementation(Class paramClass)
  {
    if (!paramClass.isAnnotationPresent(ActionBarSherlock.Implementation.class))
      throw new IllegalArgumentException("Class " + paramClass.getSimpleName() + " is not annotated with @Implementation");
    if (IMPLEMENTATIONS.containsValue(paramClass));
    while (true)
    {
      return;
      ActionBarSherlock.Implementation localImplementation = (ActionBarSherlock.Implementation)paramClass.getAnnotation(ActionBarSherlock.Implementation.class);
      IMPLEMENTATIONS.put(localImplementation, paramClass);
    }
  }

  public static boolean unregisterImplementation(Class paramClass)
  {
    return IMPLEMENTATIONS.values().remove(paramClass);
  }

  public static ActionBarSherlock wrap(Activity paramActivity)
  {
    return wrap(paramActivity, 0);
  }

  public static ActionBarSherlock wrap(Activity paramActivity, int paramInt)
  {
    int i = 0;
    HashMap localHashMap = new HashMap(IMPLEMENTATIONS);
    Iterator localIterator1 = localHashMap.keySet().iterator();
    do
      if (!localIterator1.hasNext())
        break;
    while (((ActionBarSherlock.Implementation)localIterator1.next()).dpi() != 213);
    for (int j = 1; ; j = 0)
    {
      if (j != 0)
      {
        if (paramActivity.getResources().getDisplayMetrics().densityDpi == 213);
        for (int i1 = 1; ; i1 = 0)
        {
          Iterator localIterator5 = localHashMap.keySet().iterator();
          while (localIterator5.hasNext())
          {
            int i2 = ((ActionBarSherlock.Implementation)localIterator5.next()).dpi();
            if (((i1 != 0) && (i2 != 213)) || ((i1 == 0) && (i2 == 213)))
              localIterator5.remove();
          }
        }
      }
      Iterator localIterator2 = localHashMap.keySet().iterator();
      do
        if (!localIterator2.hasNext())
          break;
      while (((ActionBarSherlock.Implementation)localIterator2.next()).api() == -1);
      for (int k = 1; ; k = 0)
      {
        if (k != 0)
        {
          int m = Build.VERSION.SDK_INT;
          Iterator localIterator3 = localHashMap.keySet().iterator();
          while (localIterator3.hasNext())
          {
            int n = ((ActionBarSherlock.Implementation)localIterator3.next()).api();
            if (n > m)
              localIterator3.remove();
            else if (n > i)
              i = n;
          }
          Iterator localIterator4 = localHashMap.keySet().iterator();
          while (localIterator4.hasNext())
            if (((ActionBarSherlock.Implementation)localIterator4.next()).api() != i)
              localIterator4.remove();
        }
        if (localHashMap.size() > 1)
          throw new IllegalStateException("More than one implementation matches configuration.");
        if (localHashMap.isEmpty())
          throw new IllegalStateException("No implementations match configuration.");
        Class localClass = (Class)localHashMap.values().iterator().next();
        try
        {
          Constructor localConstructor = localClass.getConstructor(CONSTRUCTOR_ARGS);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = paramActivity;
          arrayOfObject[1] = Integer.valueOf(paramInt);
          ActionBarSherlock localActionBarSherlock = (ActionBarSherlock)localConstructor.newInstance(arrayOfObject);
          return localActionBarSherlock;
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          throw new RuntimeException(localNoSuchMethodException);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new RuntimeException(localIllegalArgumentException);
        }
        catch (InstantiationException localInstantiationException)
        {
          throw new RuntimeException(localInstantiationException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          throw new RuntimeException(localIllegalAccessException);
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          throw new RuntimeException(localInvocationTargetException);
        }
      }
    }
  }

  public abstract void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  protected final boolean callbackCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    boolean bool = true;
    if ((this.mActivity instanceof ActionBarSherlock.OnCreatePanelMenuListener))
      bool = ((ActionBarSherlock.OnCreatePanelMenuListener)this.mActivity).onCreatePanelMenu(0, paramMenu);
    while (true)
    {
      return bool;
      if ((this.mActivity instanceof ActionBarSherlock.OnCreateOptionsMenuListener))
        bool = ((ActionBarSherlock.OnCreateOptionsMenuListener)this.mActivity).onCreateOptionsMenu(paramMenu);
    }
  }

  protected final boolean callbackOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    boolean bool;
    if ((this.mActivity instanceof ActionBarSherlock.OnMenuItemSelectedListener))
      bool = ((ActionBarSherlock.OnMenuItemSelectedListener)this.mActivity).onMenuItemSelected(0, paramMenuItem);
    while (true)
    {
      return bool;
      if ((this.mActivity instanceof ActionBarSherlock.OnOptionsItemSelectedListener))
        bool = ((ActionBarSherlock.OnOptionsItemSelectedListener)this.mActivity).onOptionsItemSelected(paramMenuItem);
      else
        bool = false;
    }
  }

  protected final boolean callbackPrepareOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    boolean bool = true;
    if ((this.mActivity instanceof ActionBarSherlock.OnPreparePanelListener))
      bool = ((ActionBarSherlock.OnPreparePanelListener)this.mActivity).onPreparePanel(0, null, paramMenu);
    while (true)
    {
      return bool;
      if ((this.mActivity instanceof ActionBarSherlock.OnPrepareOptionsMenuListener))
        bool = ((ActionBarSherlock.OnPrepareOptionsMenuListener)this.mActivity).onPrepareOptionsMenu(paramMenu);
    }
  }

  public boolean dispatchCloseOptionsMenu()
  {
    return false;
  }

  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
  }

  public abstract boolean dispatchCreateOptionsMenu(android.view.Menu paramMenu);

  public void dispatchDestroy()
  {
  }

  public abstract void dispatchInvalidateOptionsMenu();

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return false;
  }

  public boolean dispatchMenuOpened(int paramInt, android.view.Menu paramMenu)
  {
    return false;
  }

  public boolean dispatchOpenOptionsMenu()
  {
    return false;
  }

  public abstract boolean dispatchOptionsItemSelected(android.view.MenuItem paramMenuItem);

  public void dispatchPanelClosed(int paramInt, android.view.Menu paramMenu)
  {
  }

  public void dispatchPause()
  {
  }

  public void dispatchPostCreate(Bundle paramBundle)
  {
  }

  public void dispatchPostResume()
  {
  }

  public abstract boolean dispatchPrepareOptionsMenu(android.view.Menu paramMenu);

  public void dispatchRestoreInstanceState(Bundle paramBundle)
  {
  }

  public void dispatchSaveInstanceState(Bundle paramBundle)
  {
  }

  public void dispatchStop()
  {
  }

  public void dispatchTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
  }

  public abstract ActionBar getActionBar();

  public MenuInflater getMenuInflater()
  {
    if (this.mMenuInflater == null)
      if (getActionBar() == null)
        break label38;
    label38: for (this.mMenuInflater = new MenuInflater(getThemedContext(), this.mActivity); ; this.mMenuInflater = new MenuInflater(this.mActivity))
      return this.mMenuInflater;
  }

  protected abstract Context getThemedContext();

  public abstract boolean hasFeature(int paramInt);

  public abstract boolean requestFeature(int paramInt);

  public abstract void setContentView(int paramInt);

  public void setContentView(View paramView)
  {
    setContentView(paramView, new ViewGroup.LayoutParams(-1, -1));
  }

  public abstract void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  public abstract void setProgress(int paramInt);

  public abstract void setProgressBarIndeterminate(boolean paramBoolean);

  public abstract void setProgressBarIndeterminateVisibility(boolean paramBoolean);

  public abstract void setProgressBarVisibility(boolean paramBoolean);

  public abstract void setSecondaryProgress(int paramInt);

  public void setTitle(int paramInt)
  {
    setTitle(this.mActivity.getString(paramInt));
  }

  public abstract void setTitle(CharSequence paramCharSequence);

  public abstract void setUiOptions(int paramInt);

  public abstract void setUiOptions(int paramInt1, int paramInt2);

  public abstract ActionMode startActionMode(ActionMode.Callback paramCallback);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.ActionBarSherlock
 * JD-Core Version:    0.6.2
 */