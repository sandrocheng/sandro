package com.tencent.tccdb;

import com.tencent.tmsecure.common.ManagerCreator;
import ga;
import gb;
import gc;
import java.io.File;

class SmsChecker$1
  implements ga
{
  SmsChecker$1(SmsChecker paramSmsChecker)
  {
  }

  public void onChanged(gb paramgb)
  {
    String str = ((gc)ManagerCreator.getManager(gc.class)).a() + File.separator + paramgb.c;
    if ((SmsChecker.access$1(SmsChecker.access$0(this.this$0), 3, str) == 0) && (SmsChecker.access$2(SmsChecker.access$0(this.this$0), 8, str) == 0))
      SmsChecker.access$3(this.this$0, true);
    while (true)
    {
      return;
      SmsChecker.access$3(this.this$0, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.SmsChecker.1
 * JD-Core Version:    0.6.2
 */