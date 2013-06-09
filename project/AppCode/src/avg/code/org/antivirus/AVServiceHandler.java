package org.antivirus;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

public class AVServiceHandler extends Handler
{
  WeakReference a;

  public AVServiceHandler(AVService paramAVService, Looper paramLooper)
  {
    super(paramLooper);
    this.a = new WeakReference(paramAVService);
  }

  // ERROR //
  public void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 18	org/antivirus/AVServiceHandler:a	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 26	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 28	org/antivirus/AVService
    //   12: astore_3
    //   13: aload_3
    //   14: ifnonnull +4 -> 18
    //   17: return
    //   18: aload_1
    //   19: ifnull +977 -> 996
    //   22: aload_1
    //   23: getfield 34	android/os/Message:obj	Ljava/lang/Object;
    //   26: checkcast 36	android/os/Bundle
    //   29: astore 4
    //   31: aload 4
    //   33: ifnull +16 -> 49
    //   36: aload 4
    //   38: ldc 38
    //   40: iconst_m1
    //   41: invokevirtual 42	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   44: istore 11
    //   46: iload 11
    //   48: istore_2
    //   49: aload 4
    //   51: astore 5
    //   53: iload_2
    //   54: lookupswitch	default:+58->112, -1:+417->471, 23:+461->515, 102:+484->538, 114:+493->547, 500:+500->554, 502:+507->561
    //   113: invokevirtual 46	org/antivirus/AVService:m	()Z
    //   116: ifeq -99 -> 17
    //   119: iload_2
    //   120: lookupswitch	default:+316->436, 1:+-103->17, 2:+-103->17, 3:+455->575, 4:+448->568, 5:+564->684, 6:+589->709, 7:+661->781, 10:+480->600, 11:+489->609, 19:+748->868, 20:+762->882, 22:+610->730, 24:+670->790, 25:+677->797, 26:+708->828, 27:+739->859, 100:+464->584, 103:+498->618, 106:+505->625, 107:+512->632, 109:+537->657, 110:+546->666, 111:+555->675, 112:+473->593, 113:+603->723, 117:+778->898, 118:+787->907, 119:+794->914, 120:+801->921, 122:+816->936, 314:+519->639, 315:+528->648, 317:+771->891, 321:+648->768, 501:+831->951, 503:+838->958, 504:+847->967, 506:+856->976
    //   437: nop
    //   438: faload
    //   439: dup
    //   440: ldc 50
    //   442: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: iload_2
    //   446: invokevirtual 57	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   449: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: invokestatic 66	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   455: goto -438 -> 17
    //   458: astore 9
    //   460: aconst_null
    //   461: astore 5
    //   463: aload 9
    //   465: invokestatic 70	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   468: goto -415 -> 53
    //   471: new 48	java/lang/StringBuilder
    //   474: dup
    //   475: ldc 72
    //   477: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   480: astore 6
    //   482: aload_1
    //   483: ifnonnull +23 -> 506
    //   486: ldc 74
    //   488: astore 7
    //   490: aload 6
    //   492: aload 7
    //   494: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokestatic 66	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   503: goto -486 -> 17
    //   506: aload_1
    //   507: invokevirtual 78	android/os/Message:toString	()Ljava/lang/String;
    //   510: astore 7
    //   512: goto -22 -> 490
    //   515: aload_3
    //   516: invokevirtual 46	org/antivirus/AVService:m	()Z
    //   519: ifeq +12 -> 531
    //   522: aload_3
    //   523: aload 5
    //   525: invokevirtual 81	org/antivirus/AVService:m	(Landroid/os/Bundle;)V
    //   528: goto -511 -> 17
    //   531: aload_3
    //   532: invokevirtual 85	org/antivirus/AVService:h	()V
    //   535: goto -518 -> 17
    //   538: aload_3
    //   539: aload 5
    //   541: invokevirtual 88	org/antivirus/AVService:l	(Landroid/os/Bundle;)V
    //   544: goto -527 -> 17
    //   547: aload_3
    //   548: invokevirtual 91	org/antivirus/AVService:c	()V
    //   551: goto -534 -> 17
    //   554: aload_3
    //   555: invokevirtual 94	org/antivirus/AVService:n	()V
    //   558: goto -541 -> 17
    //   561: aload_3
    //   562: invokevirtual 97	org/antivirus/AVService:p	()V
    //   565: goto -548 -> 17
    //   568: aload_3
    //   569: invokevirtual 99	org/antivirus/AVService:a	()V
    //   572: goto -555 -> 17
    //   575: aload_3
    //   576: aload 5
    //   578: invokevirtual 101	org/antivirus/AVService:a	(Landroid/os/Bundle;)V
    //   581: goto -564 -> 17
    //   584: aload_3
    //   585: aload 5
    //   587: invokevirtual 104	org/antivirus/AVService:b	(Landroid/os/Bundle;)V
    //   590: goto -573 -> 17
    //   593: aload_3
    //   594: invokevirtual 107	org/antivirus/AVService:e	()V
    //   597: goto -580 -> 17
    //   600: aload_3
    //   601: aload 5
    //   603: invokevirtual 109	org/antivirus/AVService:c	(Landroid/os/Bundle;)V
    //   606: goto -589 -> 17
    //   609: aload_3
    //   610: aload 5
    //   612: invokevirtual 112	org/antivirus/AVService:d	(Landroid/os/Bundle;)V
    //   615: goto -598 -> 17
    //   618: aload_3
    //   619: invokevirtual 114	org/antivirus/AVService:d	()V
    //   622: goto -605 -> 17
    //   625: aload_3
    //   626: invokevirtual 117	org/antivirus/AVService:k	()V
    //   629: goto -612 -> 17
    //   632: aload_3
    //   633: invokevirtual 119	org/antivirus/AVService:l	()V
    //   636: goto -619 -> 17
    //   639: aload_3
    //   640: aload 5
    //   642: invokevirtual 121	org/antivirus/AVService:e	(Landroid/os/Bundle;)V
    //   645: goto -628 -> 17
    //   648: aload_3
    //   649: aload 5
    //   651: invokevirtual 124	org/antivirus/AVService:f	(Landroid/os/Bundle;)V
    //   654: goto -637 -> 17
    //   657: aload_3
    //   658: aload 5
    //   660: invokevirtual 127	org/antivirus/AVService:g	(Landroid/os/Bundle;)V
    //   663: goto -646 -> 17
    //   666: aload_3
    //   667: aload 5
    //   669: invokevirtual 129	org/antivirus/AVService:h	(Landroid/os/Bundle;)V
    //   672: goto -655 -> 17
    //   675: aload_3
    //   676: aload 5
    //   678: invokevirtual 132	org/antivirus/AVService:i	(Landroid/os/Bundle;)V
    //   681: goto -664 -> 17
    //   684: aload 5
    //   686: ldc 134
    //   688: invokevirtual 138	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   691: pop
    //   692: aload_3
    //   693: aload 5
    //   695: ldc 140
    //   697: invokevirtual 143	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   700: checkcast 145	android/os/Messenger
    //   703: invokevirtual 148	org/antivirus/AVService:a	(Landroid/os/Messenger;)V
    //   706: goto -689 -> 17
    //   709: aload_3
    //   710: aload 5
    //   712: ldc 134
    //   714: invokevirtual 138	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   717: invokevirtual 150	org/antivirus/AVService:a	(Ljava/lang/String;)V
    //   720: goto -703 -> 17
    //   723: aload_3
    //   724: invokevirtual 152	org/antivirus/AVService:f	()V
    //   727: goto -710 -> 17
    //   730: aload_3
    //   731: aload 5
    //   733: ldc 134
    //   735: invokevirtual 143	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   738: checkcast 154	org/antivirus/core/scanners/c
    //   741: iconst_1
    //   742: aload 5
    //   744: ldc 156
    //   746: invokevirtual 160	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   749: checkcast 162	org/antivirus/core/scanners/ScannerFilesConfig
    //   752: aload 5
    //   754: ldc 140
    //   756: invokevirtual 143	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   759: checkcast 145	android/os/Messenger
    //   762: invokevirtual 165	org/antivirus/AVService:a	(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V
    //   765: goto -748 -> 17
    //   768: aload_3
    //   769: getstatic 168	org/antivirus/core/scanners/c:a	Lorg/antivirus/core/scanners/c;
    //   772: iconst_0
    //   773: aconst_null
    //   774: aconst_null
    //   775: invokevirtual 165	org/antivirus/AVService:a	(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V
    //   778: goto -761 -> 17
    //   781: aload_3
    //   782: aload 5
    //   784: invokevirtual 171	org/antivirus/AVService:o	(Landroid/os/Bundle;)V
    //   787: goto -770 -> 17
    //   790: aload_3
    //   791: invokevirtual 173	org/antivirus/AVService:b	()V
    //   794: goto -777 -> 17
    //   797: aload_3
    //   798: aload 5
    //   800: ldc 134
    //   802: invokevirtual 176	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   805: aload 5
    //   807: ldc 178
    //   809: invokevirtual 143	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   812: checkcast 154	org/antivirus/core/scanners/c
    //   815: aload 5
    //   817: ldc 180
    //   819: invokevirtual 160	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   822: invokevirtual 183	org/antivirus/AVService:a	(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V
    //   825: goto -808 -> 17
    //   828: aload_3
    //   829: aload 5
    //   831: ldc 134
    //   833: invokevirtual 176	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   836: aload 5
    //   838: ldc 178
    //   840: invokevirtual 143	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   843: checkcast 154	org/antivirus/core/scanners/c
    //   846: aload 5
    //   848: ldc 180
    //   850: invokevirtual 160	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   853: invokevirtual 185	org/antivirus/AVService:b	(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V
    //   856: goto -839 -> 17
    //   859: aload_3
    //   860: aload 5
    //   862: invokevirtual 188	org/antivirus/AVService:j	(Landroid/os/Bundle;)V
    //   865: goto -848 -> 17
    //   868: aload_3
    //   869: aload 5
    //   871: ldc 134
    //   873: invokevirtual 192	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   876: invokevirtual 194	org/antivirus/AVService:p	(Landroid/os/Bundle;)V
    //   879: goto -862 -> 17
    //   882: aload_3
    //   883: aload 5
    //   885: invokevirtual 196	org/antivirus/AVService:n	(Landroid/os/Bundle;)V
    //   888: goto -871 -> 17
    //   891: aload_3
    //   892: invokevirtual 198	org/antivirus/AVService:j	()V
    //   895: goto -878 -> 17
    //   898: aload_3
    //   899: aload 5
    //   901: invokevirtual 200	org/antivirus/AVService:k	(Landroid/os/Bundle;)V
    //   904: goto -887 -> 17
    //   907: aload_3
    //   908: invokevirtual 202	org/antivirus/AVService:g	()V
    //   911: goto -894 -> 17
    //   914: aload_3
    //   915: invokevirtual 204	org/antivirus/AVService:i	()V
    //   918: goto -901 -> 17
    //   921: aload_3
    //   922: aload 5
    //   924: ldc 134
    //   926: invokevirtual 138	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   929: iconst_0
    //   930: invokevirtual 207	org/antivirus/AVService:a	(Ljava/lang/String;Z)V
    //   933: goto -916 -> 17
    //   936: aload_3
    //   937: aload 5
    //   939: ldc 134
    //   941: invokevirtual 138	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   944: iconst_1
    //   945: invokevirtual 207	org/antivirus/AVService:a	(Ljava/lang/String;Z)V
    //   948: goto -931 -> 17
    //   951: aload_3
    //   952: invokevirtual 209	org/antivirus/AVService:o	()V
    //   955: goto -938 -> 17
    //   958: aload_3
    //   959: aload 5
    //   961: invokevirtual 212	org/antivirus/AVService:q	(Landroid/os/Bundle;)V
    //   964: goto -947 -> 17
    //   967: aload_3
    //   968: aload 5
    //   970: invokevirtual 215	org/antivirus/AVService:r	(Landroid/os/Bundle;)V
    //   973: goto -956 -> 17
    //   976: aload_3
    //   977: invokevirtual 217	org/antivirus/AVService:q	()V
    //   980: goto -963 -> 17
    //   983: astore 10
    //   985: aload 4
    //   987: astore 5
    //   989: aload 10
    //   991: astore 9
    //   993: goto -530 -> 463
    //   996: aconst_null
    //   997: astore 4
    //   999: goto -950 -> 49
    //
    // Exception table:
    //   from	to	target	type
    //   22	31	458	java/lang/Exception
    //   36	46	983	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVServiceHandler
 * JD-Core Version:    0.6.2
 */