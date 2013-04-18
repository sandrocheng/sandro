package com.ijinshan.cleaner;

public final class as extends Thread
{
  public as(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 18	java/lang/Thread:run	()V
    //   4: aload_0
    //   5: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   8: invokevirtual 23	com/ijinshan/cleaner/SDcardCleanerActivity:e	()V
    //   11: aload_0
    //   12: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   15: bipush 7
    //   17: invokestatic 26	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   20: aload_0
    //   21: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   24: invokestatic 29	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    //   27: invokeinterface 34 1 0
    //   32: return
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   38: bipush 7
    //   40: invokestatic 26	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   43: aload_0
    //   44: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   47: invokestatic 29	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    //   50: invokeinterface 34 1 0
    //   55: goto -23 -> 32
    //   58: astore_1
    //   59: aload_0
    //   60: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   63: bipush 7
    //   65: invokestatic 26	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   68: aload_0
    //   69: getfield 10	com/ijinshan/cleaner/as:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   72: invokestatic 29	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    //   75: invokeinterface 34 1 0
    //   80: aload_1
    //   81: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	11	33	java/lang/Exception
    //   4	11	58	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.as
 * JD-Core Version:    0.6.2
 */