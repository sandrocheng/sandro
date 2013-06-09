package org.antivirus.license.qrreader.result;

import android.view.View;
import android.view.View.OnClickListener;

public final class ResultButtonListener
  implements View.OnClickListener
{
  private final int index;
  private final ResultHandler resultHandler;

  public ResultButtonListener(ResultHandler paramResultHandler, int paramInt)
  {
    this.resultHandler = paramResultHandler;
    this.index = paramInt;
  }

  public final void onClick(View paramView)
  {
    this.resultHandler.handleButtonPress(this.index);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.result.ResultButtonListener
 * JD-Core Version:    0.6.2
 */