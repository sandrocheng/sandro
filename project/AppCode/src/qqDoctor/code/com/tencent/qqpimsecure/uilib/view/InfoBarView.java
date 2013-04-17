package com.tencent.qqpimsecure.uilib.view;

import a;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import ft;
import ft.a;
import vh;

public class InfoBarView extends LinearLayout
{
  public static final int INFO_BAR_TYPE_COMMON = 3;
  public static final int INFO_BAR_TYPE_MEMORY = 1;
  public static final int INFO_BAR_TYPE_MIDDLE_TEXT = 5;
  public static final int INFO_BAR_TYPE_NONE = 4;
  public static final int INFO_BAR_TYPE_NULL = 0;
  public static final int INFO_BAR_TYPE_RAM = 2;
  private TextView commonInfo_bottom_text = null;
  private TextView commonInfo_text = null;
  private LinearLayout mContentLayout = null;
  private Context mContext;
  private OptimizeManager mOptimizeManager;
  private long mPhoneMemory;
  private long mPhoneRam;
  private long mSDCardMemory;
  private int mType;
  private TextView phoneMemory_bottom_text = null;
  private TextView phoneMemory_text = null;
  private TextView phoneRam_bottom_text = null;
  private TextView phoneRam_text = null;
  private TextView processNum_bottom_text = null;
  private TextView processNum_text = null;
  private TextView sdCardMemory_bottom_text = null;
  private TextView sdCardMemory_text = null;

  public InfoBarView(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mType = paramInt;
    initView(paramContext, paramInt);
    doRefresh(paramContext);
  }

  private void initCommonType(LayoutInflater paramLayoutInflater)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.gravity = 16;
    localLayoutParams.weight = 1.0F;
    this.mContentLayout.addView(paramLayoutInflater.inflate(2130903093, null), localLayoutParams);
    this.commonInfo_text = ((TextView)findViewById(2131230857));
    this.commonInfo_bottom_text = ((TextView)findViewById(2131230856));
  }

  private void initMemoryType(LayoutInflater paramLayoutInflater)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.gravity = 16;
    this.mContentLayout.addView(paramLayoutInflater.inflate(2130903094, null), localLayoutParams);
    this.phoneMemory_text = ((TextView)findViewById(2131230858));
    this.sdCardMemory_text = ((TextView)findViewById(2131230859));
  }

  private void initMiddleTextType(LayoutInflater paramLayoutInflater)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.gravity = 16;
    localLayoutParams.weight = 1.0F;
    this.mContentLayout.addView(paramLayoutInflater.inflate(2130903093, null), localLayoutParams);
    this.commonInfo_text = ((TextView)findViewById(2131230857));
    this.commonInfo_bottom_text = ((TextView)findViewById(2131230856));
    this.commonInfo_text.setEllipsize(TextUtils.TruncateAt.MIDDLE);
  }

  private void initRamType(LayoutInflater paramLayoutInflater)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.gravity = 16;
    this.mContentLayout.addView(paramLayoutInflater.inflate(2130903095, null), localLayoutParams);
    this.processNum_text = ((TextView)findViewById(2131230860));
    this.phoneRam_text = ((TextView)findViewById(2131230861));
  }

  private void initView(Context paramContext, int paramInt)
  {
    setBackgroundResource(2130837851);
    this.mOptimizeManager = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class));
    this.mContentLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.leftMargin = ((int)(0.5F + 5.0F * this.mContext.getResources().getDisplayMetrics().density));
    this.mContentLayout.setOrientation(0);
    addView(this.mContentLayout, localLayoutParams);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      initMemoryType(localLayoutInflater);
      continue;
      initRamType(localLayoutInflater);
      continue;
      initCommonType(localLayoutInflater);
    }
  }

  private void refreshMemory()
  {
    if (this.mPhoneMemory > 0L)
    {
      setPhoneMemory(a.c(this.mPhoneMemory));
      setPhoneMemoryColor(getResources().getColor(2131296285));
      if (this.mSDCardMemory <= 0L)
        break label89;
      setSDCardMemory(a.c(this.mSDCardMemory));
      setSDCardMemoryColor(getResources().getColor(2131296285));
    }
    while (true)
    {
      return;
      setPhoneMemory("0K");
      setPhoneMemoryColor(getResources().getColor(2131296310));
      break;
      label89: setSDCardMemory("0K");
      setSDCardMemoryColor(getResources().getColor(2131296310));
    }
  }

  public void addPhoneMemory(long paramLong)
  {
    this.mPhoneMemory = (paramLong + this.mPhoneMemory);
    refreshMemory();
  }

  public void addSDCardMemory(long paramLong)
  {
    this.mSDCardMemory = (paramLong + this.mSDCardMemory);
    refreshMemory();
  }

  public void addView(View paramView)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.mContentLayout.addView(paramView, localLayoutParams);
  }

  public void addViewToInfoBar(View paramView)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    localLayoutParams.rightMargin = 5;
    this.mContentLayout.addView(paramView, localLayoutParams);
  }

  public void changeInfoBarType(Context paramContext, int paramInt)
  {
    if ((this.mContentLayout == null) || (this.mType == paramInt));
    while (true)
    {
      return;
      this.mType = paramInt;
      this.mContentLayout.removeAllViews();
      this.phoneMemory_text = null;
      this.sdCardMemory_text = null;
      this.processNum_text = null;
      this.phoneRam_text = null;
      this.commonInfo_text = null;
      LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
      switch (paramInt)
      {
      case 4:
      default:
        break;
      case 1:
        initMemoryType(localLayoutInflater);
        break;
      case 2:
        initRamType(localLayoutInflater);
        break;
      case 3:
        initCommonType(localLayoutInflater);
        break;
      case 5:
        initMiddleTextType(localLayoutInflater);
      }
    }
  }

  public void doRefresh(Context paramContext)
  {
    switch (this.mType)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      ft.a locala = new ft.a();
      ft.b(locala);
      this.mPhoneMemory = locala.a;
      ft.a(locala);
      this.mSDCardMemory = locala.a;
      refreshMemory();
      continue;
      this.mPhoneRam = vh.f();
      setPhoneRam(a.c(this.mPhoneRam << 10));
    }
  }

  public long getPhoneMemory()
  {
    return this.mPhoneMemory;
  }

  public long getSDCardMemory()
  {
    return this.mSDCardMemory;
  }

  public int getType()
  {
    return this.mType;
  }

  public boolean isOutOfPhoneMemory()
  {
    if (this.mPhoneMemory <= 0L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isOutOfSDCardMemory()
  {
    if (this.mSDCardMemory <= 0L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void reducePhoneMemory(long paramLong)
  {
    this.mPhoneMemory -= paramLong;
    refreshMemory();
  }

  public void reduceSDCardMemory(long paramLong)
  {
    this.mSDCardMemory -= paramLong;
    refreshMemory();
  }

  public void setCommonText(int paramInt)
  {
    if (this.commonInfo_text != null)
      this.commonInfo_text.setText(paramInt);
    if (this.commonInfo_bottom_text != null)
      this.commonInfo_bottom_text.setText(paramInt);
  }

  public void setCommonText(String paramString)
  {
    if (this.commonInfo_text != null)
      this.commonInfo_text.setText(paramString);
    if (this.commonInfo_bottom_text != null)
      this.commonInfo_bottom_text.setText(paramString);
  }

  public void setContentViewMargin(int paramInt)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.leftMargin = paramInt;
    this.mContentLayout.setLayoutParams(localLayoutParams);
  }

  public void setPhoneMemory(String paramString)
  {
    if (this.phoneMemory_text != null)
      this.phoneMemory_text.setText(paramString);
    if (this.phoneMemory_bottom_text != null)
      this.phoneMemory_bottom_text.setText(paramString);
  }

  public void setPhoneMemoryColor(int paramInt)
  {
    if (this.phoneMemory_text != null)
      this.phoneMemory_text.setTextColor(paramInt);
    if (this.phoneMemory_bottom_text != null)
      this.phoneMemory_bottom_text.setTextColor(paramInt);
  }

  public void setPhoneRam(String paramString)
  {
    if (this.phoneRam_text != null)
      this.phoneRam_text.setText(paramString);
    if (this.phoneRam_bottom_text != null)
      this.phoneRam_bottom_text.setText(paramString);
  }

  public void setProcessNum(int paramInt)
  {
    if (this.processNum_text != null)
      this.processNum_text.setText(String.valueOf(paramInt));
    if (this.processNum_bottom_text != null)
      this.processNum_bottom_text.setText(String.valueOf(paramInt));
  }

  public void setSDCardMemory(String paramString)
  {
    if (this.sdCardMemory_text != null)
      this.sdCardMemory_text.setText(paramString);
    if (this.sdCardMemory_bottom_text != null)
      this.sdCardMemory_bottom_text.setText(paramString);
  }

  public void setSDCardMemoryColor(int paramInt)
  {
    if (this.sdCardMemory_text != null)
      this.sdCardMemory_text.setTextColor(paramInt);
    if (this.sdCardMemory_bottom_text != null)
      this.sdCardMemory_bottom_text.setTextColor(paramInt);
  }

  public void setShadowVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      setBackgroundResource(2130837851);
    while (true)
    {
      return;
      setBackgroundResource(2130837852);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.InfoBarView
 * JD-Core Version:    0.6.2
 */