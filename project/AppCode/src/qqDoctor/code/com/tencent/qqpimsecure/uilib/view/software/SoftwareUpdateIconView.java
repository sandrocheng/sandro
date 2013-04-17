package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class SoftwareUpdateIconView extends RelativeLayout
{
  public static final byte STATE_DOWNLOADING = 2;
  public static final byte STATE_DOWNLOAD_COMPLETE = 5;
  public static final byte STATE_DOWNLOAD_PAUSE = 4;
  public static final byte STATE_DOWNLOAD_PREPARATION = 6;
  public static final byte STATE_DOWNLOAD_WAITING = 3;
  public static final byte STATE_INSTALLED = 7;
  public static final byte STATE_NULL = 0;
  public static final byte STATE_UPDATE_PREPARATION = 1;
  private final int BG_VIEW_ID = 56266;
  private ImageView mBg;
  private ImageView mDownloadComplete;
  private ImageView mDownloadPause;
  private RingView mDownloadPercentRing;
  private ImageView mDownloadPreparation;
  private ImageView mDownloadWaiting;
  private ImageView mDownloadingArrow;
  private byte mState = 0;
  private TextView mTextView;
  private ImageView mUpdatePreparation;

  public SoftwareUpdateIconView(Context paramContext)
  {
    super(paramContext);
    configViewForQQSecure(paramContext);
  }

  public SoftwareUpdateIconView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    configViewForQQSecure(paramContext);
  }

  private boolean changeState(byte paramByte)
  {
    byte b = this.mState;
    boolean bool = false;
    if (b == paramByte)
      return bool;
    switch (paramByte)
    {
    default:
    case 1:
    case 6:
    case 7:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      this.mState = paramByte;
      bool = true;
      break;
      this.mDownloadWaiting.setVisibility(4);
      this.mDownloadPercentRing.setVisibility(4);
      this.mDownloadingArrow.setVisibility(4);
      this.mDownloadPause.setVisibility(4);
      this.mDownloadPreparation.setVisibility(4);
      this.mUpdatePreparation.setVisibility(0);
      this.mDownloadComplete.setVisibility(4);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296372));
      this.mTextView.setText(2131429638);
      continue;
      this.mDownloadWaiting.setVisibility(4);
      this.mDownloadPercentRing.setVisibility(4);
      this.mDownloadingArrow.setVisibility(4);
      this.mDownloadPause.setVisibility(4);
      this.mDownloadPreparation.setVisibility(0);
      this.mUpdatePreparation.setVisibility(4);
      this.mDownloadComplete.setVisibility(4);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296373));
      this.mTextView.setText(2131429639);
      continue;
      this.mDownloadWaiting.setVisibility(8);
      this.mDownloadPercentRing.setVisibility(8);
      this.mDownloadingArrow.setVisibility(8);
      this.mDownloadPause.setVisibility(8);
      this.mDownloadPreparation.setVisibility(8);
      this.mUpdatePreparation.setVisibility(8);
      this.mDownloadComplete.setVisibility(8);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296373));
      this.mTextView.setText(2131429643);
      continue;
      this.mDownloadWaiting.setVisibility(4);
      this.mDownloadPercentRing.setVisibility(0);
      this.mDownloadingArrow.setVisibility(0);
      this.mDownloadPause.setVisibility(4);
      this.mDownloadPreparation.setVisibility(4);
      this.mUpdatePreparation.setVisibility(4);
      this.mDownloadComplete.setVisibility(4);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296374));
      continue;
      this.mDownloadWaiting.setVisibility(0);
      this.mDownloadPercentRing.setVisibility(4);
      this.mDownloadingArrow.setVisibility(4);
      this.mDownloadPause.setVisibility(4);
      this.mDownloadPreparation.setVisibility(4);
      this.mUpdatePreparation.setVisibility(4);
      this.mDownloadComplete.setVisibility(4);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296374));
      this.mTextView.setText(2131429640);
      continue;
      this.mDownloadWaiting.setVisibility(4);
      this.mDownloadPercentRing.setVisibility(0);
      this.mDownloadingArrow.setVisibility(4);
      this.mDownloadPause.setVisibility(0);
      this.mDownloadPreparation.setVisibility(4);
      this.mUpdatePreparation.setVisibility(4);
      this.mDownloadComplete.setVisibility(4);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296374));
      this.mTextView.setText(2131429641);
      continue;
      this.mDownloadWaiting.setVisibility(4);
      this.mDownloadPercentRing.setVisibility(4);
      this.mDownloadingArrow.setVisibility(4);
      this.mDownloadPause.setVisibility(4);
      this.mDownloadPreparation.setVisibility(4);
      this.mUpdatePreparation.setVisibility(4);
      this.mDownloadComplete.setVisibility(0);
      this.mTextView.setTextColor(getContext().getResources().getColor(2131296374));
      this.mTextView.setText(2131429642);
    }
  }

  private RelativeLayout.LayoutParams newCenterLayoutParams()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    return localLayoutParams;
  }

  private ImageView newImageView(int paramInt)
  {
    ImageView localImageView = new ImageView(getContext());
    localImageView.setImageResource(paramInt);
    return localImageView;
  }

  public void configViewForQQSecure(Context paramContext)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(paramContext);
    this.mBg = newImageView(2130837674);
    this.mBg.setId(56266);
    this.mDownloadPreparation = newImageView(2130837676);
    this.mUpdatePreparation = newImageView(2130837679);
    this.mDownloadingArrow = newImageView(2130837677);
    this.mDownloadPause = newImageView(2130837678);
    this.mDownloadComplete = newImageView(2130837675);
    this.mDownloadWaiting = newImageView(2130837680);
    this.mDownloadPercentRing = new RingView(paramContext, 27, 27, 5);
    int i = paramContext.getResources().getColor(2131296376);
    int j = paramContext.getResources().getColor(2131296375);
    this.mDownloadPercentRing.setRingColor(i, j);
    localRelativeLayout.addView(this.mDownloadPercentRing, newCenterLayoutParams());
    localRelativeLayout.addView(this.mDownloadingArrow, newCenterLayoutParams());
    localRelativeLayout.addView(this.mDownloadPause, newCenterLayoutParams());
    localRelativeLayout.addView(this.mDownloadPreparation, newCenterLayoutParams());
    localRelativeLayout.addView(this.mUpdatePreparation, newCenterLayoutParams());
    localRelativeLayout.addView(this.mDownloadComplete, newCenterLayoutParams());
    localRelativeLayout.addView(this.mDownloadWaiting, newCenterLayoutParams());
    this.mTextView = new TextView(paramContext);
    float f = this.mTextView.getPaint().measureText(paramContext.getString(2131429643));
    this.mTextView.setWidth((int)f);
    this.mTextView.setGravity(1);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setGravity(1);
    localLinearLayout.addView(localRelativeLayout, new LinearLayout.LayoutParams(-2, -2));
    localLinearLayout.addView(this.mTextView, new LinearLayout.LayoutParams(-2, -2));
    addView(this.mBg, newCenterLayoutParams());
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(15);
    localLayoutParams.addRule(7, 56266);
    addView(localLinearLayout, localLayoutParams);
    changeState((byte)1);
  }

  public byte getUpdateState()
  {
    return this.mState;
  }

  public void setDownloadComplete()
  {
    changeState((byte)5);
    invalidate();
  }

  public void setDownloadPause(int paramInt)
  {
    this.mDownloadPercentRing.setRingPercent(paramInt);
    changeState((byte)4);
    invalidate();
  }

  public void setDownloadPreparation()
  {
    changeState((byte)6);
    invalidate();
  }

  public void setDownloadWaiting()
  {
    this.mDownloadPercentRing.setRingPercent(0.0F);
    changeState((byte)3);
    invalidate();
  }

  public void setDownloading(int paramInt)
  {
    this.mDownloadPercentRing.setRingPercent(paramInt);
    changeState((byte)2);
    this.mTextView.setText(paramInt + "%");
    invalidate();
  }

  public void setInstalled()
  {
    changeState((byte)7);
    invalidate();
  }

  public void setUpdatePreparation()
  {
    changeState((byte)1);
    invalidate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView
 * JD-Core Version:    0.6.2
 */