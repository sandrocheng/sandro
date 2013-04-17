package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.DeskAssistanceGallery;
import com.tencent.qqpimsecure.uilib.view.MiniProgressBarView;
import ho;
import java.util.ArrayList;
import java.util.List;
import nd;
import vh;
import vh.b;
import zk;
import zk.b;
import zn;
import zo;

public class ExpandedOptimizeWindow extends LinearLayout
  implements View.OnClickListener, View.OnTouchListener, AdapterView.OnItemSelectedListener
{
  private final int MSG_RESET_UI = 5;
  private final int MSG_SimulationEvent = 6;
  private long mCanReleaseRamSize;
  private zk.b mCleanerCallback = new ExpandedOptimizeWindow.1(this);
  private Context mContext;
  private DeskAssistanceGallery mGallery;
  private Window_Handler mHandler = null;
  private DeskAssistanceExpandedWindow.MFrameWindowObserver mMFrameWindowObserver;
  private View mMainView;
  private MiniProgressBarView mMiniProgressBarView;
  private vh.b mOnGetMemoryDelayListener = new ExpandedOptimizeWindow.2(this);
  private LinearLayout mOptimiseBar;
  private boolean mOptimizeFinish = true;
  private TextView mOptimizeResultText;
  private boolean mPreOptimizeCalFinish = false;
  private TextView mRamText;
  private View mRunnAppButton;
  private TextView mRunnAppLable;
  private ImageView mRunnAppMore;
  private TextView mRunnAppText;
  private zk mRunningProcessCleaner;
  private zo mRunningProcessServer;
  private ImageView mSetting1Dot;
  private ImageView mSetting2Dot;
  private DeskAssistanceSettingView1 mSettingView1;
  private DeskAssistanceSettingView2 mSettingView2;
  private List<View> mSettingViewList = new ArrayList();
  private SettingViewListAdapter mSettingViewListAdapter = new SettingViewListAdapter();
  private ButtonView mStartOptimizeBtn;
  private boolean mStopSimulationSettingViewMove = false;

  public ExpandedOptimizeWindow(Context paramContext, DeskAssistanceExpandedWindow.MFrameWindowObserver paramMFrameWindowObserver)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mMFrameWindowObserver = paramMFrameWindowObserver;
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    this.mMainView = LayoutInflater.from(paramContext).inflate(2130903131, null);
    this.mRunnAppButton = this.mMainView.findViewById(2131230950);
    this.mRamText = ((TextView)this.mMainView.findViewById(2131230949));
    this.mRamText.getPaint().setFakeBoldText(true);
    this.mRunnAppText = ((TextView)this.mMainView.findViewById(2131230951));
    this.mRunnAppText.getPaint().setFakeBoldText(true);
    this.mRunnAppLable = ((TextView)this.mMainView.findViewById(2131230953));
    this.mRunnAppMore = ((ImageView)this.mMainView.findViewById(2131230952));
    this.mOptimizeResultText = ((TextView)this.mMainView.findViewById(2131230955));
    this.mStartOptimizeBtn = ((ButtonView)this.mMainView.findViewById(2131230954));
    this.mMiniProgressBarView = ((MiniProgressBarView)this.mMainView.findViewById(2131230947));
    this.mStartOptimizeBtn.setOnClickListener(this);
    this.mRunningProcessServer = zo.a();
    this.mOptimiseBar = ((LinearLayout)this.mMainView.findViewById(2131230948));
    this.mMainView.setOnTouchListener(this);
    this.mRunnAppButton.setOnTouchListener(this);
    this.mOptimiseBar.setOnTouchListener(this);
    this.mGallery = ((DeskAssistanceGallery)((LinearLayout)this.mMainView.findViewById(2131230937)).findViewById(2131230956));
    this.mGallery.setSpacing(20);
    this.mGallery.setOnItemSelectedListener(this);
    this.mGallery.setAdapter(this.mSettingViewListAdapter);
    this.mSetting1Dot = ((ImageView)this.mMainView.findViewById(2131230957));
    this.mSetting2Dot = ((ImageView)this.mMainView.findViewById(2131230958));
    addView(this.mMainView, localLayoutParams);
    resetUi();
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.mStartOptimizeBtn.requestFocus();
    initSlideViewList();
    this.mGallery.setSelection(0);
    this.mGallery.setSelected(true);
    updateOptimizeWindowRamUsage(vh.g());
    updateRunningAppText();
  }

  private void changeRunnAppButton(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mRunnAppText.setTextColor(-16482613);
      this.mRunnAppLable.setTextColor(-16482613);
      this.mRunnAppMore.setImageResource(2130838160);
    }
    while (true)
    {
      return;
      this.mRunnAppText.setTextColor(-13421773);
      this.mRunnAppLable.setTextColor(-11447983);
      this.mRunnAppMore.setImageResource(2130838159);
    }
  }

  private void initSlideViewList()
  {
    this.mSettingViewList.clear();
    this.mSettingView1 = new DeskAssistanceSettingView1(this.mContext);
    this.mSettingViewList.add(this.mSettingView1);
    this.mSettingView2 = new DeskAssistanceSettingView2(this.mContext);
    this.mSettingViewList.add(this.mSettingView2);
    this.mSettingViewListAdapter.notifyDataSetChanged();
  }

  private void setRamUsageProgress()
  {
    if (this.mOptimizeFinish == true)
    {
      int i = vh.g();
      this.mMiniProgressBarView.setProgressWithAnim(i);
    }
  }

  private void simulationSettingViewMove()
  {
    if (this.mHandler == null)
      this.mHandler = new Window_Handler(null);
    this.mStopSimulationSettingViewMove = false;
    new Thread(new ExpandedOptimizeWindow.3(this)).start();
  }

  private void startOptimize()
  {
    this.mStartOptimizeBtn.setButtonEnabled(false);
    this.mStartOptimizeBtn.setText(this.mContext.getString(2131429673));
    this.mPreOptimizeCalFinish = false;
    this.mOptimizeFinish = false;
    if (this.mHandler == null)
      this.mHandler = new Window_Handler(null);
    if (this.mRunningProcessCleaner == null)
      this.mRunningProcessCleaner = new zk(this.mContext, this.mCleanerCallback);
    new Thread(new zn(this.mRunningProcessCleaner)).start();
    new ExpandedOptimizeWindow.4(this);
    this.mMiniProgressBarView.setProgressWithAnim(10, null);
  }

  public void notifyWindowShowing(boolean paramBoolean)
  {
    vh.a().a(this.mOnGetMemoryDelayListener);
    if (!ho.a().dg())
    {
      if (!paramBoolean)
        break label41;
      this.mGallery.setSelection(1);
      this.mStopSimulationSettingViewMove = false;
      simulationSettingViewMove();
    }
    while (true)
    {
      return;
      label41: this.mStopSimulationSettingViewMove = true;
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.mStartOptimizeBtn)
      startOptimize();
  }

  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramView == this.mSettingView1)
    {
      this.mSetting1Dot.setImageResource(2130837649);
      this.mSetting2Dot.setImageResource(2130837650);
    }
    while (true)
    {
      nd.a().a(26361);
      return;
      if (paramView == this.mSettingView2)
      {
        this.mSetting1Dot.setImageResource(2130837650);
        this.mSetting2Dot.setImageResource(2130837649);
      }
    }
  }

  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramView == this.mRunnAppButton)
      if (this.mMFrameWindowObserver != null)
      {
        if (paramMotionEvent.getAction() == 1)
        {
          this.mMFrameWindowObserver.switchToTaskManagerView();
          changeRunnAppButton(false);
        }
      }
      else
        label37: nd.a().a(26362);
    while (true)
    {
      return true;
      if (paramMotionEvent.getAction() == 0)
      {
        changeRunnAppButton(true);
        break label37;
      }
      if (paramMotionEvent.getAction() == 4)
        break;
      if (paramMotionEvent.getAction() != 3)
        break label37;
      break;
      switch (paramMotionEvent.getAction())
      {
      case 2:
      default:
        break;
      case 0:
        this.mStartOptimizeBtn.setEnabled(false);
      case 1:
      case 3:
      case 4:
        this.mStartOptimizeBtn.setEnabled(true);
        changeRunnAppButton(false);
      }
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (!paramBoolean)
    {
      View localView = this.mGallery.getChildAt(0);
      if (localView != null)
        localView.setSelected(true);
    }
  }

  public void resetUi()
  {
    this.mStartOptimizeBtn.setButtonEnabled(true);
    this.mStartOptimizeBtn.setVisibility(0);
    this.mOptimizeResultText.setVisibility(8);
    this.mPreOptimizeCalFinish = false;
    changeRunnAppButton(false);
    if (this.mOptimizeFinish == true)
    {
      int i = vh.g();
      this.mMiniProgressBarView.setProgressWithAnim(i);
    }
  }

  public void updateOptimizeWindowRamUsage(int paramInt)
  {
    if (!this.mOptimizeFinish);
    while (true)
    {
      return;
      this.mRamText.setText(paramInt + "%");
      this.mMiniProgressBarView.setProgressWithAnim(paramInt);
      if (vh.a(paramInt))
        this.mRamText.setTextColor(-51422);
      else
        this.mRamText.setTextColor(-13421773);
    }
  }

  public void updateRunningAppText()
  {
    int i = this.mRunningProcessServer.g();
    this.mRunnAppText.setTextSize(18.0F);
    this.mRunnAppText.setText(i + this.mContext.getString(2131428981));
  }

  class SettingViewListAdapter extends BaseAdapter
  {
    SettingViewListAdapter()
    {
    }

    public int getCount()
    {
      return ExpandedOptimizeWindow.this.mSettingViewList.size();
    }

    public Object getItem(int paramInt)
    {
      return ExpandedOptimizeWindow.this.mSettingViewList.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public int getItemViewType(int paramInt)
    {
      return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView;
      if (paramView == null)
      {
        localView = (View)ExpandedOptimizeWindow.this.mSettingViewList.get(paramInt);
        localView.setLayoutParams(new Gallery.LayoutParams(-1, -2));
      }
      while (true)
      {
        return localView;
        localView = paramView;
      }
    }

    public int getViewTypeCount()
    {
      return 2;
    }
  }

  class Window_Handler extends Handler
  {
    private Window_Handler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 6:
      case 5:
      }
      while (true)
      {
        return;
        MotionEvent localMotionEvent1 = (MotionEvent)paramMessage.obj;
        MotionEvent localMotionEvent2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), localMotionEvent1.getAction(), localMotionEvent1.getRawX(), localMotionEvent1.getRawY(), 0);
        ExpandedOptimizeWindow.this.mGallery.onTouchEvent(localMotionEvent2);
        continue;
        ExpandedOptimizeWindow.this.resetUi();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedOptimizeWindow
 * JD-Core Version:    0.6.2
 */