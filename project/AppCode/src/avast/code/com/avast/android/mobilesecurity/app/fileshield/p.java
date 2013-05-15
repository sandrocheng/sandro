package com.avast.android.mobilesecurity.app.fileshield;

import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.BlockingQueue;

final class p extends Thread
{
  public p(FileShieldService paramFileShieldService)
  {
    super("AMS-SS$DThread");
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   4: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   7: astore_1
    //   8: aload_1
    //   9: monitorenter
    //   10: new 24	java/util/LinkedList
    //   13: dup
    //   14: invokespecial 26	java/util/LinkedList:<init>	()V
    //   17: astore_2
    //   18: aload_0
    //   19: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   22: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   25: invokevirtual 32	java/util/HashMap:keySet	()Ljava/util/Set;
    //   28: invokeinterface 38 1 0
    //   33: astore 4
    //   35: aload 4
    //   37: invokeinterface 44 1 0
    //   42: ifeq +25 -> 67
    //   45: aload_2
    //   46: aload 4
    //   48: invokeinterface 48 1 0
    //   53: invokeinterface 54 2 0
    //   58: pop
    //   59: goto -24 -> 35
    //   62: astore_3
    //   63: aload_1
    //   64: monitorexit
    //   65: aload_3
    //   66: athrow
    //   67: aload_2
    //   68: invokeinterface 55 1 0
    //   73: astore 5
    //   75: aload 5
    //   77: invokeinterface 44 1 0
    //   82: ifeq +53 -> 135
    //   85: aload 5
    //   87: invokeinterface 48 1 0
    //   92: checkcast 57	java/lang/String
    //   95: astore 6
    //   97: aload_0
    //   98: new 59	com/avast/android/mobilesecurity/app/fileshield/m
    //   101: dup
    //   102: aload_0
    //   103: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   106: aload 6
    //   108: invokespecial 62	com/avast/android/mobilesecurity/app/fileshield/m:<init>	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V
    //   111: invokespecial 65	com/avast/android/mobilesecurity/app/fileshield/p:a	(Lcom/avast/android/mobilesecurity/app/fileshield/m;)V
    //   114: aload_0
    //   115: new 67	com/avast/android/mobilesecurity/app/fileshield/l
    //   118: dup
    //   119: aload_0
    //   120: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   123: aload 6
    //   125: invokespecial 68	com/avast/android/mobilesecurity/app/fileshield/l:<init>	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V
    //   128: iconst_0
    //   129: invokespecial 71	com/avast/android/mobilesecurity/app/fileshield/p:a	(Lcom/avast/android/mobilesecurity/app/fileshield/l;Z)V
    //   132: goto -57 -> 75
    //   135: aload_1
    //   136: monitorexit
    //   137: return
    //
    // Exception table:
    //   from	to	target	type
    //   10	65	62	finally
    //   67	137	62	finally
  }

  private void a(l paraml, boolean paramBoolean)
  {
    File localFile = new File(paraml.a());
    if (FileShieldService.c(this.a).ad());
    for (int i = 1; ; i = 0)
    {
      if (FileShieldService.c(this.a).ae());
      for (int j = i | 0x8; ; j = i)
      {
        if ((localFile == null) || (!localFile.exists()))
          return;
        while (true)
        {
          File[] arrayOfFile;
          int k;
          d locald2;
          synchronized (FileShieldService.g(this.a))
          {
            if (FileShieldService.g(this.a).get(localFile.getAbsolutePath()) == null)
            {
              d locald1 = new d(FileShieldService.i(this.a), localFile.getAbsolutePath(), j);
              locald1.startWatching();
              FileShieldService.g(this.a).put(localFile.getAbsolutePath(), locald1);
            }
            if (!paramBoolean)
              break;
            arrayOfFile = localFile.listFiles();
            k = 0;
            if ((arrayOfFile == null) || (k >= arrayOfFile.length))
              break;
            if ((arrayOfFile[k] != null) && (arrayOfFile[k].isDirectory()))
            {
              locald2 = new d(FileShieldService.i(this.a), arrayOfFile[k].getAbsolutePath(), j);
              if (arrayOfFile[k].exists());
            }
            else
            {
              k++;
            }
          }
          locald2.startWatching();
          d locald3;
          synchronized (FileShieldService.g(this.a))
          {
            locald3 = (d)FileShieldService.g(this.a).put(arrayOfFile[k].getAbsolutePath(), locald2);
            if (locald3 == null)
            {
              l locall = new l(this.a, arrayOfFile[k].getAbsolutePath());
              FileShieldService.b(this.a).offer(locall);
            }
          }
          locald3.stopWatching();
        }
      }
    }
  }

  private void a(m paramm)
  {
    synchronized (FileShieldService.g(this.a))
    {
      d locald = (d)FileShieldService.g(this.a).remove(paramm.a());
      if (locald != null)
        locald.stopWatching();
      return;
    }
  }

  // ERROR //
  private void a(s params)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   4: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   7: astore_2
    //   8: aload_2
    //   9: monitorenter
    //   10: aload_1
    //   11: invokevirtual 142	com/avast/android/mobilesecurity/app/fileshield/s:a	()Ljava/lang/String;
    //   14: astore 4
    //   16: aload_1
    //   17: invokevirtual 144	com/avast/android/mobilesecurity/app/fileshield/s:c	()Ljava/lang/String;
    //   20: astore 5
    //   22: aload_0
    //   23: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   26: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   29: invokevirtual 32	java/util/HashMap:keySet	()Ljava/util/Set;
    //   32: invokeinterface 38 1 0
    //   37: astore 6
    //   39: new 28	java/util/HashMap
    //   42: dup
    //   43: invokespecial 145	java/util/HashMap:<init>	()V
    //   46: astore 7
    //   48: new 24	java/util/LinkedList
    //   51: dup
    //   52: invokespecial 26	java/util/LinkedList:<init>	()V
    //   55: astore 8
    //   57: aload 6
    //   59: invokeinterface 44 1 0
    //   64: ifeq +111 -> 175
    //   67: aload 6
    //   69: invokeinterface 48 1 0
    //   74: checkcast 57	java/lang/String
    //   77: astore 15
    //   79: aload 15
    //   81: aload 4
    //   83: invokevirtual 149	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   86: ifeq -29 -> 57
    //   89: aload_0
    //   90: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   93: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   96: aload 15
    //   98: invokevirtual 99	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: checkcast 101	com/avast/android/mobilesecurity/app/fileshield/d
    //   104: astore 16
    //   106: aload 15
    //   108: aload 4
    //   110: invokevirtual 153	java/lang/String:length	()I
    //   113: invokevirtual 157	java/lang/String:substring	(I)Ljava/lang/String;
    //   116: astore 17
    //   118: new 159	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   125: aload 5
    //   127: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload 17
    //   132: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: astore 18
    //   140: aload 16
    //   142: aload 18
    //   144: invokevirtual 169	com/avast/android/mobilesecurity/app/fileshield/d:a	(Ljava/lang/String;)V
    //   147: aload 7
    //   149: aload 18
    //   151: aload 16
    //   153: invokevirtual 115	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   156: pop
    //   157: aload 8
    //   159: aload 15
    //   161: invokeinterface 54 2 0
    //   166: pop
    //   167: goto -110 -> 57
    //   170: astore_3
    //   171: aload_2
    //   172: monitorexit
    //   173: aload_3
    //   174: athrow
    //   175: aload 8
    //   177: invokeinterface 55 1 0
    //   182: astore 9
    //   184: aload 9
    //   186: invokeinterface 44 1 0
    //   191: ifeq +31 -> 222
    //   194: aload 9
    //   196: invokeinterface 48 1 0
    //   201: checkcast 57	java/lang/String
    //   204: astore 13
    //   206: aload_0
    //   207: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   210: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   213: aload 13
    //   215: invokevirtual 138	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   218: pop
    //   219: goto -35 -> 184
    //   222: aload 7
    //   224: invokevirtual 32	java/util/HashMap:keySet	()Ljava/util/Set;
    //   227: invokeinterface 38 1 0
    //   232: astore 10
    //   234: aload 10
    //   236: invokeinterface 44 1 0
    //   241: ifeq +38 -> 279
    //   244: aload 10
    //   246: invokeinterface 48 1 0
    //   251: checkcast 57	java/lang/String
    //   254: astore 11
    //   256: aload_0
    //   257: getfield 10	com/avast/android/mobilesecurity/app/fileshield/p:a	Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
    //   260: invokestatic 22	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:g	(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    //   263: aload 11
    //   265: aload 7
    //   267: aload 11
    //   269: invokevirtual 99	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   272: invokevirtual 115	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   275: pop
    //   276: goto -42 -> 234
    //   279: aload 7
    //   281: invokevirtual 172	java/util/HashMap:clear	()V
    //   284: invokestatic 174	com/avast/android/mobilesecurity/app/fileshield/d:a	()V
    //   287: aload_2
    //   288: monitorexit
    //   289: return
    //
    // Exception table:
    //   from	to	target	type
    //   10	173	170	finally
    //   175	289	170	finally
  }

  public void run()
  {
    super.run();
    while (true)
    {
      n localn;
      try
      {
        localn = (n)FileShieldService.b(this.a).take();
        switch (i.a[localn.b().ordinal()])
        {
        case 1:
          a((l)localn, true);
          continue;
        case 2:
        case 3:
        case 4:
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        return;
      }
      a((s)localn);
      continue;
      a((m)localn);
      continue;
      a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.p
 * JD-Core Version:    0.6.2
 */