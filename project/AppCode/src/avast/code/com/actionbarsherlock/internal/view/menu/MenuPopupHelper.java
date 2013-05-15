package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.MenuItem;

public class MenuPopupHelper
  implements View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, View_OnAttachStateChangeListener, MenuPresenter
{
  static final int ITEM_LAYOUT = R.layout.abs__popup_menu_item_layout;
  private MenuPopupHelper.MenuAdapter mAdapter;
  private View mAnchorView;
  private Context mContext;
  boolean mForceShowIcon;
  private LayoutInflater mInflater;
  private ViewGroup mMeasureParent;
  private MenuBuilder mMenu;
  private boolean mOverflowOnly;
  private IcsListPopupWindow mPopup;
  private int mPopupMaxWidth;
  private MenuPresenter.Callback mPresenterCallback;
  private ViewTreeObserver mTreeObserver;

  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    this(paramContext, paramMenuBuilder, null, false);
  }

  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder, View paramView)
  {
    this(paramContext, paramMenuBuilder, paramView, false);
  }

  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.mMenu = paramMenuBuilder;
    this.mOverflowOnly = paramBoolean;
    Resources localResources = paramContext.getResources();
    this.mPopupMaxWidth = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
    this.mAnchorView = paramView;
    paramMenuBuilder.addMenuPresenter(this);
  }

  private int measureContentWidth(ListAdapter paramListAdapter)
  {
    int i = View.MeasureSpec.makeMeasureSpec(0, 0);
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = paramListAdapter.getCount();
    int m = 0;
    int n = 0;
    View localView1 = null;
    int i1 = 0;
    int i2;
    if (m < k)
    {
      i2 = paramListAdapter.getItemViewType(m);
      if (i2 == n)
        break label129;
    }
    for (View localView2 = null; ; localView2 = localView1)
    {
      if (this.mMeasureParent == null)
        this.mMeasureParent = new FrameLayout(this.mContext);
      localView1 = paramListAdapter.getView(m, localView2, this.mMeasureParent);
      localView1.measure(i, j);
      i1 = Math.max(i1, localView1.getMeasuredWidth());
      m++;
      n = i2;
      break;
      return i1;
      label129: i2 = n;
    }
  }

  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public void dismiss()
  {
    if (isShowing())
      this.mPopup.dismiss();
  }

  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public boolean flagActionItems()
  {
    return false;
  }

  public int getId()
  {
    return 0;
  }

  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
  }

  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
  }

  public boolean isShowing()
  {
    if ((this.mPopup != null) && (this.mPopup.isShowing()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (paramMenuBuilder != this.mMenu);
    while (true)
    {
      return;
      dismiss();
      if (this.mPresenterCallback != null)
        this.mPresenterCallback.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }

  public void onDismiss()
  {
    this.mPopup = null;
    this.mMenu.close();
    if (this.mTreeObserver != null)
    {
      if (!this.mTreeObserver.isAlive())
        this.mTreeObserver = this.mAnchorView.getViewTreeObserver();
      this.mTreeObserver.removeGlobalOnLayoutListener(this);
      this.mTreeObserver = null;
    }
    ((View_HasStateListenerSupport)this.mAnchorView).removeOnAttachStateChangeListener(this);
  }

  public void onGlobalLayout()
  {
    if (isShowing())
    {
      View localView = this.mAnchorView;
      if ((localView != null) && (localView.isShown()))
        break label28;
      dismiss();
    }
    while (true)
    {
      return;
      label28: if (isShowing())
        this.mPopup.show();
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    MenuPopupHelper.MenuAdapter localMenuAdapter = this.mAdapter;
    MenuPopupHelper.MenuAdapter.access$000(localMenuAdapter).performItemAction(localMenuAdapter.getItem(paramInt), 0);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 1;
    if ((paramKeyEvent.getAction() == i) && (paramInt == 82))
      dismiss();
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
  }

  public Parcelable onSaveInstanceState()
  {
    return null;
  }

  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    boolean bool1 = true;
    MenuPopupHelper localMenuPopupHelper;
    int j;
    if (paramSubMenuBuilder.hasVisibleItems())
    {
      localMenuPopupHelper = new MenuPopupHelper(this.mContext, paramSubMenuBuilder, this.mAnchorView, false);
      localMenuPopupHelper.setCallback(this.mPresenterCallback);
      int i = paramSubMenuBuilder.size();
      j = 0;
      if (j >= i)
        break label126;
      MenuItem localMenuItem = paramSubMenuBuilder.getItem(j);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null));
    }
    label126: for (boolean bool2 = bool1; ; bool2 = false)
    {
      localMenuPopupHelper.setForceShowIcon(bool2);
      if (localMenuPopupHelper.tryShow())
        if (this.mPresenterCallback != null)
          this.mPresenterCallback.onOpenSubMenu(paramSubMenuBuilder);
      while (true)
      {
        return bool1;
        j++;
        break;
        bool1 = false;
      }
    }
  }

  public void onViewAttachedToWindow(View paramView)
  {
  }

  public void onViewDetachedFromWindow(View paramView)
  {
    if (this.mTreeObserver != null)
    {
      if (!this.mTreeObserver.isAlive())
        this.mTreeObserver = paramView.getViewTreeObserver();
      this.mTreeObserver.removeGlobalOnLayoutListener(this);
    }
    ((View_HasStateListenerSupport)paramView).removeOnAttachStateChangeListener(this);
  }

  public void setAnchorView(View paramView)
  {
    this.mAnchorView = paramView;
  }

  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    this.mPresenterCallback = paramCallback;
  }

  public void setForceShowIcon(boolean paramBoolean)
  {
    this.mForceShowIcon = paramBoolean;
  }

  public void show()
  {
    if (!tryShow())
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
  }

  public boolean tryShow()
  {
    boolean bool = true;
    this.mPopup = new IcsListPopupWindow(this.mContext, null, R.attr.popupMenuStyle);
    this.mPopup.setOnDismissListener(this);
    this.mPopup.setOnItemClickListener(this);
    this.mAdapter = new MenuPopupHelper.MenuAdapter(this, this.mMenu);
    this.mPopup.setAdapter(this.mAdapter);
    this.mPopup.setModal(bool);
    View localView = this.mAnchorView;
    if (localView != null)
    {
      ViewTreeObserver localViewTreeObserver = this.mTreeObserver;
      int i = 0;
      if (localViewTreeObserver == null)
        i = bool;
      this.mTreeObserver = localView.getViewTreeObserver();
      if (i != 0)
        this.mTreeObserver.addOnGlobalLayoutListener(this);
      ((View_HasStateListenerSupport)localView).addOnAttachStateChangeListener(this);
      this.mPopup.setAnchorView(localView);
      this.mPopup.setContentWidth(Math.min(measureContentWidth(this.mAdapter), this.mPopupMaxWidth));
      this.mPopup.setInputMethodMode(2);
      this.mPopup.show();
      this.mPopup.getListView().setOnKeyListener(this);
    }
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  public void updateMenuView(boolean paramBoolean)
  {
    if (this.mAdapter != null)
      this.mAdapter.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper
 * JD-Core Version:    0.6.2
 */