package com.actionbarsherlock.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class MenuPopupHelper$MenuAdapter extends BaseAdapter
{
  private MenuBuilder mAdapterMenu;
  private int mExpandedIndex = -1;

  public MenuPopupHelper$MenuAdapter(MenuPopupHelper paramMenuPopupHelper, MenuBuilder paramMenuBuilder)
  {
    this.mAdapterMenu = paramMenuBuilder;
    registerDataSetObserver(new MenuPopupHelper.ExpandedIndexObserver(paramMenuPopupHelper, null));
    findExpandedIndex();
  }

  void findExpandedIndex()
  {
    MenuItemImpl localMenuItemImpl = MenuPopupHelper.access$400(this.this$0).getExpandedItem();
    int j;
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = MenuPopupHelper.access$400(this.this$0).getNonActionItems();
      int i = localArrayList.size();
      j = 0;
      if (j < i)
        if ((MenuItemImpl)localArrayList.get(j) != localMenuItemImpl);
    }
    for (this.mExpandedIndex = j; ; this.mExpandedIndex = -1)
    {
      return;
      j++;
      break;
    }
  }

  public int getCount()
  {
    ArrayList localArrayList;
    if (MenuPopupHelper.access$200(this.this$0))
    {
      localArrayList = this.mAdapterMenu.getNonActionItems();
      if (this.mExpandedIndex >= 0)
        break label43;
    }
    label43: for (int i = localArrayList.size(); ; i = -1 + localArrayList.size())
    {
      return i;
      localArrayList = this.mAdapterMenu.getVisibleItems();
      break;
    }
  }

  public MenuItemImpl getItem(int paramInt)
  {
    if (MenuPopupHelper.access$200(this.this$0));
    for (ArrayList localArrayList = this.mAdapterMenu.getNonActionItems(); ; localArrayList = this.mAdapterMenu.getVisibleItems())
    {
      if ((this.mExpandedIndex >= 0) && (paramInt >= this.mExpandedIndex))
        paramInt++;
      return (MenuItemImpl)localArrayList.get(paramInt);
    }
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = MenuPopupHelper.access$300(this.this$0).inflate(MenuPopupHelper.ITEM_LAYOUT, paramViewGroup, false); ; localView = paramView)
    {
      MenuView.ItemView localItemView = (MenuView.ItemView)localView;
      if (this.this$0.mForceShowIcon)
        ((ListMenuItemView)localView).setForceShowIcon(true);
      localItemView.initialize(getItem(paramInt), 0);
      return localView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper.MenuAdapter
 * JD-Core Version:    0.6.2
 */