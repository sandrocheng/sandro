package com.ijinshan.cleaner;

import android.content.DialogInterface.OnClickListener;

final class ac
  implements DialogInterface.OnClickListener
{
  ac(MonitorUninstallActivity paramMonitorUninstallActivity)
  {
  }

  // ERROR //
  public final void onClick(android.content.DialogInterface paramDialogInterface, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/ijinshan/cleaner/ac:a	Lcom/ijinshan/cleaner/MonitorUninstallActivity;
    //   4: aload_0
    //   5: getfield 12	com/ijinshan/cleaner/ac:a	Lcom/ijinshan/cleaner/MonitorUninstallActivity;
    //   8: invokestatic 24	com/ijinshan/cleaner/MonitorUninstallActivity:a	(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)Ljava/util/ArrayList;
    //   11: invokevirtual 27	com/ijinshan/cleaner/MonitorUninstallActivity:a	(Ljava/util/ArrayList;)V
    //   14: aload_0
    //   15: getfield 12	com/ijinshan/cleaner/ac:a	Lcom/ijinshan/cleaner/MonitorUninstallActivity;
    //   18: invokevirtual 30	com/ijinshan/cleaner/MonitorUninstallActivity:finish	()V
    //   21: return
    //   22: astore 4
    //   24: aload_0
    //   25: getfield 12	com/ijinshan/cleaner/ac:a	Lcom/ijinshan/cleaner/MonitorUninstallActivity;
    //   28: invokevirtual 30	com/ijinshan/cleaner/MonitorUninstallActivity:finish	()V
    //   31: goto -10 -> 21
    //   34: astore_3
    //   35: aload_0
    //   36: getfield 12	com/ijinshan/cleaner/ac:a	Lcom/ijinshan/cleaner/MonitorUninstallActivity;
    //   39: invokevirtual 30	com/ijinshan/cleaner/MonitorUninstallActivity:finish	()V
    //   42: aload_3
    //   43: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	22	java/lang/Exception
    //   0	14	34	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ac
 * JD-Core Version:    0.6.2
 */