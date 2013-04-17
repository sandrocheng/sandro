package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseListView<T> extends BaseView
  implements AdapterView.OnItemClickListener, IRetryListener
{
  protected LinearLayout dIYAddLayout;
  protected BaseAdapter mAdapter;
  protected List<T> mDataList = new ArrayList();
  protected View mFooterView;
  private LinearLayout mHeaderLinear;
  protected View mHeaderView;
  protected PinnedHeaderListView mListView;
  private View mMainListView;
  protected boolean mReloadData = true;

  public BaseListView(Context paramContext)
  {
    super(paramContext);
  }

  public abstract BaseAdapter createAdapter();

  public BaseAdapter getAdapter()
  {
    return this.mAdapter;
  }

  public View getCustomView()
  {
    if (this.mMainListView == null)
    {
      this.mMainListView = LayoutInflater.from(this.mContext).inflate(2130903164, null);
      this.dIYAddLayout = ((LinearLayout)this.mMainListView.findViewById(2131231062));
      View localView = getDIYFrameLayout();
      if (localView != null)
      {
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.dIYAddLayout.addView(localView, localLayoutParams);
      }
    }
    return this.mMainListView;
  }

  public View getDIYFrameLayout()
  {
    return null;
  }

  public List<T> getDataList()
  {
    return this.mDataList;
  }

  public View getFooterView()
  {
    return null;
  }

  public View getHeaderView()
  {
    return null;
  }

  public ListView getListView()
  {
    return this.mListView;
  }

  public boolean isHasRefreshHeader()
  {
    return this.mListView.isRefreshable;
  }

  public boolean isReloadData()
  {
    return this.mReloadData;
  }

  public void onCancel()
  {
  }

  public void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public void onCreate()
  {
    super.onCreate();
    this.mListView = ((PinnedHeaderListView)this.mMainListView.findViewById(2131231059));
    this.mListView.setOnItemClickListener(this);
    if (this.mDataList == null)
      this.mDataList = new ArrayList();
    this.mAdapter = createAdapter();
    this.mHeaderView = getHeaderView();
    if (this.mHeaderView != null)
      this.mListView.addHeaderView(this.mHeaderView);
    this.mFooterView = getFooterView();
    if (this.mFooterView != null)
      this.mListView.addFooterView(this.mFooterView);
    this.mListView.setAdapter(this.mAdapter);
  }

  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    return false;
  }

  public void onRetry()
  {
  }

  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    this.mAdapter = paramBaseAdapter;
    this.mListView.setAdapter(paramBaseAdapter);
  }

  public void setDataList(List<T> paramList)
  {
    this.mDataList = paramList;
  }

  protected void setDivider(Drawable paramDrawable)
  {
    this.mListView.setDivider(paramDrawable);
  }

  public void setOnRefreshListener(PinnedHeaderListView.OnRefreshListener paramOnRefreshListener)
  {
    this.mListView.setOnRefreshListener(paramOnRefreshListener);
  }

  public void setReloadData(boolean paramBoolean)
  {
    this.mReloadData = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseListView
 * JD-Core Version:    0.6.2
 */