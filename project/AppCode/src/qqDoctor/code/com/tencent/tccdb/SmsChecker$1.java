package com.tencent.tccdb;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;

class SmsChecker$1
  implements IUpdateObserver
{
  SmsChecker$1(SmsChecker paramSmsChecker)
  {
  }

  public void onChanged(UpdateInfo paramUpdateInfo)
  {
    String str = ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).getFileSavePath() + File.separator + paramUpdateInfo.fileName;
    if ((SmsChecker.access$1(SmsChecker.access$0(this.this$0), 3, str) == 0) && (SmsChecker.access$2(SmsChecker.access$0(this.this$0), 8, str) == 0))
      SmsChecker.access$3(this.this$0, true);
    while (true)
    {
      return;
      SmsChecker.access$3(this.this$0, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.SmsChecker.1
 * JD-Core Version:    0.6.2
 */