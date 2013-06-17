package com.avg.ui.license.qrreader.b;

import android.app.Activity;
import com.avg.ui.general.g;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;

public final class d extends a
{
  private static final int[] a = new int[0];

  public d(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
  }

  public int c()
  {
    return g.result_text;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.b.d
 * JD-Core Version:    0.6.2
 */