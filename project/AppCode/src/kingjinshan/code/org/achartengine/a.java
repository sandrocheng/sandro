package org.achartengine;

import android.content.Context;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public final class a
{
  public static final String a = "chart";
  public static final String b = "title";

  public static final b a(Context paramContext, org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, org.achartengine.a.c paramc1)
  {
    if ((paramc == null) || (paramXYMultipleSeriesRenderer == null) || (paramc.a() != paramXYMultipleSeriesRenderer.getSeriesRendererCount()))
      throw new IllegalArgumentException("Dataset and renderer should be not null and should have the same number of series");
    return new b(paramContext, new org.achartengine.a.b(paramc, paramXYMultipleSeriesRenderer, paramc1));
  }

  private static void a(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    if ((paramc == null) || (paramXYMultipleSeriesRenderer == null) || (paramc.a() != paramXYMultipleSeriesRenderer.getSeriesRendererCount()))
      throw new IllegalArgumentException("Dataset and renderer should be not null and should have the same number of series");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a
 * JD-Core Version:    0.6.2
 */