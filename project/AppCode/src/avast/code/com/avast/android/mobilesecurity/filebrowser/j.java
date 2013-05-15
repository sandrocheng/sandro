package com.avast.android.mobilesecurity.filebrowser;

final class j extends Thread
{
  public j()
  {
    super("AMS-SFI$ESAThread");
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 16	java/lang/Thread:run	()V
    //   4: invokestatic 22	com/avast/android/mobilesecurity/filebrowser/h:j	()Ljava/util/concurrent/LinkedBlockingQueue;
    //   7: invokevirtual 28	java/util/concurrent/LinkedBlockingQueue:take	()Ljava/lang/Object;
    //   10: checkcast 30	java/lang/String
    //   13: astore_2
    //   14: invokestatic 34	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   17: astore_3
    //   18: aload_3
    //   19: monitorenter
    //   20: invokestatic 34	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   23: invokevirtual 40	java/util/Stack:isEmpty	()Z
    //   26: istore 5
    //   28: invokestatic 34	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   31: aload_2
    //   32: invokevirtual 44	java/util/Stack:push	(Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: invokestatic 22	com/avast/android/mobilesecurity/filebrowser/h:j	()Ljava/util/concurrent/LinkedBlockingQueue;
    //   39: invokevirtual 45	java/util/concurrent/LinkedBlockingQueue:isEmpty	()Z
    //   42: ifne +47 -> 89
    //   45: invokestatic 22	com/avast/android/mobilesecurity/filebrowser/h:j	()Ljava/util/concurrent/LinkedBlockingQueue;
    //   48: invokevirtual 28	java/util/concurrent/LinkedBlockingQueue:take	()Ljava/lang/Object;
    //   51: checkcast 30	java/lang/String
    //   54: astore 7
    //   56: invokestatic 34	com/avast/android/mobilesecurity/filebrowser/h:k	()Ljava/util/Stack;
    //   59: aload 7
    //   61: invokevirtual 44	java/util/Stack:push	(Ljava/lang/Object;)Ljava/lang/Object;
    //   64: pop
    //   65: goto -29 -> 36
    //   68: astore 4
    //   70: aload_3
    //   71: monitorexit
    //   72: aload 4
    //   74: athrow
    //   75: astore_1
    //   76: invokestatic 49	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   79: invokevirtual 52	java/lang/Thread:interrupt	()V
    //   82: invokestatic 22	com/avast/android/mobilesecurity/filebrowser/h:j	()Ljava/util/concurrent/LinkedBlockingQueue;
    //   85: invokevirtual 55	java/util/concurrent/LinkedBlockingQueue:clear	()V
    //   88: return
    //   89: iload 5
    //   91: ifeq +9 -> 100
    //   94: invokestatic 59	com/avast/android/mobilesecurity/filebrowser/h:l	()Ljava/util/concurrent/Semaphore;
    //   97: invokevirtual 64	java/util/concurrent/Semaphore:release	()V
    //   100: aload_3
    //   101: monitorexit
    //   102: goto -98 -> 4
    //
    // Exception table:
    //   from	to	target	type
    //   20	72	68	finally
    //   94	102	68	finally
    //   4	20	75	java/lang/InterruptedException
    //   72	75	75	java/lang/InterruptedException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.j
 * JD-Core Version:    0.6.2
 */