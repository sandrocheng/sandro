package org.achartengine.renderer;

import android.graphics.Typeface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class b
  implements Serializable
{
  public static final int BACKGROUND_COLOR = -16777216;
  public static final int NO_COLOR = 0;
  private static final Typeface REGULAR_TEXT_FONT = Typeface.create(Typeface.SERIF, 0);
  public static final int TEXT_COLOR = -3355444;
  private static final long serialVersionUID = -1635320180431395663L;
  private boolean mAntialiasing = true;
  private boolean mApplyBackgroundColor;
  private int mAxesColor = -3355444;
  private int mBackgroundColor;
  private String mChartTitle = "";
  private float mChartTitleTextSize = 15.0F;
  private boolean mClickEnabled = false;
  private boolean mExternalZoomEnabled = false;
  private boolean mFitLegend = false;
  private int mLabelsColor = -3355444;
  private float mLabelsTextSize = 10.0F;
  private int mLegendHeight = 0;
  private float mLegendTextSize = 12.0F;
  private int[] mMargins = { 20, 30, 10, 20 };
  private float mOriginalScale = this.mScale;
  private boolean mPanEnabled = true;
  private List mRenderers = new ArrayList();
  private float mScale = 1.0F;
  private boolean mShowAxes = true;
  private boolean mShowCustomTextGrid = false;
  private boolean mShowGrid = false;
  private boolean mShowLabels = true;
  private boolean mShowLegend = true;
  private String mTextTypefaceName = REGULAR_TEXT_FONT.toString();
  private int mTextTypefaceStyle = 0;
  private boolean mZoomButtonsVisible = false;
  private boolean mZoomEnabled = true;
  private float mZoomRate = 1.5F;
  private int selectableBuffer = 15;

  public void addSeriesRenderer(int paramInt, c paramc)
  {
    this.mRenderers.add(paramInt, paramc);
  }

  public void addSeriesRenderer(c paramc)
  {
    this.mRenderers.add(paramc);
  }

  public int getAxesColor()
  {
    return this.mAxesColor;
  }

  public int getBackgroundColor()
  {
    return this.mBackgroundColor;
  }

  public String getChartTitle()
  {
    return this.mChartTitle;
  }

  public float getChartTitleTextSize()
  {
    return this.mChartTitleTextSize;
  }

  public int getLabelsColor()
  {
    return this.mLabelsColor;
  }

  public float getLabelsTextSize()
  {
    return this.mLabelsTextSize;
  }

  public int getLegendHeight()
  {
    return this.mLegendHeight;
  }

  public float getLegendTextSize()
  {
    return this.mLegendTextSize;
  }

  public int[] getMargins()
  {
    return this.mMargins;
  }

  public float getOriginalScale()
  {
    return this.mOriginalScale;
  }

  public float getScale()
  {
    return this.mScale;
  }

  public int getSelectableBuffer()
  {
    return this.selectableBuffer;
  }

  public c getSeriesRendererAt(int paramInt)
  {
    return (c)this.mRenderers.get(paramInt);
  }

  public int getSeriesRendererCount()
  {
    return this.mRenderers.size();
  }

  public c[] getSeriesRenderers()
  {
    return (c[])this.mRenderers.toArray(new c[0]);
  }

  public String getTextTypefaceName()
  {
    return this.mTextTypefaceName;
  }

  public int getTextTypefaceStyle()
  {
    return this.mTextTypefaceStyle;
  }

  public float getZoomRate()
  {
    return this.mZoomRate;
  }

  public boolean isAntialiasing()
  {
    return this.mAntialiasing;
  }

  public boolean isApplyBackgroundColor()
  {
    return this.mApplyBackgroundColor;
  }

  public boolean isClickEnabled()
  {
    return this.mClickEnabled;
  }

  public boolean isExternalZoomEnabled()
  {
    return this.mExternalZoomEnabled;
  }

  public boolean isFitLegend()
  {
    return this.mFitLegend;
  }

  public boolean isPanEnabled()
  {
    return this.mPanEnabled;
  }

  public boolean isShowAxes()
  {
    return this.mShowAxes;
  }

  public boolean isShowCustomTextGrid()
  {
    return this.mShowCustomTextGrid;
  }

  public boolean isShowGrid()
  {
    return this.mShowGrid;
  }

  public boolean isShowLabels()
  {
    return this.mShowLabels;
  }

  public boolean isShowLegend()
  {
    return this.mShowLegend;
  }

  public boolean isZoomButtonsVisible()
  {
    return this.mZoomButtonsVisible;
  }

  public boolean isZoomEnabled()
  {
    return this.mZoomEnabled;
  }

  public void removeSeriesRenderer(c paramc)
  {
    this.mRenderers.remove(paramc);
  }

  public void setAntialiasing(boolean paramBoolean)
  {
    this.mAntialiasing = paramBoolean;
  }

  public void setApplyBackgroundColor(boolean paramBoolean)
  {
    this.mApplyBackgroundColor = paramBoolean;
  }

  public void setAxesColor(int paramInt)
  {
    this.mAxesColor = paramInt;
  }

  public void setBackgroundColor(int paramInt)
  {
    this.mBackgroundColor = paramInt;
  }

  public void setChartTitle(String paramString)
  {
    this.mChartTitle = paramString;
  }

  public void setChartTitleTextSize(float paramFloat)
  {
    this.mChartTitleTextSize = paramFloat;
  }

  public void setClickEnabled(boolean paramBoolean)
  {
    this.mClickEnabled = paramBoolean;
  }

  public void setExternalZoomEnabled(boolean paramBoolean)
  {
    this.mExternalZoomEnabled = paramBoolean;
  }

  public void setFitLegend(boolean paramBoolean)
  {
    this.mFitLegend = paramBoolean;
  }

  public void setLabelsColor(int paramInt)
  {
    this.mLabelsColor = paramInt;
  }

  public void setLabelsTextSize(float paramFloat)
  {
    this.mLabelsTextSize = paramFloat;
  }

  public void setLegendHeight(int paramInt)
  {
    this.mLegendHeight = paramInt;
  }

  public void setLegendTextSize(float paramFloat)
  {
    this.mLegendTextSize = paramFloat;
  }

  public void setMargins(int[] paramArrayOfInt)
  {
    this.mMargins = paramArrayOfInt;
  }

  public void setPanEnabled(boolean paramBoolean)
  {
    this.mPanEnabled = paramBoolean;
  }

  public void setScale(float paramFloat)
  {
    this.mScale = paramFloat;
  }

  public void setSelectableBuffer(int paramInt)
  {
    this.selectableBuffer = paramInt;
  }

  public void setShowAxes(boolean paramBoolean)
  {
    this.mShowAxes = paramBoolean;
  }

  public void setShowCustomTextGrid(boolean paramBoolean)
  {
    this.mShowCustomTextGrid = paramBoolean;
  }

  public void setShowGrid(boolean paramBoolean)
  {
    this.mShowGrid = paramBoolean;
  }

  public void setShowLabels(boolean paramBoolean)
  {
    this.mShowLabels = paramBoolean;
  }

  public void setShowLegend(boolean paramBoolean)
  {
    this.mShowLegend = paramBoolean;
  }

  public void setTextTypeface(String paramString, int paramInt)
  {
    this.mTextTypefaceName = paramString;
    this.mTextTypefaceStyle = paramInt;
  }

  public void setZoomButtonsVisible(boolean paramBoolean)
  {
    this.mZoomButtonsVisible = paramBoolean;
  }

  public void setZoomEnabled(boolean paramBoolean)
  {
    this.mZoomEnabled = paramBoolean;
  }

  public void setZoomRate(float paramFloat)
  {
    this.mZoomRate = paramFloat;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.renderer.b
 * JD-Core Version:    0.6.2
 */