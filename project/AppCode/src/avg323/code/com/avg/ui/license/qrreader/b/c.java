package com.avg.ui.license.qrreader.b;

import com.avg.ui.license.qrreader.general.CaptureActivity;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;

public final class c
{
  public static a a(CaptureActivity paramCaptureActivity, Result paramResult)
  {
    return new d(paramCaptureActivity, a(paramResult), paramResult);
  }

  private static ParsedResult a(Result paramResult)
  {
    return ResultParser.parseResult(paramResult);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.b.c
 * JD-Core Version:    0.6.2
 */