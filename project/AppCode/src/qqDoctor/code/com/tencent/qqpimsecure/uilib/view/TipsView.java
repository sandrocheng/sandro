package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.tencent.qqpimsecure.uilib.model.TipsModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TipsView extends LinearLayout
{
  private Animation mAlphaAnimation;
  private AnimationSet mAnimationSet;
  private Context mContext;
  private ViewFlipper mFlipper;
  public Handler mHandler = new TipsView.3(this);
  private View.OnClickListener mListener;
  private Thread mRemoveTipsThread = new TipsView.2(this);
  private List<TipsModel> mTipsModelList = new ArrayList();
  private Animation mTranslateAnimation;

  public TipsView(Context paramContext, List<TipsModel> paramList)
  {
    super(paramContext);
    this.mTipsModelList = paramList;
    this.mContext = paramContext;
    init();
    addTips(paramList);
  }

  private void init()
  {
    setOrientation(0);
    View localView = LayoutInflater.from(this.mContext).inflate(2130903270, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.mFlipper = ((ViewFlipper)localView.findViewById(2131231470));
  }

  public void addTips(List<TipsModel> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      TipsModel localTipsModel = (TipsModel)localIterator.next();
      View localView = createItem(localTipsModel.getIcon(), localTipsModel.getMessage(), localTipsModel.isShowCloseIcon());
      localView.setTag(localTipsModel);
      localView.setOnClickListener(new TipsView.1(this));
      this.mFlipper.addView(localView);
    }
    this.mTipsModelList.addAll(paramList);
  }

  public void close()
  {
    this.mAnimationSet = new AnimationSet(true);
    this.mTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -getHeight());
    this.mTranslateAnimation.setDuration(250L);
    this.mAnimationSet.addAnimation(this.mTranslateAnimation);
    this.mAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    this.mAlphaAnimation.setDuration(250L);
    this.mAnimationSet.addAnimation(this.mAlphaAnimation);
    startAnimation(this.mAnimationSet);
  }

  public View createItem(int paramInt, String paramString, boolean paramBoolean)
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
      return localView;
      localImageView2.setVisibility(8);
    }
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.mListener = paramOnClickListener;
  }

  public void show()
  {
    this.mAnimationSet = new AnimationSet(true);
    this.mTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, 200.0F);
    this.mTranslateAnimation.setDuration(1000L);
    this.mAnimationSet.addAnimation(this.mTranslateAnimation);
    this.mAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    this.mAlphaAnimation.setDuration(1000L);
    this.mAnimationSet.addAnimation(this.mAlphaAnimation);
    startAnimation(this.mAnimationSet);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TipsView
 * JD-Core Version:    0.6.2
 */