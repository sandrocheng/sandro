package com.tencent.qqpimsecure.uilib.view;

import QQPIM.BaseInfo;
import QQPIM.CloudInfo;
import QQPIM.TipsInfo;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.tencent.qqpimsecure.uilib.model.TipsModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ss;

public class CloudInfoTips
{
  Context mContext;
  private ViewFlipper mFlipper;
  private Animation mTipsAnimation;
  private Handler mTipsHandler = new CloudInfoTips.2(this);
  private View mTipsLayout = null;
  private List<TipsModel> mTipsModelList = new ArrayList();

  public CloudInfoTips(Context paramContext, List<CloudInfo> paramList)
  {
    this.mContext = paramContext;
    this.mTipsLayout = LayoutInflater.from(paramContext).inflate(2130903270, null);
    this.mFlipper = ((ViewFlipper)this.mTipsLayout.findViewById(2131231470));
    showCloudInfo(paramList);
  }

  private void addTips(List<TipsModel> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      TipsModel localTipsModel = (TipsModel)localIterator.next();
      View localView = createTipsItem(localTipsModel, localTipsModel.getIcon(), localTipsModel.getMessage(), localTipsModel.isShowCloseIcon());
      localView.setTag(localTipsModel);
      localView.setOnClickListener(new CloudInfoTips.5(this));
      this.mFlipper.addView(localView);
    }
    this.mTipsModelList.addAll(paramList);
  }

  private void closeTipsView()
  {
    if (this.mTipsLayout.isShown())
    {
      this.mTipsAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968578);
      this.mTipsAnimation.setAnimationListener(new CloudInfoTips.1(this));
      this.mTipsLayout.startAnimation(this.mTipsAnimation);
    }
  }

  private void createRemoveTipsThread()
  {
    new CloudInfoTips.3(this).start();
  }

  private View createTipsItem(TipsModel paramTipsModel, int paramInt, String paramString, boolean paramBoolean)
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903115, null);
    ImageView localImageView1 = (ImageView)localView.findViewById(2131230869);
    TextView localTextView = (TextView)localView.findViewById(2131230748);
    ImageView localImageView2 = (ImageView)localView.findViewById(2131230895);
    localImageView1.setImageResource(paramInt);
    localTextView.setText(paramString);
    if (paramBoolean)
      localImageView2.setVisibility(0);
    while (true)
    {
      localImageView2.setTag(paramTipsModel);
      localImageView2.setOnClickListener(new CloudInfoTips.4(this));
      return localView;
      localImageView2.setVisibility(8);
    }
  }

  private void showTipsView()
  {
    if (!this.mTipsLayout.isShown())
    {
      this.mTipsLayout.setVisibility(0);
      new CloudInfoTips.3(this).start();
    }
  }

  private void showTipsView(List<TipsModel> paramList)
  {
    if (this.mTipsLayout.isShown())
      addTips(paramList);
    while (true)
    {
      return;
      addTips(paramList);
      if (!this.mTipsLayout.isShown())
      {
        this.mTipsLayout.setVisibility(0);
        new CloudInfoTips.3(this).start();
      }
    }
  }

  public void setTips(List<TipsModel> paramList)
  {
    if (paramList.size() > 0)
    {
      if (paramList.size() != 1)
      {
        this.mFlipper.setFlipInterval(2000);
        this.mFlipper.setInAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968593));
        this.mFlipper.setOutAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968594));
        this.mFlipper.startFlipping();
      }
      if (!this.mTipsLayout.isShown())
        break label84;
      addTips(paramList);
    }
    while (true)
    {
      return;
      label84: addTips(paramList);
      if (!this.mTipsLayout.isShown())
      {
        this.mTipsLayout.setVisibility(0);
        new CloudInfoTips.3(this).start();
      }
    }
  }

  public void showCloudInfo(List<CloudInfo> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      CloudInfo localCloudInfo = (CloudInfo)localIterator.next();
      if (ss.a(this.mContext, localCloudInfo))
      {
        TipsModel localTipsModel = new TipsModel();
        localTipsModel.setMessage(localCloudInfo.getTips().getMsg());
        localTipsModel.setCloseTime(0);
        localTipsModel.setIcon(2130838338);
        localTipsModel.setShowCloseIcon(true);
        localTipsModel.setSingle(false);
        localTipsModel.setUrl(localCloudInfo.getBase().getTipsid());
        localArrayList.add(localTipsModel);
      }
    }
    if (localArrayList.size() > 0)
    {
      if (localArrayList.size() != 1)
      {
        this.mFlipper.setFlipInterval(5000);
        this.mFlipper.setInAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968593));
        this.mFlipper.setOutAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968594));
        this.mFlipper.startFlipping();
      }
      showTipsView(localArrayList);
    }
  }

  public View view()
  {
    return this.mTipsLayout;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CloudInfoTips
 * JD-Core Version:    0.6.2
 */