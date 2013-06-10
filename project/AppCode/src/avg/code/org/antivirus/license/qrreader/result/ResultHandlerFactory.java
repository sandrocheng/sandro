package org.antivirus.license.qrreader.result;

import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;
import org.antivirus.license.qrreader.general.CaptureActivity;

public final class ResultHandlerFactory
{
  public static ResultHandler makeResultHandler(CaptureActivity paramCaptureActivity, Result paramResult)
  {
    return new TextResultHandler(paramCaptureActivity, parseResult(paramResult), paramResult);
  }

  private static ParsedResult parseResult(Result paramResult)
  {
    return ResultParser.parseResult(paramResult);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.result.ResultHandlerFactory
 * JD-Core Version:    0.6.2
 */