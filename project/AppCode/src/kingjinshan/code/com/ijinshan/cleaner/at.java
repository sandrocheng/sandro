package com.ijinshan.cleaner;

public final class at extends Thread
{
  public at(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   8: getfield 22	com/ijinshan/cleaner/SDcardCleanerActivity:c	Ljava/util/List;
    //   11: invokeinterface 28 1 0
    //   16: ifeq +10 -> 26
    //   19: aload_0
    //   20: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   23: invokevirtual 31	com/ijinshan/cleaner/SDcardCleanerActivity:d	()V
    //   26: new 33	com/ijinshan/cleaner/b/a
    //   29: dup
    //   30: invokespecial 34	com/ijinshan/cleaner/b/a:<init>	()V
    //   33: astore 5
    //   35: aload_0
    //   36: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   39: aload 5
    //   41: invokevirtual 37	com/ijinshan/cleaner/b/a:a	()Landroid/database/sqlite/SQLiteDatabase;
    //   44: invokestatic 40	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    //   47: pop
    //   48: ldc 42
    //   50: invokestatic 48	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   53: invokevirtual 54	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   56: ifeq +10 -> 66
    //   59: aload_0
    //   60: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   63: invokevirtual 56	com/ijinshan/cleaner/SDcardCleanerActivity:a	()V
    //   66: aload_0
    //   67: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   70: invokestatic 60	com/ijinshan/cleaner/SDcardCleanerActivity:f	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/database/sqlite/SQLiteDatabase;
    //   73: invokevirtual 65	android/database/sqlite/SQLiteDatabase:close	()V
    //   76: aload_0
    //   77: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   80: aconst_null
    //   81: invokestatic 68	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Lcom/ijinshan/cleaner/at;)Lcom/ijinshan/cleaner/at;
    //   84: pop
    //   85: aload_0
    //   86: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   89: iconst_4
    //   90: invokestatic 71	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_0
    //   96: monitorexit
    //   97: return
    //   98: astore 4
    //   100: aload 4
    //   102: invokevirtual 74	java/lang/Exception:printStackTrace	()V
    //   105: aload_0
    //   106: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   109: iconst_4
    //   110: invokestatic 71	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   113: goto -20 -> 93
    //   116: astore_3
    //   117: aload_0
    //   118: monitorexit
    //   119: aload_3
    //   120: athrow
    //   121: astore_1
    //   122: aload_0
    //   123: monitorexit
    //   124: aload_1
    //   125: athrow
    //   126: astore_2
    //   127: aload_0
    //   128: getfield 10	com/ijinshan/cleaner/at:a	Lcom/ijinshan/cleaner/SDcardCleanerActivity;
    //   131: iconst_4
    //   132: invokestatic 71	com/ijinshan/cleaner/SDcardCleanerActivity:a	(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    //   135: aload_2
    //   136: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	85	98	java/lang/Exception
    //   85	95	116	finally
    //   105	113	116	finally
    //   127	137	116	finally
    //   2	4	121	finally
    //   117	121	121	finally
    //   4	85	126	finally
    //   100	105	126	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.at
 * JD-Core Version:    0.6.2
 */