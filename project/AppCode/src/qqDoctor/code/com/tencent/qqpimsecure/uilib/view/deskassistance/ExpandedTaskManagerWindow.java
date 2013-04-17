package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;
import com.tencent.tmsecure.module.software.AppEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kw;
import lv;
import sl;
import zk;
import zo;

public class ExpandedTaskManagerWindow extends LinearLayout
  implements View.OnClickListener
{
  private Context mContext;
  private Drawable mDefaultDrawable;
  private AutoLoadingView mInsideLoadingView;
  private TextView mLoadingLable;
  private View mMainView;
  private AutoLoadingView mOutSideLoadingView;
  zo mRunningProcessServer = zo.a();
  private ScaleAnimation mScaleAnimation = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
  private GridView mTaskGridView;
  TaskManagerDataAdapter mTaskManagerDataAdapter;

  public ExpandedTaskManagerWindow(Context paramContext, DeskAssistanceExpandedWindow.MFrameWindowObserver paramMFrameWindowObserver)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mMainView = LayoutInflater.from(paramContext).inflate(2130903134, null);
    this.mTaskGridView = ((GridView)this.mMainView.findViewById(2131230974));
    int i = (int)(0.5F + 55.0F * paramContext.getResources().getDisplayMetrics().density);
    this.mTaskGridView.setColumnWidth(i);
    this.mDefaultDrawable = this.mContext.getResources().getDrawable(17301651);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    this.mMainView.setVisibility(0);
    addView(this.mMainView, localLayoutParams);
  }

  private boolean isAppCloseAble(kw paramkw)
  {
    boolean bool = true;
    if (this.mContext.getPackageName().compareTo(paramkw.getPackageName()) == 0)
      bool = false;
    return bool;
  }

  private void relayoutTaskGridView()
  {
  }

  public void onClick(View paramView)
  {
  }

  public void refreshRunnAppInfo()
  {
    if ((this.mTaskManagerDataAdapter != null) && (this.mTaskManagerDataAdapter.isIgnoreNextReload(true)))
      return;
    List localList = zo.a().h();
    if ((this.mInsideLoadingView == null) && (this.mOutSideLoadingView == null))
    {
      this.mInsideLoadingView = ((AutoLoadingView)this.mMainView.findViewById(2131230972));
      this.mOutSideLoadingView = ((AutoLoadingView)this.mMainView.findViewById(2131230971));
      this.mLoadingLable = ((TextView)this.mMainView.findViewById(2131230973));
    }
    if (this.mInsideLoadingView != null)
      this.mInsideLoadingView.setVisibility(8);
    if (this.mOutSideLoadingView != null)
      this.mOutSideLoadingView.setVisibility(8);
    if (this.mLoadingLable != null)
      this.mLoadingLable.setVisibility(8);
    ArrayList localArrayList = new ArrayList();
    int i = localList.size();
    for (int j = 0; j < i; j++)
    {
      kw localkw = (kw)localList.get(j);
      RunningAppTask localRunningAppTask = new RunningAppTask(localkw);
      localRunningAppTask.mCloseAble = isAppCloseAble(localkw);
      localArrayList.add(localRunningAppTask);
    }
    Collections.sort(localArrayList, new ComparatorApp(null));
    if (this.mTaskManagerDataAdapter == null)
      this.mTaskManagerDataAdapter = new TaskManagerDataAdapter(this.mContext, localArrayList, this.mRunningProcessServer);
    while (true)
    {
      this.mTaskGridView.setAdapter(this.mTaskManagerDataAdapter);
      this.mTaskGridView.setOnItemClickListener(new ExpandedTaskManagerWindow.1(this));
      this.mTaskManagerDataAdapter.notifyDataSetChanged();
      relayoutTaskGridView();
      break;
      this.mTaskManagerDataAdapter.setDataList(localArrayList);
    }
  }

  class ComparatorApp
    implements Comparator<ExpandedTaskManagerWindow.RunningAppTask>
  {
    private ComparatorApp()
    {
    }

    public int compare(ExpandedTaskManagerWindow.RunningAppTask paramRunningAppTask1, ExpandedTaskManagerWindow.RunningAppTask paramRunningAppTask2)
    {
      int i = -1;
      if (paramRunningAppTask2.mCloseAble == paramRunningAppTask1.mCloseAble)
        if (paramRunningAppTask2.mAppInfo.isSystemApp() == paramRunningAppTask1.mAppInfo.isSystemApp())
          i = 0;
      while (true)
      {
        return i;
        if (paramRunningAppTask1.mAppInfo.isSystemApp())
        {
          i = 1;
          continue;
          if (!paramRunningAppTask1.mCloseAble)
            i = 1;
        }
      }
    }
  }

  class RunningAppTask
  {
    public kw mAppInfo;
    public boolean mCloseAble;
    private Drawable mIcon;

    public RunningAppTask(kw arg2)
    {
      AppEntity localAppEntity;
      this.mAppInfo = new kw(localAppEntity);
      this.mCloseAble = true;
    }

    public Drawable getIcon()
    {
      return this.mIcon;
    }

    public void setIcon(Drawable paramDrawable)
    {
      this.mIcon = paramDrawable;
    }
  }

  public class TaskManagerDataAdapter extends BaseAdapter
  {
    private List<ExpandedTaskManagerWindow.RunningAppTask> mDataList;
    private boolean mIgnoreNextReload = false;
    private sl mImageLoaderService;
    private LayoutInflater mInflater;
    private List<String> mLoadIconTaskList = new ArrayList();
    private zk mRunningProcessCleaner;

    public TaskManagerDataAdapter(List<ExpandedTaskManagerWindow.RunningAppTask> paramzo, zo arg3)
    {
      this.mInflater = LayoutInflater.from(paramzo);
      Object localObject1;
      this.mDataList = localObject1;
      Object localObject2;
      ExpandedTaskManagerWindow.this.mRunningProcessServer = localObject2;
      this.mImageLoaderService = new sl();
      this.mRunningProcessCleaner = new zk(paramzo, null);
    }

    private void iconLoadFinishCallBack(String paramString)
    {
      notifyDataSetChanged();
      removeIconTaskFromList(paramString);
    }

    private boolean isLoadingIcon(String paramString)
    {
      int i = this.mLoadIconTaskList.size();
      int j = 0;
      if (j < i)
        if (((String)this.mLoadIconTaskList.get(j)).compareTo(paramString) != 0);
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        j++;
        break;
      }
    }

    private void removeIconTaskFromList(String paramString)
    {
      int i = this.mLoadIconTaskList.size();
      for (int j = 0; ; j++)
        if (j < i)
        {
          if (((String)this.mLoadIconTaskList.get(j)).compareTo(paramString) == 0)
            this.mLoadIconTaskList.remove(j);
        }
        else
          return;
    }

    private void setImageIcon(ViewHolder paramViewHolder, ExpandedTaskManagerWindow.RunningAppTask paramRunningAppTask)
    {
      paramViewHolder.iv.setTag(paramRunningAppTask.mAppInfo.getPackageName());
      Drawable localDrawable = paramRunningAppTask.getIcon();
      if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable)));
      for (Bitmap localBitmap = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap = null)
      {
        if (((localBitmap == null) || (localBitmap.isRecycled()) || (paramRunningAppTask.getIcon().equals(Integer.valueOf(17301651)))) && (this.mImageLoaderService != null))
        {
          paramViewHolder.iv.setImageResource(17301651);
          loadImages(paramRunningAppTask);
        }
        while (true)
        {
          return;
          if (paramRunningAppTask.getIcon() == null)
            paramRunningAppTask.setIcon(ExpandedTaskManagerWindow.this.mDefaultDrawable);
          else
            paramViewHolder.iv.setImageDrawable(paramRunningAppTask.getIcon());
        }
      }
    }

    public void closeApp(int paramInt)
    {
      ExpandedTaskManagerWindow.RunningAppTask localRunningAppTask = (ExpandedTaskManagerWindow.RunningAppTask)this.mDataList.get(paramInt);
      if ((localRunningAppTask != null) && (localRunningAppTask.mCloseAble))
      {
        new Thread(new ExpandedTaskManagerWindow.TaskManagerDataAdapter.1(this, localRunningAppTask)).start();
        this.mDataList.remove(paramInt);
        this.mIgnoreNextReload = true;
      }
    }

    public int getCount()
    {
      return this.mDataList.size();
    }

    public List<ExpandedTaskManagerWindow.RunningAppTask> getDataList()
    {
      return this.mDataList;
    }

    public Object getItem(int paramInt)
    {
      return Integer.valueOf(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      ExpandedTaskManagerWindow.RunningAppTask localRunningAppTask = (ExpandedTaskManagerWindow.RunningAppTask)this.mDataList.get(paramInt);
      ViewHolder localViewHolder2;
      if (paramView == null)
      {
        ViewHolder localViewHolder1 = new ViewHolder(null);
        paramView = this.mInflater.inflate(2130903133, null);
        localViewHolder1.iv = ((ImageView)paramView.findViewById(2131230968));
        localViewHolder1.appName = ((TextView)paramView.findViewById(2131230969));
        paramView.setTag(localViewHolder1);
        localViewHolder2 = localViewHolder1;
        localViewHolder2.appName.setText(localRunningAppTask.mAppInfo.getAppName());
        setImageIcon(localViewHolder2, localRunningAppTask);
        if (!localRunningAppTask.mCloseAble)
          break label130;
        paramView.setClickable(false);
      }
      while (true)
      {
        return paramView;
        localViewHolder2 = (ViewHolder)paramView.getTag();
        break;
        label130: paramView.setClickable(true);
      }
    }

    public boolean isIgnoreNextReload(boolean paramBoolean)
    {
      boolean bool = this.mIgnoreNextReload;
      if (paramBoolean)
        this.mIgnoreNextReload = false;
      return bool;
    }

    public void loadImages(ExpandedTaskManagerWindow.RunningAppTask paramRunningAppTask)
    {
      if (isLoadingIcon(paramRunningAppTask.mAppInfo.getPackageName()));
      while (true)
      {
        return;
        lv locallv = new lv();
        locallv.b = 2;
        locallv.g = paramRunningAppTask.mAppInfo.getPackageName().hashCode();
        locallv.d = paramRunningAppTask.mAppInfo.getPackageName();
        locallv.a = 0;
        locallv.h = paramRunningAppTask;
        locallv.i = new ExpandedTaskManagerWindow.TaskManagerDataAdapter.2(this);
        this.mImageLoaderService.b(locallv);
        this.mLoadIconTaskList.add(paramRunningAppTask.mAppInfo.getPackageName());
      }
    }

    public void setDataList(List<ExpandedTaskManagerWindow.RunningAppTask> paramList)
    {
      this.mDataList = paramList;
    }

    class ViewHolder
    {
      TextView appName;
      ImageView iv;

      private ViewHolder()
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedTaskManagerWindow
 * JD-Core Version:    0.6.2
 */