package org.antivirus.wipe;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.provider.Settings.System;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.LinkedList;
import org.antivirus.AvApplication;
import org.antivirus.core.Logger;

public final class ai
{
  Context a;

  public ai(Context paramContext)
  {
    this.a = paramContext;
  }

  public static boolean a()
  {
    boolean bool1 = true;
    int i = 0;
    if (Integer.parseInt(Build.VERSION.SDK) < 4);
    while (true)
    {
      return bool1;
      try
      {
        Class localClass = Class.forName("android.content.IContentService");
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Boolean.TYPE;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.valueOf(false);
        Object[] arrayOfObject2 = new Object[0];
        Class[] arrayOfClass2 = new Class[0];
        Object localObject2 = ContentResolver.class.getMethod("getContentService", arrayOfClass2).invoke(null, arrayOfObject2);
        while (true)
        {
          try
          {
            Method localMethod3 = localClass.getDeclaredMethod("setMasterSyncAutomatically", arrayOfClass1);
            localMethod3.invoke(localObject2, arrayOfObject1);
            Method localMethod4 = localClass.getDeclaredMethod("getMasterSyncAutomatically", arrayOfClass2);
            boolean bool3 = ((Boolean)localMethod4.invoke(localObject2, arrayOfObject2)).booleanValue();
            int j = 10;
            if ((bool3) && (j > 0))
            {
              Thread.sleep(2000L);
              localMethod3.invoke(localObject2, arrayOfObject1);
              boolean bool4 = ((Boolean)localMethod4.invoke(localObject2, arrayOfObject2)).booleanValue();
              j--;
              bool3 = bool4;
              continue;
            }
            bool2 = bool1;
            if (i == 0);
          }
          catch (Exception localException3)
          {
            try
            {
              Method localMethod1 = localClass.getDeclaredMethod("setListenForNetworkTickles", arrayOfClass1);
              Method localMethod2 = localClass.getMethod("cancelSync", new Class[] { Uri.class });
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = Uri.parse("content://gmail-ls/");
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = Uri.parse("content://contacts/");
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = Uri.parse("content://calendar/");
              localMethod2.invoke(localObject2, arrayOfObject5);
              localMethod2.invoke(localObject2, arrayOfObject4);
              localMethod2.invoke(localObject2, arrayOfObject3);
              localMethod1.invoke(localObject2, arrayOfObject1);
              bool2 = bool1;
              bool1 = bool2;
              break;
              localException3 = localException3;
              Logger.log(localException3);
              i = bool1;
              bool2 = false;
            }
            catch (Exception localException4)
            {
              try
              {
                Logger.log(localException4);
              }
              catch (Exception localException2)
              {
              }
            }
          }
          Logger.log(localException2);
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          Object localObject1 = localException1;
          boolean bool2 = false;
        }
      }
    }
  }

  private static boolean a(String paramString)
  {
    HashSet localHashSet = new HashSet();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(new File(paramString));
    boolean bool = true;
    File localFile1;
    label89: File localFile2;
    while (true)
      if (localLinkedList.size() > 0)
      {
        localFile1 = (File)localLinkedList.remove();
        if (localFile1 != null)
        {
          try
          {
            if (!localFile1.isDirectory())
              break;
            if (localFile1 != null)
              break label89;
            throw new NullPointerException("null file");
          }
          catch (Exception localException)
          {
            Logger.log(localException);
            bool = false;
          }
          continue;
          if (localFile1.getParent() == null)
            break label259;
          localFile2 = new File(localFile1.getParentFile().getCanonicalFile(), localFile1.getName());
          label119: if (localFile2.getCanonicalFile().equals(localFile2.getAbsoluteFile()))
            break label266;
        }
      }
    label259: label266: for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        if (localFile1.listFiles() == null)
          break;
        if (localFile1.listFiles().length == 0)
        {
          localFile1.delete();
          break;
        }
        File[] arrayOfFile = localFile1.listFiles();
        int j = arrayOfFile.length;
        for (int k = 0; k < j; k++)
          localLinkedList.add(arrayOfFile[k]);
        if (localHashSet.contains(localFile1.getAbsolutePath()))
          break;
        localLinkedList.add(localFile1);
        localHashSet.add(localFile1.getAbsolutePath());
        break;
      }
      localFile1.delete();
      break;
      localHashSet.clear();
      localLinkedList.clear();
      return bool;
      localFile2 = localFile1;
      break label119;
    }
  }

  // ERROR //
  public static boolean c()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: getstatic 22	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   5: invokestatic 28	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   8: bipush 7
    //   10: if_icmpgt +251 -> 261
    //   13: ldc 176
    //   15: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   18: astore 47
    //   20: aload 47
    //   22: invokevirtual 180	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   25: astore 48
    //   27: iconst_0
    //   28: anewarray 4	java/lang/Object
    //   31: astore 49
    //   33: aload 48
    //   35: iconst_0
    //   36: aaload
    //   37: aload 49
    //   39: invokevirtual 186	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   42: astore 50
    //   44: aload 47
    //   46: ldc 188
    //   48: iconst_1
    //   49: anewarray 32	java/lang/Class
    //   52: dup
    //   53: iconst_0
    //   54: ldc 190
    //   56: aastore
    //   57: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   60: astore 51
    //   62: iconst_1
    //   63: anewarray 4	java/lang/Object
    //   66: astore 52
    //   68: aload 52
    //   70: iconst_0
    //   71: new 190	java/lang/String
    //   74: dup
    //   75: ldc 192
    //   77: invokespecial 193	java/lang/String:<init>	(Ljava/lang/String;)V
    //   80: aastore
    //   81: aload 51
    //   83: aload 50
    //   85: aload 52
    //   87: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   90: checkcast 195	android/os/IBinder
    //   93: astore 53
    //   95: ldc 197
    //   97: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   100: astore 54
    //   102: aload 54
    //   104: invokevirtual 201	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   107: iconst_0
    //   108: aaload
    //   109: astore 55
    //   111: aload 55
    //   113: ldc 203
    //   115: iconst_1
    //   116: anewarray 32	java/lang/Class
    //   119: dup
    //   120: iconst_0
    //   121: ldc 195
    //   123: aastore
    //   124: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   127: aload 55
    //   129: iconst_1
    //   130: anewarray 4	java/lang/Object
    //   133: dup
    //   134: iconst_0
    //   135: aload 53
    //   137: aastore
    //   138: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   141: astore 56
    //   143: iconst_1
    //   144: anewarray 32	java/lang/Class
    //   147: dup
    //   148: iconst_0
    //   149: ldc 190
    //   151: aastore
    //   152: astore 57
    //   154: aload 54
    //   156: ldc 205
    //   158: aload 57
    //   160: invokevirtual 54	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   163: astore 58
    //   165: aload 54
    //   167: ldc 207
    //   169: aload 57
    //   171: invokevirtual 54	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   174: astore 59
    //   176: iconst_1
    //   177: anewarray 4	java/lang/Object
    //   180: astore 60
    //   182: aload 60
    //   184: iconst_0
    //   185: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   188: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   191: aastore
    //   192: aload 58
    //   194: aload 56
    //   196: aload 60
    //   198: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   201: pop
    //   202: aload 59
    //   204: aload 56
    //   206: aload 60
    //   208: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   211: pop
    //   212: iload_0
    //   213: ifne +657 -> 870
    //   216: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   219: invokevirtual 165	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   222: invokestatic 217	org/antivirus/wipe/ai:a	(Ljava/lang/String;)Z
    //   225: istore 7
    //   227: iload 7
    //   229: istore_2
    //   230: new 109	java/io/File
    //   233: dup
    //   234: ldc 219
    //   236: invokespecial 112	java/io/File:<init>	(Ljava/lang/String;)V
    //   239: astore_3
    //   240: aload_3
    //   241: invokevirtual 127	java/io/File:isDirectory	()Z
    //   244: ifeq +15 -> 259
    //   247: aload_3
    //   248: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   251: invokestatic 217	org/antivirus/wipe/ai:a	(Ljava/lang/String;)Z
    //   254: istore 5
    //   256: iload 5
    //   258: istore_2
    //   259: iload_2
    //   260: ireturn
    //   261: getstatic 22	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   264: invokestatic 28	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   267: bipush 7
    //   269: if_icmplt +285 -> 554
    //   272: getstatic 22	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   275: invokestatic 28	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   278: bipush 11
    //   280: if_icmpgt +274 -> 554
    //   283: ldc 176
    //   285: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   288: astore 28
    //   290: aload 28
    //   292: invokevirtual 180	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   295: astore 29
    //   297: iconst_0
    //   298: anewarray 4	java/lang/Object
    //   301: astore 30
    //   303: aload 29
    //   305: iconst_0
    //   306: aaload
    //   307: aload 30
    //   309: invokevirtual 186	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   312: astore 31
    //   314: aload 28
    //   316: ldc 188
    //   318: iconst_1
    //   319: anewarray 32	java/lang/Class
    //   322: dup
    //   323: iconst_0
    //   324: ldc 190
    //   326: aastore
    //   327: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   330: astore 32
    //   332: iconst_1
    //   333: anewarray 4	java/lang/Object
    //   336: astore 33
    //   338: aload 33
    //   340: iconst_0
    //   341: new 190	java/lang/String
    //   344: dup
    //   345: ldc 192
    //   347: invokespecial 193	java/lang/String:<init>	(Ljava/lang/String;)V
    //   350: aastore
    //   351: aload 32
    //   353: aload 31
    //   355: aload 33
    //   357: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   360: checkcast 195	android/os/IBinder
    //   363: astore 34
    //   365: ldc 221
    //   367: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   370: astore 35
    //   372: aload 35
    //   374: invokevirtual 201	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   377: iconst_0
    //   378: aaload
    //   379: astore 36
    //   381: aload 36
    //   383: ldc 203
    //   385: iconst_1
    //   386: anewarray 32	java/lang/Class
    //   389: dup
    //   390: iconst_0
    //   391: ldc 195
    //   393: aastore
    //   394: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   397: aload 36
    //   399: iconst_1
    //   400: anewarray 4	java/lang/Object
    //   403: dup
    //   404: iconst_0
    //   405: aload 34
    //   407: aastore
    //   408: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   411: astore 37
    //   413: iconst_1
    //   414: anewarray 32	java/lang/Class
    //   417: dup
    //   418: iconst_0
    //   419: ldc 190
    //   421: aastore
    //   422: astore 38
    //   424: iconst_2
    //   425: anewarray 32	java/lang/Class
    //   428: astore 39
    //   430: aload 39
    //   432: iconst_0
    //   433: ldc 190
    //   435: aastore
    //   436: aload 39
    //   438: iconst_1
    //   439: getstatic 42	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   442: aastore
    //   443: aload 35
    //   445: ldc 223
    //   447: aload 39
    //   449: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   452: astore 40
    //   454: aload 35
    //   456: ldc 225
    //   458: aload 38
    //   460: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   463: astore 41
    //   465: iconst_2
    //   466: anewarray 4	java/lang/Object
    //   469: astore 42
    //   471: aload 42
    //   473: iconst_0
    //   474: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   477: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   480: aastore
    //   481: aload 42
    //   483: iconst_1
    //   484: iconst_1
    //   485: invokestatic 46	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   488: aastore
    //   489: iconst_1
    //   490: anewarray 4	java/lang/Object
    //   493: astore 43
    //   495: aload 43
    //   497: iconst_0
    //   498: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   501: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   504: aastore
    //   505: aload 40
    //   507: aload 37
    //   509: aload 42
    //   511: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   514: pop
    //   515: ldc2_w 71
    //   518: invokestatic 78	java/lang/Thread:sleep	(J)V
    //   521: aload 41
    //   523: aload 37
    //   525: aload 43
    //   527: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   530: astore 45
    //   532: aload 45
    //   534: ifnull +351 -> 885
    //   537: aload 45
    //   539: checkcast 24	java/lang/Integer
    //   542: invokevirtual 228	java/lang/Integer:intValue	()I
    //   545: ifne +340 -> 885
    //   548: iload_0
    //   549: istore 46
    //   551: goto +337 -> 888
    //   554: ldc 176
    //   556: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   559: astore 8
    //   561: aload 8
    //   563: invokevirtual 180	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   566: astore 9
    //   568: iconst_0
    //   569: anewarray 4	java/lang/Object
    //   572: astore 10
    //   574: aload 9
    //   576: iconst_0
    //   577: aaload
    //   578: aload 10
    //   580: invokevirtual 186	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   583: astore 11
    //   585: aload 8
    //   587: ldc 188
    //   589: iconst_1
    //   590: anewarray 32	java/lang/Class
    //   593: dup
    //   594: iconst_0
    //   595: ldc 190
    //   597: aastore
    //   598: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   601: astore 12
    //   603: iconst_1
    //   604: anewarray 4	java/lang/Object
    //   607: astore 13
    //   609: aload 13
    //   611: iconst_0
    //   612: new 190	java/lang/String
    //   615: dup
    //   616: ldc 192
    //   618: invokespecial 193	java/lang/String:<init>	(Ljava/lang/String;)V
    //   621: aastore
    //   622: aload 12
    //   624: aload 11
    //   626: aload 13
    //   628: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   631: checkcast 195	android/os/IBinder
    //   634: astore 14
    //   636: ldc 221
    //   638: invokestatic 36	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   641: astore 15
    //   643: aload 15
    //   645: invokevirtual 201	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   648: iconst_0
    //   649: aaload
    //   650: astore 16
    //   652: aload 16
    //   654: ldc 203
    //   656: iconst_1
    //   657: anewarray 32	java/lang/Class
    //   660: dup
    //   661: iconst_0
    //   662: ldc 195
    //   664: aastore
    //   665: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   668: aload 16
    //   670: iconst_1
    //   671: anewarray 4	java/lang/Object
    //   674: dup
    //   675: iconst_0
    //   676: aload 14
    //   678: aastore
    //   679: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   682: astore 17
    //   684: iconst_1
    //   685: anewarray 32	java/lang/Class
    //   688: dup
    //   689: iconst_0
    //   690: ldc 190
    //   692: aastore
    //   693: astore 18
    //   695: iconst_3
    //   696: anewarray 32	java/lang/Class
    //   699: astore 19
    //   701: aload 19
    //   703: iconst_0
    //   704: ldc 190
    //   706: aastore
    //   707: aload 19
    //   709: iconst_1
    //   710: getstatic 42	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   713: aastore
    //   714: aload 19
    //   716: iconst_2
    //   717: getstatic 42	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   720: aastore
    //   721: aload 15
    //   723: ldc 223
    //   725: aload 19
    //   727: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   730: astore 20
    //   732: aload 15
    //   734: ldc 225
    //   736: aload 18
    //   738: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   741: astore 21
    //   743: iconst_3
    //   744: anewarray 4	java/lang/Object
    //   747: astore 22
    //   749: aload 22
    //   751: iconst_0
    //   752: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   755: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   758: aastore
    //   759: aload 22
    //   761: iconst_1
    //   762: iconst_1
    //   763: invokestatic 46	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   766: aastore
    //   767: aload 22
    //   769: iconst_2
    //   770: iconst_1
    //   771: invokestatic 46	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   774: aastore
    //   775: iconst_1
    //   776: anewarray 4	java/lang/Object
    //   779: astore 23
    //   781: aload 23
    //   783: iconst_0
    //   784: invokestatic 212	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   787: invokevirtual 215	java/io/File:toString	()Ljava/lang/String;
    //   790: aastore
    //   791: aload 20
    //   793: aload 17
    //   795: aload 22
    //   797: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   800: pop
    //   801: ldc2_w 71
    //   804: invokestatic 78	java/lang/Thread:sleep	(J)V
    //   807: aload 21
    //   809: aload 17
    //   811: aload 23
    //   813: invokevirtual 60	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   816: astore 25
    //   818: iconst_0
    //   819: istore 26
    //   821: aload 25
    //   823: ifnull +24 -> 847
    //   826: aload 25
    //   828: checkcast 24	java/lang/Integer
    //   831: invokevirtual 228	java/lang/Integer:intValue	()I
    //   834: istore 27
    //   836: iconst_0
    //   837: istore 26
    //   839: iload 27
    //   841: ifne +6 -> 847
    //   844: iload_0
    //   845: istore 26
    //   847: iload 26
    //   849: istore_0
    //   850: goto -638 -> 212
    //   853: astore_1
    //   854: aload_1
    //   855: invokestatic 100	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   858: iconst_0
    //   859: istore_0
    //   860: goto -648 -> 212
    //   863: astore 6
    //   865: aload 6
    //   867: invokestatic 100	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   870: iload_0
    //   871: istore_2
    //   872: goto -642 -> 230
    //   875: astore 4
    //   877: aload 4
    //   879: invokestatic 100	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   882: goto -623 -> 259
    //   885: iconst_0
    //   886: istore 46
    //   888: iload 46
    //   890: istore_0
    //   891: goto -679 -> 212
    //
    // Exception table:
    //   from	to	target	type
    //   2	212	853	java/lang/Exception
    //   261	836	853	java/lang/Exception
    //   216	227	863	java/lang/Exception
    //   230	256	875	java/lang/Exception
  }

  public static void e()
  {
    int i = 0;
    if (Integer.parseInt(Build.VERSION.SDK) >= 5)
      try
      {
        Class localClass1 = Class.forName("android.accounts.AccountManager");
        Class localClass2 = Class.forName("android.accounts.Account");
        Class localClass3 = Class.forName("android.accounts.AccountManagerCallback");
        Method localMethod1 = localClass1.getDeclaredMethod("get", new Class[] { Context.class });
        Method localMethod2 = localClass1.getDeclaredMethod("getAccounts", new Class[0]);
        Method localMethod3 = localClass1.getDeclaredMethod("clearPassword", new Class[] { localClass2 });
        Method localMethod4 = localClass1.getDeclaredMethod("removeAccount", new Class[] { localClass2, localClass3, Handler.class });
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = AvApplication.getInstance();
        Object localObject1 = localMethod1.invoke(null, arrayOfObject1);
        Object[] arrayOfObject2 = (Object[])localMethod2.invoke(localObject1, new Object[0]);
        if (arrayOfObject2 != null)
        {
          int j = arrayOfObject2.length;
          while (i < j)
          {
            Object localObject2 = arrayOfObject2[i];
            localMethod3.invoke(localObject1, new Object[] { localObject2 });
            localMethod4.invoke(localObject1, new Object[] { localObject2, null, null });
            i++;
          }
        }
      }
      catch (Exception localException)
      {
        Logger.error("cannot delete account");
        Logger.log(localException);
      }
  }

  final void a(Uri paramUri)
  {
    try
    {
      this.a.getContentResolver().delete(paramUri, null, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void b()
  {
    int i = 0;
    String[] arrayOfString = { "content://browser/bookmarks", "content://sms", "content://sms/inbox", "content://sms/inbox", "content://mms/inbox", "content://mms/outbox", "content://media/external/video", "content://media/internal/audio", "content://media/external/audio", "content://media/internal/video", "content://media/external/audio/playlists", "content://call_log/calls", "content://browser/searches", "content://subscribedfeeds/feeds", "content://subscribedfeeds/deleted_feeds", "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://com.android.contacts/raw_contact_entities", "content://com.android.contacts/emails", "content://com.android.contacts/postals", "content://com.android.contacts/groups", "content://com.android.contacts/groups_summary", "content://com.android.email.provider", "content://com.android.email.provider/account/", "content://com.android.email.provider/mailbox/", "content://com.android.email.provider/message/", "content://com.android.email.provider/attachment/", "content://com.android.email.provider/body/", "content://com.android.email.provider/hostauth/", "content://com.android.email.provider/syncedMessage/", "content://com.android.email.provider/deletedMessage/", "content://android.server.checkin", "content://android.server.checkin/events", "content://android.server.checkin/stats", "content://android.server.checkin/properties", "content://android.server.checkin/crashes", "content://downloads/download", "content://contacts/people", "content://contacts/phones", "content://contacts/photos", "content://contacts/calls", "content://contacts/", "content://contacts/settings", "content://contacts/deleted_people", "content://contacts/people/with_email_or_im_filter", "content://contacts/groups", "content://contacts/deleted_groups", "content://contacts/groupmembership", "content://contacts/groupmembershipraw", "content://contacts/contact_methods", "content://contacts/contact_methods/email", "content://contacts/presence", "content://contacts/organizations", "content://contacts/photos", "content://contacts/extensions", "content://com.android.contacts/raw_contacts", "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://gmail-ls/conversations/", "content://gmail-ls/", "content://gmail-ls/labels/", "content://gmail-ls/messages/", "content://gmail-ls/settings/", "content://calendar/", "content://calendar/calendars", "content://calendar/attendees", "content://calendar/events", "content://calendar/deleted_events", "content://calendar/instances/whenbyday", "content://calendar/instances", "content://calendar/busybits/when", "content://calendar/busybits/", "content://calendar/reminders", "content://calendar/calendar_alerts", "content://calendar/calendar_alerts/by_instance", "content://calendar/extendedproperties", "content://com.android.browser/bookmarks", "content://com.android.browser/history" };
    int j = arrayOfString.length;
    while (i < j)
    {
      a(Uri.parse(arrayOfString[i]));
      i++;
    }
  }

  public final void d()
  {
    try
    {
      Settings.System.putInt(this.a.getContentResolver(), "lockscreen.lockedoutpermanently", 1);
      label15: return;
    }
    catch (Exception localException)
    {
      break label15;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.ai
 * JD-Core Version:    0.6.2
 */