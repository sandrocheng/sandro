package com.avast.android.mobilesecurity.app.manager;

import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.regex.Pattern;

class g extends AsyncTask
{
  final Pattern a = Pattern.compile("([0-9]+).*?([0-9]+)%");
  final Pattern b = Pattern.compile("^([0-9]+) \\S+ ([A-Z]) [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ ([0-9]+) ([0-9]+) [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ ([0-9]+) [\\-0-9]+ [\\-0-9]+ ([0-9]+) .*$");

  private g(AppDetailFragment paramAppDetailFragment)
  {
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   4: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   7: aload_0
    //   8: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   11: invokestatic 48	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:g	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    //   14: aload_0
    //   15: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   18: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   21: invokevirtual 57	com/avast/android/mobilesecurity/app/manager/a/b:a	(I)J
    //   24: putfield 62	com/avast/android/mobilesecurity/app/manager/h:f	J
    //   27: aload_0
    //   28: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   31: invokevirtual 66	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   34: ldc 68
    //   36: invokevirtual 74	android/support/v4/app/FragmentActivity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   39: checkcast 76	android/app/ActivityManager
    //   42: astore_1
    //   43: aload_0
    //   44: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   47: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   50: iconst_0
    //   51: putfield 80	com/avast/android/mobilesecurity/app/manager/h:h	I
    //   54: aload_1
    //   55: sipush 1000
    //   58: invokevirtual 84	android/app/ActivityManager:getRunningServices	(I)Ljava/util/List;
    //   61: invokeinterface 90 1 0
    //   66: astore_2
    //   67: aload_2
    //   68: invokeinterface 96 1 0
    //   73: ifeq +49 -> 122
    //   76: aload_2
    //   77: invokeinterface 100 1 0
    //   82: checkcast 102	android/app/ActivityManager$RunningServiceInfo
    //   85: getfield 105	android/app/ActivityManager$RunningServiceInfo:pid	I
    //   88: aload_0
    //   89: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   92: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   95: if_icmpne -28 -> 67
    //   98: aload_0
    //   99: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   102: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   105: astore 22
    //   107: aload 22
    //   109: iconst_1
    //   110: aload 22
    //   112: getfield 80	com/avast/android/mobilesecurity/app/manager/h:h	I
    //   115: iadd
    //   116: putfield 80	com/avast/android/mobilesecurity/app/manager/h:h	I
    //   119: goto -52 -> 67
    //   122: aload_0
    //   123: iconst_0
    //   124: anewarray 59	com/avast/android/mobilesecurity/app/manager/h
    //   127: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/g:publishProgress	([Ljava/lang/Object;)V
    //   130: new 111	java/io/BufferedReader
    //   133: dup
    //   134: new 113	java/io/InputStreamReader
    //   137: dup
    //   138: new 115	java/io/FileInputStream
    //   141: dup
    //   142: new 117	java/lang/StringBuilder
    //   145: dup
    //   146: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   149: ldc 120
    //   151: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload_0
    //   155: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   158: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   161: invokevirtual 127	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   164: ldc 129
    //   166: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokespecial 136	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   175: invokespecial 139	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   178: invokespecial 142	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   181: astore_3
    //   182: aload_3
    //   183: invokevirtual 145	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   186: astore 20
    //   188: aload 20
    //   190: ifnull +137 -> 327
    //   193: aload_0
    //   194: getfield 30	com/avast/android/mobilesecurity/app/manager/g:b	Ljava/util/regex/Pattern;
    //   197: aload 20
    //   199: invokevirtual 149	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   202: astore 21
    //   204: aload 21
    //   206: invokevirtual 154	java/util/regex/Matcher:matches	()Z
    //   209: ifeq +118 -> 327
    //   212: aload 21
    //   214: invokevirtual 158	java/util/regex/Matcher:groupCount	()I
    //   217: bipush 6
    //   219: if_icmpne +108 -> 327
    //   222: aload_0
    //   223: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   226: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   229: aload 21
    //   231: iconst_2
    //   232: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   235: iconst_0
    //   236: invokevirtual 168	java/lang/String:charAt	(I)C
    //   239: putfield 171	com/avast/android/mobilesecurity/app/manager/h:a	C
    //   242: aload_0
    //   243: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   246: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   249: aload 21
    //   251: iconst_3
    //   252: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   255: invokestatic 177	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   258: putfield 179	com/avast/android/mobilesecurity/app/manager/h:b	I
    //   261: aload_0
    //   262: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   265: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   268: aload 21
    //   270: iconst_4
    //   271: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   274: invokestatic 177	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   277: putfield 181	com/avast/android/mobilesecurity/app/manager/h:c	I
    //   280: aload_0
    //   281: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   284: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   287: aload 21
    //   289: iconst_5
    //   290: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   293: invokestatic 177	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   296: putfield 184	com/avast/android/mobilesecurity/app/manager/h:e	I
    //   299: aload_0
    //   300: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   303: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   306: aload 21
    //   308: bipush 6
    //   310: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   313: invokestatic 177	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   316: putfield 186	com/avast/android/mobilesecurity/app/manager/h:g	I
    //   319: aload_0
    //   320: iconst_0
    //   321: anewarray 59	com/avast/android/mobilesecurity/app/manager/h
    //   324: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/g:publishProgress	([Ljava/lang/Object;)V
    //   327: aload_3
    //   328: invokevirtual 189	java/io/BufferedReader:close	()V
    //   331: ldc 191
    //   333: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   336: pop
    //   337: new 111	java/io/BufferedReader
    //   340: dup
    //   341: new 113	java/io/InputStreamReader
    //   344: dup
    //   345: invokestatic 201	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   348: ldc 203
    //   350: invokevirtual 207	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   353: invokevirtual 213	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   356: invokespecial 139	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   359: invokespecial 142	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   362: astore 10
    //   364: ldc 215
    //   366: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   369: pop
    //   370: aload 10
    //   372: invokevirtual 145	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   375: astore 14
    //   377: aload 14
    //   379: ifnull +181 -> 560
    //   382: aload_0
    //   383: getfield 26	com/avast/android/mobilesecurity/app/manager/g:a	Ljava/util/regex/Pattern;
    //   386: aload 14
    //   388: invokevirtual 218	java/lang/String:trim	()Ljava/lang/String;
    //   391: invokevirtual 149	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   394: astore 16
    //   396: aload 16
    //   398: invokevirtual 221	java/util/regex/Matcher:find	()Z
    //   401: ifeq -31 -> 370
    //   404: aload 16
    //   406: invokevirtual 158	java/util/regex/Matcher:groupCount	()I
    //   409: iconst_2
    //   410: if_icmpne -40 -> 370
    //   413: new 117	java/lang/StringBuilder
    //   416: dup
    //   417: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   420: ldc 223
    //   422: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: aload_0
    //   426: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   429: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   432: invokevirtual 127	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   435: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: aload 16
    //   440: iconst_1
    //   441: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   444: invokevirtual 227	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   447: ifeq -77 -> 370
    //   450: aload_0
    //   451: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   454: getfield 44	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:b	Lcom/avast/android/mobilesecurity/app/manager/h;
    //   457: aload 16
    //   459: iconst_2
    //   460: invokevirtual 162	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   463: putfield 231	com/avast/android/mobilesecurity/app/manager/h:d	Ljava/lang/String;
    //   466: ldc 233
    //   468: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   471: pop
    //   472: aload_0
    //   473: iconst_0
    //   474: anewarray 59	com/avast/android/mobilesecurity/app/manager/h
    //   477: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/g:publishProgress	([Ljava/lang/Object;)V
    //   480: goto -110 -> 370
    //   483: astore 11
    //   485: aload 10
    //   487: invokevirtual 189	java/io/BufferedReader:close	()V
    //   490: ldc 235
    //   492: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   495: pop
    //   496: aload 11
    //   498: athrow
    //   499: astore 7
    //   501: aload 7
    //   503: invokevirtual 238	java/io/IOException:getMessage	()Ljava/lang/String;
    //   506: aload 7
    //   508: invokestatic 241	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   511: pop
    //   512: return
    //   513: astore 4
    //   515: aload_3
    //   516: invokevirtual 189	java/io/BufferedReader:close	()V
    //   519: aload 4
    //   521: athrow
    //   522: astore 18
    //   524: aload_0
    //   525: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   528: iconst_0
    //   529: invokestatic 244	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:a	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;I)I
    //   532: pop
    //   533: aload_0
    //   534: iconst_0
    //   535: anewarray 59	com/avast/android/mobilesecurity/app/manager/h
    //   538: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/g:publishProgress	([Ljava/lang/Object;)V
    //   541: goto -210 -> 331
    //   544: astore 5
    //   546: aload 5
    //   548: invokevirtual 245	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   551: aload 5
    //   553: invokestatic 241	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   556: pop
    //   557: goto -226 -> 331
    //   560: aload 10
    //   562: invokevirtual 189	java/io/BufferedReader:close	()V
    //   565: ldc 235
    //   567: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   570: pop
    //   571: goto -59 -> 512
    //
    // Exception table:
    //   from	to	target	type
    //   364	480	483	finally
    //   331	364	499	java/io/IOException
    //   485	499	499	java/io/IOException
    //   560	571	499	java/io/IOException
    //   182	327	513	finally
    //   130	182	522	java/io/FileNotFoundException
    //   327	331	522	java/io/FileNotFoundException
    //   515	522	522	java/io/FileNotFoundException
    //   130	182	544	java/lang/Exception
    //   327	331	544	java/lang/Exception
    //   515	522	544	java/lang/Exception
  }

  // ERROR //
  protected Void a(Void[] paramArrayOfVoid)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   4: invokevirtual 66	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   7: ldc 68
    //   9: invokevirtual 74	android/support/v4/app/FragmentActivity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   12: checkcast 76	android/app/ActivityManager
    //   15: astore_2
    //   16: aload_0
    //   17: invokevirtual 251	com/avast/android/mobilesecurity/app/manager/g:isCancelled	()Z
    //   20: ifne +226 -> 246
    //   23: aload_0
    //   24: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   27: invokevirtual 66	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   30: invokevirtual 254	android/support/v4/app/FragmentActivity:isFinishing	()Z
    //   33: ifne +213 -> 246
    //   36: aload_0
    //   37: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   40: invokestatic 257	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:e	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Z
    //   43: ifne +203 -> 246
    //   46: aload_0
    //   47: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   50: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   53: ifne +166 -> 219
    //   56: aload_2
    //   57: invokevirtual 261	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   60: astore_3
    //   61: aload_3
    //   62: ifnull +157 -> 219
    //   65: aload_3
    //   66: invokeinterface 90 1 0
    //   71: astore 4
    //   73: aload 4
    //   75: invokeinterface 96 1 0
    //   80: ifeq +120 -> 200
    //   83: aload 4
    //   85: invokeinterface 100 1 0
    //   90: checkcast 263	android/app/ActivityManager$RunningAppProcessInfo
    //   93: astore 7
    //   95: aload 7
    //   97: getfield 267	android/app/ActivityManager$RunningAppProcessInfo:pkgList	[Ljava/lang/String;
    //   100: astore 8
    //   102: aload 8
    //   104: arraylength
    //   105: istore 9
    //   107: iconst_0
    //   108: istore 10
    //   110: iload 10
    //   112: iload 9
    //   114: if_icmpge -41 -> 73
    //   117: aload 8
    //   119: iload 10
    //   121: aaload
    //   122: aload_0
    //   123: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   126: invokestatic 270	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:c	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;
    //   129: invokevirtual 227	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   132: ifeq +62 -> 194
    //   135: aload_0
    //   136: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   139: aload 7
    //   141: getfield 271	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   144: invokestatic 244	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:a	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;I)I
    //   147: pop
    //   148: new 117	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   155: ldc_w 273
    //   158: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   165: invokestatic 270	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:c	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;
    //   168: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc_w 275
    //   174: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: aload_0
    //   178: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   181: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   184: invokevirtual 127	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   187: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 195	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   193: pop
    //   194: iinc 10 1
    //   197: goto -87 -> 110
    //   200: aload_0
    //   201: iconst_0
    //   202: anewarray 59	com/avast/android/mobilesecurity/app/manager/h
    //   205: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/g:publishProgress	([Ljava/lang/Object;)V
    //   208: aload_0
    //   209: monitorenter
    //   210: aload_0
    //   211: ldc2_w 276
    //   214: invokevirtual 283	java/lang/Object:wait	(J)V
    //   217: aload_0
    //   218: monitorexit
    //   219: aload_0
    //   220: getfield 13	com/avast/android/mobilesecurity/app/manager/g:c	Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
    //   223: invokestatic 52	com/avast/android/mobilesecurity/app/manager/AppDetailFragment:f	(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    //   226: ifeq +7 -> 233
    //   229: aload_0
    //   230: invokespecial 285	com/avast/android/mobilesecurity/app/manager/g:a	()V
    //   233: invokestatic 290	java/lang/Thread:yield	()V
    //   236: goto -220 -> 16
    //   239: astore 6
    //   241: aload_0
    //   242: monitorexit
    //   243: aload 6
    //   245: athrow
    //   246: aconst_null
    //   247: areturn
    //   248: astore 5
    //   250: goto -33 -> 217
    //
    // Exception table:
    //   from	to	target	type
    //   210	217	239	finally
    //   217	219	239	finally
    //   241	243	239	finally
    //   210	217	248	java/lang/InterruptedException
  }

  protected void a(Void paramVoid)
  {
  }

  protected void a(h[] paramArrayOfh)
  {
    if ((!isCancelled()) && (!this.c.getActivity().isFinishing()))
    {
      AppDetailFragment.h(this.c);
      if (AppDetailFragment.f(this.c) == 0)
        break label573;
      ((TextView)this.c.getActivity().findViewById(2131165392)).setText("" + AppDetailFragment.f(this.c));
      ((TextView)this.c.getActivity().findViewById(2131165393)).setText("" + this.c.b.a);
      ((TextView)this.c.getActivity().findViewById(2131165394)).setText(this.c.b.b / 10 + "s");
      ((TextView)this.c.getActivity().findViewById(2131165395)).setText(this.c.b.c / 10 + "s");
      if (this.c.b.d == null)
        break label548;
      ((TextView)this.c.getActivity().findViewById(2131165396)).setText(this.c.b.d + "");
      this.c.getActivity().setProgressBarIndeterminateVisibility(false);
      ((TextView)this.c.getActivity().findViewById(2131165398)).setText("" + this.c.b.e);
      TextView localTextView1 = (TextView)this.c.getActivity().findViewById(2131165397);
      String str = "%s " + this.c.getString(2131493073);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.c.a.format(this.c.b.f);
      localTextView1.setText(String.format(str, arrayOfObject1));
      TextView localTextView2 = (TextView)this.c.getActivity().findViewById(2131165400);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(this.c.b.g / 1024.0F / 1024.0F);
      localTextView2.setText(String.format("%.1fM", arrayOfObject2));
      ((TextView)this.c.getActivity().findViewById(2131165399)).setText("" + this.c.b.h);
    }
    while (true)
    {
      return;
      label548: ((TextView)this.c.getActivity().findViewById(2131165396)).setText("…");
      break;
      label573: this.c.getActivity().setProgressBarIndeterminateVisibility(false);
      CharSequence localCharSequence = this.c.getActivity().getText(2131493600);
      ((TextView)this.c.getActivity().findViewById(2131165392)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165393)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165394)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165395)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165396)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165398)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165397)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165400)).setText(localCharSequence);
      ((TextView)this.c.getActivity().findViewById(2131165399)).setText(localCharSequence);
    }
  }

  protected void onCancelled()
  {
    super.onCancelled();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.g
 * JD-Core Version:    0.6.2
 */