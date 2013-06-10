package org.antivirus.license.qrreader.result;

import android.app.Activity;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;

public final class TextResultHandler extends ResultHandler
{
  private static final int[] buttons = new int[0];

  public TextResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
  }

  public final int getButtonCount()
  {
    if (hasCustomProductSearch());
    for (int i = buttons.length; ; i = -1 + buttons.length)
      return i;
  }

  public final int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }

  public final int getDisplayTitle()
  {
    return 2131296573;
  }

  public final void handleButtonPress(int paramInt)
  {
    String str = getResult().getDisplayResult();
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      webSearch(str);
      continue;
      shareByEmail(str);
      continue;
      shareBySMS(str);
      continue;
      openURL(fillInCustomSearchURL(str));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.result.TextResultHandler
 * JD-Core Version:    0.6.2
 */