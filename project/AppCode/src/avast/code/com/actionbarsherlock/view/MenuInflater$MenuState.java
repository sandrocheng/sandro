package com.actionbarsherlock.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import java.lang.reflect.Constructor;

class MenuInflater$MenuState
{
  private static final int defaultGroupId = 0;
  private static final int defaultItemCategory = 0;
  private static final int defaultItemCheckable = 0;
  private static final boolean defaultItemChecked = false;
  private static final boolean defaultItemEnabled = true;
  private static final int defaultItemId = 0;
  private static final int defaultItemOrder = 0;
  private static final boolean defaultItemVisible = true;
  private int groupCategory;
  private int groupCheckable;
  private boolean groupEnabled;
  private int groupId;
  private int groupOrder;
  private boolean groupVisible;
  private ActionProvider itemActionProvider;
  private String itemActionProviderClassName;
  private String itemActionViewClassName;
  private int itemActionViewLayout;
  private boolean itemAdded;
  private char itemAlphabeticShortcut;
  private int itemCategoryOrder;
  private int itemCheckable;
  private boolean itemChecked;
  private boolean itemEnabled;
  private int itemIconResId;
  private int itemId;
  private String itemListenerMethodName;
  private char itemNumericShortcut;
  private int itemShowAsAction;
  private CharSequence itemTitle;
  private CharSequence itemTitleCondensed;
  private boolean itemVisible;
  private Menu menu;

  public MenuInflater$MenuState(MenuInflater paramMenuInflater, Menu paramMenu)
  {
    this.menu = paramMenu;
    resetGroup();
  }

  private char getShortcut(String paramString)
  {
    char c = '\000';
    if (paramString == null);
    while (true)
    {
      return c;
      c = paramString.charAt(0);
    }
  }

  private Object newInstance(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject2 = MenuInflater.access$100(this.this$0).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      localObject1 = localObject2;
      return localObject1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.w("MenuInflater", "Cannot instantiate class: " + paramString, localException);
        Object localObject1 = null;
      }
    }
  }

  private void setItem(MenuItem paramMenuItem)
  {
    int i = 1;
    MenuItem localMenuItem = paramMenuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled);
    if (this.itemCheckable >= i);
    int m;
    for (int k = i; ; m = 0)
    {
      localMenuItem.setCheckable(k).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId).setAlphabeticShortcut(this.itemAlphabeticShortcut).setNumericShortcut(this.itemNumericShortcut);
      if (this.itemShowAsAction >= 0)
        paramMenuItem.setShowAsAction(this.itemShowAsAction);
      if (this.itemListenerMethodName == null)
        break label165;
      if (!MenuInflater.access$100(this.this$0).isRestricted())
        break;
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new MenuInflater.InflatedOnMenuItemClickListener(MenuInflater.access$400(this.this$0), this.itemListenerMethodName));
    label165: if (this.itemCheckable >= 2)
    {
      if ((paramMenuItem instanceof MenuItemImpl))
        ((MenuItemImpl)paramMenuItem).setExclusiveCheckable(i);
    }
    else
    {
      if (this.itemActionViewClassName == null)
        break label293;
      paramMenuItem.setActionView((View)newInstance(this.itemActionViewClassName, MenuInflater.access$500(), MenuInflater.access$600(this.this$0)));
    }
    while (true)
    {
      if (this.itemActionViewLayout > 0)
      {
        if (i != 0)
          break label282;
        paramMenuItem.setActionView(this.itemActionViewLayout);
      }
      while (true)
      {
        if (this.itemActionProvider != null)
          paramMenuItem.setActionProvider(this.itemActionProvider);
        return;
        this.menu.setGroupCheckable(this.groupId, i, i);
        break;
        label282: Log.w("MenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }
      label293: int j = 0;
    }
  }

  public void addItem()
  {
    this.itemAdded = true;
    setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
  }

  public SubMenu addSubMenuItem()
  {
    this.itemAdded = true;
    SubMenu localSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
    setItem(localSubMenu.getItem());
    return localSubMenu;
  }

  public boolean hasAddedItem()
  {
    return this.itemAdded;
  }

  public void readGroup(AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = MenuInflater.access$100(this.this$0).obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockMenuGroup);
    this.groupId = localTypedArray.getResourceId(1, 0);
    this.groupCategory = localTypedArray.getInt(3, 0);
    this.groupOrder = localTypedArray.getInt(4, 0);
    this.groupCheckable = localTypedArray.getInt(5, 0);
    this.groupVisible = localTypedArray.getBoolean(2, true);
    this.groupEnabled = localTypedArray.getBoolean(0, true);
    localTypedArray.recycle();
  }

  public void readItem(AttributeSet paramAttributeSet)
  {
    int i = 1;
    TypedArray localTypedArray = MenuInflater.access$100(this.this$0).obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockMenuItem);
    this.itemId = localTypedArray.getResourceId(2, 0);
    int j = localTypedArray.getInt(5, this.groupCategory);
    int k = localTypedArray.getInt(6, this.groupOrder);
    this.itemCategoryOrder = (j & 0xFFFF0000 | k & 0xFFFF);
    this.itemTitle = localTypedArray.getText(7);
    this.itemTitleCondensed = localTypedArray.getText(8);
    this.itemIconResId = localTypedArray.getResourceId(0, 0);
    this.itemAlphabeticShortcut = getShortcut(localTypedArray.getString(9));
    this.itemNumericShortcut = getShortcut(localTypedArray.getString(10));
    int n;
    label153: int m;
    label224: String str1;
    label288: String str2;
    if (localTypedArray.hasValue(11))
      if (localTypedArray.getBoolean(11, false))
      {
        n = i;
        this.itemCheckable = n;
        this.itemChecked = localTypedArray.getBoolean(3, false);
        this.itemVisible = localTypedArray.getBoolean(4, this.groupVisible);
        this.itemEnabled = localTypedArray.getBoolean(i, this.groupEnabled);
        TypedValue localTypedValue1 = new TypedValue();
        localTypedArray.getValue(13, localTypedValue1);
        if (localTypedValue1.type != 17)
          break label414;
        m = localTypedValue1.data;
        this.itemShowAsAction = m;
        this.itemListenerMethodName = localTypedArray.getString(12);
        this.itemActionViewLayout = localTypedArray.getResourceId(14, 0);
        TypedValue localTypedValue2 = new TypedValue();
        localTypedArray.getValue(15, localTypedValue2);
        if (localTypedValue2.type != 3)
          break label420;
        str1 = localTypedValue2.string.toString();
        this.itemActionViewClassName = str1;
        TypedValue localTypedValue3 = new TypedValue();
        localTypedArray.getValue(16, localTypedValue3);
        if (localTypedValue3.type != 3)
          break label426;
        str2 = localTypedValue3.string.toString();
        label331: this.itemActionProviderClassName = str2;
        if (this.itemActionProviderClassName == null)
          break label432;
        label344: if ((i == 0) || (this.itemActionViewLayout != 0) || (this.itemActionViewClassName != null))
          break label437;
      }
    for (this.itemActionProvider = ((ActionProvider)newInstance(this.itemActionProviderClassName, MenuInflater.access$200(), MenuInflater.access$300(this.this$0))); ; this.itemActionProvider = null)
    {
      localTypedArray.recycle();
      this.itemAdded = false;
      return;
      n = 0;
      break;
      this.itemCheckable = this.groupCheckable;
      break label153;
      label414: m = -1;
      break label224;
      label420: str1 = null;
      break label288;
      label426: str2 = null;
      break label331;
      label432: i = 0;
      break label344;
      label437: if (i != 0)
        Log.w("MenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
    }
  }

  public void resetGroup()
  {
    this.groupId = 0;
    this.groupCategory = 0;
    this.groupOrder = 0;
    this.groupCheckable = 0;
    this.groupVisible = true;
    this.groupEnabled = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater.MenuState
 * JD-Core Version:    0.6.2
 */