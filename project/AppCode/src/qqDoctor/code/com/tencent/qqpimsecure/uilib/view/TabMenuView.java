package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TabMenuView extends PopupWindow
  implements AdapterView.OnItemClickListener
{
  private final int columnNum = 4;
  private MenuBodyAdapter mBodyAdapter;
  private Map<MenuModel, MenuBodyAdapter> mBodyAdapterMap;
  private Context mContext;
  private List<MenuModel> mDataList;
  private Map<MenuModel, List<MenuModel>> mDataMap;
  private LinearLayout mLayout;
  private GridView mMenuBody;
  private GridView mMenuTab;
  private AdapterView.OnItemClickListener mOnBodyItemClickListener;
  private MenuTabAdapter mTabAdapter;
  private List<MenuModel> mTabDataList;

  public TabMenuView(Context paramContext, List<MenuModel> paramList, AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mOnBodyItemClickListener = paramOnItemClickListener;
    this.mDataList = paramList;
    initMenu();
    initMenuBody();
    this.mBodyAdapter = new MenuBodyAdapter(this.mContext, this.mDataList);
    setBodyAdapter(this.mBodyAdapter);
  }

  public TabMenuView(Context paramContext, Map<MenuModel, List<MenuModel>> paramMap, AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mOnBodyItemClickListener = paramOnItemClickListener;
    this.mDataMap = paramMap;
    this.mBodyAdapterMap = new HashMap();
    initMenu();
    initMenuTab();
    initMenuBody();
    getDataListFromMap();
    this.mTabAdapter = new MenuTabAdapter(this.mContext, this.mTabDataList);
    this.mMenuTab.setAdapter(this.mTabAdapter);
    this.mMenuTab.setOnItemClickListener(new TabMenuView.1(this));
    if ((this.mBodyAdapterMap != null) && (this.mBodyAdapterMap.size() != 0))
    {
      this.mBodyAdapter = ((MenuBodyAdapter)this.mBodyAdapterMap.get(this.mTabDataList.get(0)));
      setBodyAdapter(this.mBodyAdapter);
    }
  }

  private void getDataListFromMap()
  {
    Set localSet = this.mDataMap.keySet();
    this.mTabDataList = new ArrayList(localSet);
    this.mBodyAdapterMap = new HashMap();
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
    {
      MenuModel localMenuModel = (MenuModel)localIterator.next();
      this.mBodyAdapterMap.put(localMenuModel, new MenuBodyAdapter(this.mContext, (List)this.mDataMap.get(localMenuModel)));
    }
  }

  private void initMenu()
  {
    this.mLayout = new LinearLayout(this.mContext);
    this.mLayout.setOrientation(1);
    setContentView(this.mLayout);
    setWidth(-1);
    setHeight(-2);
    setBackgroundDrawable(this.mContext.getResources().getDrawable(2130838002));
    setAnimationStyle(2131492921);
    setFocusable(true);
    this.mLayout.setFocusableInTouchMode(true);
    this.mLayout.setOnKeyListener(new TabMenuView.2(this));
  }

  private void initMenuBody()
  {
    this.mMenuBody = new GridView(this.mContext);
    this.mMenuBody.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.mMenuBody.setNumColumns(4);
    this.mMenuBody.setStretchMode(2);
    this.mMenuBody.setVerticalSpacing(10);
    this.mMenuBody.setHorizontalSpacing(10);
    this.mMenuBody.setPadding(10, 10, 10, 10);
    this.mMenuBody.setGravity(17);
    this.mMenuBody.setOnItemClickListener(this);
    this.mLayout.addView(this.mMenuBody);
  }

  private void initMenuTab()
  {
    this.mMenuTab = new GridView(this.mContext);
    this.mMenuTab.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.mMenuTab.setNumColumns(4);
    this.mMenuTab.setStretchMode(2);
    this.mMenuTab.setVerticalSpacing(1);
    this.mMenuTab.setHorizontalSpacing(1);
    this.mMenuTab.setGravity(17);
    this.mLayout.addView(this.mMenuTab);
  }

  public MenuBodyAdapter getBodyAdapter()
  {
    return this.mBodyAdapter;
  }

  public List<MenuModel> getDataList()
  {
    return this.mDataList;
  }

  public MenuTabAdapter getTabAdapter()
  {
    return this.mTabAdapter;
  }

  public List<MenuModel> getTabDataList()
  {
    return this.mTabDataList;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.mOnBodyItemClickListener.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
    dismiss();
  }

  public void setBodyAdapter(MenuBodyAdapter paramMenuBodyAdapter)
  {
    this.mBodyAdapter = paramMenuBodyAdapter;
    this.mMenuBody.setAdapter(paramMenuBodyAdapter);
  }

  public void setDataList(List<MenuModel> paramList)
  {
    this.mDataList = paramList;
  }

  public void setTabDataList(List<MenuModel> paramList)
  {
    this.mTabDataList = paramList;
  }

  public void setTabIndex(int paramInt)
  {
    this.mMenuTab.setSelection(paramInt);
  }

  public abstract class MenuAdapter extends BaseAdapter
  {
    protected Context mContext;
    protected List<TabMenuView.MenuModel> mDataList = new ArrayList();

    public MenuAdapter(List<TabMenuView.MenuModel> arg2)
    {
      Object localObject1;
      this.mContext = localObject1;
      Object localObject2;
      this.mDataList = localObject2;
    }

    public View createView(int paramInt1, View paramView, int paramInt2, boolean paramBoolean)
    {
      TabMenuView.MenuHolder localMenuHolder;
      TabMenuView.MenuModel localMenuModel;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(this.mContext).inflate(2130903103, null);
        localMenuHolder = new TabMenuView.MenuHolder();
        localMenuHolder.mTitleText = ((TextView)paramView.findViewById(2131230748));
        localMenuHolder.mIconImage = ((ImageView)paramView.findViewById(2131230869));
        paramView.setTag(localMenuHolder);
        localMenuModel = (TabMenuView.MenuModel)this.mDataList.get(paramInt1);
        localMenuHolder.mTitleText.setText(localMenuModel.getTitle());
        if (!TabMenuView.MenuModel.access$200(localMenuModel))
          break label149;
        localMenuHolder.mTitleText.setTextColor(this.mContext.getResources().getColor(2131296280));
      }
      while (true)
      {
        if (paramBoolean)
          localMenuHolder.mIconImage.setImageDrawable(localMenuModel.getIcon());
        return paramView;
        localMenuHolder = (TabMenuView.MenuHolder)paramView.getTag();
        break;
        label149: localMenuHolder.mTitleText.setTextColor(this.mContext.getResources().getColor(2131296257));
      }
    }

    public int getCount()
    {
      return this.mDataList.size();
    }

    public List<TabMenuView.MenuModel> getDataList()
    {
      return this.mDataList;
    }

    public Object getItem(int paramInt)
    {
      return this.mDataList.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public void notifyDataSetChanged()
    {
      if (this.mDataList.size() < 4)
        TabMenuView.this.mMenuBody.setNumColumns(this.mDataList.size());
      while (true)
      {
        super.notifyDataSetChanged();
        return;
        TabMenuView.this.mMenuBody.setNumColumns(4);
      }
    }

    public void setDataList(List<TabMenuView.MenuModel> paramList)
    {
      this.mDataList = paramList;
    }
  }

  public class MenuBodyAdapter extends TabMenuView.MenuAdapter
  {
    public MenuBodyAdapter(List<TabMenuView.MenuModel> arg2)
    {
      super(localContext, localList);
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return createView(paramInt, paramView, 2130903103, true);
    }
  }

  public static class MenuHolder
  {
    public ImageView mIconImage;
    public TextView mTitleText;
  }

  public static class MenuModel
  {
    private boolean disable;
    private Drawable icon;
    private int id;
    private String title;

    public Drawable getIcon()
    {
      return this.icon;
    }

    public int getId()
    {
      return this.id;
    }

    public String getTitle()
    {
      return this.title;
    }

    public boolean isDisable()
    {
      return this.disable;
    }

    public void setDisable(boolean paramBoolean)
    {
      this.disable = paramBoolean;
    }

    public void setIcon(Drawable paramDrawable)
    {
      this.icon = paramDrawable;
    }

    public void setId(int paramInt)
    {
      this.id = paramInt;
    }

    public void setTitle(String paramString)
    {
      this.title = paramString;
    }
  }

  public class MenuTabAdapter extends TabMenuView.MenuAdapter
  {
    public MenuTabAdapter(List<TabMenuView.MenuModel> arg2)
    {
      super(localContext, localList);
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return createView(paramInt, paramView, 2130903103, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TabMenuView
 * JD-Core Version:    0.6.2
 */