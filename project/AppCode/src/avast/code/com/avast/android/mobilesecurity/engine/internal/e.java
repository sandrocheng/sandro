package com.avast.android.mobilesecurity.engine.internal;

import android.content.Context;
import com.avast.android.mobilesecurity.engine.ab;
import com.avast.android.mobilesecurity.engine.ac;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.r;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;

public class e
{
  // ERROR //
  @android.annotation.SuppressLint({"NewApi"})
  public static ac a(Context paramContext, java.lang.Integer paramInteger, File paramFile, android.content.pm.PackageInfo paramPackageInfo, com.avast.android.mobilesecurity.engine.s params, ab paramab, r paramr)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: invokestatic 22	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;
    //   5: astore 7
    //   7: aload 7
    //   9: ifnull +1780 -> 1789
    //   12: aload 7
    //   14: getfield 27	com/avast/android/mobilesecurity/engine/al:a	Ljava/lang/String;
    //   17: invokestatic 33	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   20: ldc 35
    //   22: ldc 37
    //   24: invokevirtual 41	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   27: ldc 35
    //   29: ldc 37
    //   31: invokevirtual 41	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   34: astore 8
    //   36: aconst_null
    //   37: astore 9
    //   39: aload_3
    //   40: ifnull +9 -> 49
    //   43: aload_3
    //   44: getfield 47	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   47: astore 9
    //   49: getstatic 53	com/avast/android/mobilesecurity/engine/internal/g:b	Lcom/avast/android/mobilesecurity/engine/internal/g;
    //   52: aload_2
    //   53: bipush 64
    //   55: invokestatic 58	com/avast/android/mobilesecurity/engine/internal/f:a	(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/File;I)Ljava/lang/String;
    //   58: astore 100
    //   60: aload 100
    //   62: astore 11
    //   64: aload 11
    //   66: ifnonnull +27 -> 93
    //   69: getstatic 64	com/avast/android/mobilesecurity/engine/ac:e	Lcom/avast/android/mobilesecurity/engine/ac;
    //   72: astore 24
    //   74: aload 24
    //   76: areturn
    //   77: astore 99
    //   79: aconst_null
    //   80: astore 11
    //   82: goto -18 -> 64
    //   85: astore 10
    //   87: aconst_null
    //   88: astore 11
    //   90: goto -26 -> 64
    //   93: aload_2
    //   94: aload 11
    //   96: aload_0
    //   97: aload 9
    //   99: aload 4
    //   101: aload 5
    //   103: invokestatic 67	com/avast/android/mobilesecurity/engine/internal/e:a	(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;)Ljava/io/File;
    //   106: astore 12
    //   108: aload 12
    //   110: ifnonnull +11 -> 121
    //   113: getstatic 69	com/avast/android/mobilesecurity/engine/ac:b	Lcom/avast/android/mobilesecurity/engine/ac;
    //   116: astore 24
    //   118: goto -44 -> 74
    //   121: aload_0
    //   122: aload_1
    //   123: invokestatic 74	com/avast/android/mobilesecurity/engine/internal/n:b	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    //   126: astore 13
    //   128: aload 13
    //   130: ifnonnull +11 -> 141
    //   133: getstatic 76	com/avast/android/mobilesecurity/engine/ac:a	Lcom/avast/android/mobilesecurity/engine/ac;
    //   136: astore 24
    //   138: goto -64 -> 74
    //   141: aconst_null
    //   142: astore 14
    //   144: ldc 78
    //   146: invokestatic 83	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   149: astore 38
    //   151: aload 38
    //   153: astore 16
    //   155: aload 16
    //   157: invokevirtual 86	android/b/a/a:b	()V
    //   160: new 88	java/util/ArrayList
    //   163: dup
    //   164: invokespecial 91	java/util/ArrayList:<init>	()V
    //   167: astore 41
    //   169: aload 41
    //   171: new 93	org/apache/http/message/BasicNameValuePair
    //   174: dup
    //   175: ldc 95
    //   177: aload 12
    //   179: invokevirtual 101	java/io/File:length	()J
    //   182: invokestatic 107	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   185: invokespecial 110	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   188: invokeinterface 116 2 0
    //   193: pop
    //   194: aload 41
    //   196: new 93	org/apache/http/message/BasicNameValuePair
    //   199: dup
    //   200: ldc 118
    //   202: aload 11
    //   204: invokespecial 110	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: invokeinterface 116 2 0
    //   212: pop
    //   213: aload 41
    //   215: new 93	org/apache/http/message/BasicNameValuePair
    //   218: dup
    //   219: ldc 120
    //   221: ldc 122
    //   223: invokespecial 110	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   226: invokeinterface 116 2 0
    //   231: pop
    //   232: aload 41
    //   234: new 93	org/apache/http/message/BasicNameValuePair
    //   237: dup
    //   238: ldc 124
    //   240: aload 8
    //   242: invokespecial 110	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   245: invokeinterface 116 2 0
    //   250: pop
    //   251: aload 41
    //   253: new 93	org/apache/http/message/BasicNameValuePair
    //   256: dup
    //   257: ldc 126
    //   259: aload 4
    //   261: getfield 130	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   264: invokespecial 110	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   267: invokeinterface 116 2 0
    //   272: pop
    //   273: aload 13
    //   275: getfield 133	com/avast/android/mobilesecurity/engine/y:b	Ljava/lang/String;
    //   278: aload 13
    //   280: getfield 134	com/avast/android/mobilesecurity/engine/y:a	Ljava/lang/String;
    //   283: aload 13
    //   285: getfield 138	com/avast/android/mobilesecurity/engine/y:c	Ljava/lang/Integer;
    //   288: invokevirtual 144	java/lang/Integer:intValue	()I
    //   291: aload 13
    //   293: getfield 147	com/avast/android/mobilesecurity/engine/y:d	Ljava/lang/String;
    //   296: aload 41
    //   298: ldc 149
    //   300: invokestatic 155	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   303: aconst_null
    //   304: invokestatic 161	org/apache/http/client/utils/URIUtils:createURI	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    //   307: astore 47
    //   309: new 163	org/apache/http/client/methods/HttpPost
    //   312: dup
    //   313: new 165	java/lang/StringBuilder
    //   316: dup
    //   317: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   320: aload 47
    //   322: invokevirtual 172	java/net/URI:toString	()Ljava/lang/String;
    //   325: ldc 174
    //   327: ldc 176
    //   329: invokevirtual 41	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   332: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: ldc 176
    //   337: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   343: invokespecial 184	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   346: astore 48
    //   348: aload 48
    //   350: ldc 186
    //   352: ldc 188
    //   354: invokevirtual 191	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload 16
    //   359: aload 48
    //   361: invokevirtual 195	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   364: astore 49
    //   366: aload 49
    //   368: astore 31
    //   370: aload 31
    //   372: invokeinterface 201 1 0
    //   377: invokeinterface 206 1 0
    //   382: lookupswitch	default:+42->424, 204:+147->529, 206:+286->668, 404:+286->668, 406:+391->773
    //   425: fconst_1
    //   426: invokevirtual 210	java/io/File:delete	()Z
    //   429: pop
    //   430: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   433: astore 24
    //   435: aload 31
    //   437: ifnull +25 -> 462
    //   440: aload 31
    //   442: invokeinterface 216 1 0
    //   447: ifnull +15 -> 462
    //   450: aload 31
    //   452: invokeinterface 216 1 0
    //   457: invokeinterface 221 1 0
    //   462: aload 16
    //   464: ifnull +8 -> 472
    //   467: aload 16
    //   469: invokevirtual 223	android/b/a/a:a	()V
    //   472: aload 12
    //   474: ifnull -400 -> 74
    //   477: aload_0
    //   478: ldc 225
    //   480: iconst_0
    //   481: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   484: astore 94
    //   486: aload 94
    //   488: ifnull -414 -> 74
    //   491: aload 94
    //   493: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   496: astore 95
    //   498: aload 95
    //   500: ifnull -426 -> 74
    //   503: iconst_0
    //   504: istore 96
    //   506: iload 96
    //   508: aload 95
    //   510: arraylength
    //   511: if_icmpge -437 -> 74
    //   514: aload 95
    //   516: iload 96
    //   518: aaload
    //   519: invokevirtual 210	java/io/File:delete	()Z
    //   522: pop
    //   523: iinc 96 1
    //   526: goto -20 -> 506
    //   529: aload 31
    //   531: invokeinterface 216 1 0
    //   536: ifnull +15 -> 551
    //   539: aload 31
    //   541: invokeinterface 216 1 0
    //   546: invokeinterface 221 1 0
    //   551: aload 16
    //   553: aload 47
    //   555: aload 12
    //   557: aload 6
    //   559: invokestatic 238	com/avast/android/mobilesecurity/engine/internal/e:a	(Lorg/apache/http/client/HttpClient;Ljava/net/URI;Ljava/io/File;Lcom/avast/android/mobilesecurity/engine/r;)Lorg/apache/http/HttpResponse;
    //   562: astore 31
    //   564: aload 31
    //   566: ifnonnull +312 -> 878
    //   569: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   572: astore 24
    //   574: aload 31
    //   576: ifnull +25 -> 601
    //   579: aload 31
    //   581: invokeinterface 216 1 0
    //   586: ifnull +15 -> 601
    //   589: aload 31
    //   591: invokeinterface 216 1 0
    //   596: invokeinterface 221 1 0
    //   601: aload 16
    //   603: ifnull +8 -> 611
    //   606: aload 16
    //   608: invokevirtual 223	android/b/a/a:a	()V
    //   611: aload 12
    //   613: ifnull -539 -> 74
    //   616: aload_0
    //   617: ldc 225
    //   619: iconst_0
    //   620: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   623: astore 88
    //   625: aload 88
    //   627: ifnull -553 -> 74
    //   630: aload 88
    //   632: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   635: astore 89
    //   637: aload 89
    //   639: ifnull -565 -> 74
    //   642: iconst_0
    //   643: istore 90
    //   645: iload 90
    //   647: aload 89
    //   649: arraylength
    //   650: if_icmpge -576 -> 74
    //   653: aload 89
    //   655: iload 90
    //   657: aaload
    //   658: invokevirtual 210	java/io/File:delete	()Z
    //   661: pop
    //   662: iinc 90 1
    //   665: goto -20 -> 645
    //   668: aload 12
    //   670: invokevirtual 210	java/io/File:delete	()Z
    //   673: pop
    //   674: getstatic 76	com/avast/android/mobilesecurity/engine/ac:a	Lcom/avast/android/mobilesecurity/engine/ac;
    //   677: astore 24
    //   679: aload 31
    //   681: ifnull +25 -> 706
    //   684: aload 31
    //   686: invokeinterface 216 1 0
    //   691: ifnull +15 -> 706
    //   694: aload 31
    //   696: invokeinterface 216 1 0
    //   701: invokeinterface 221 1 0
    //   706: aload 16
    //   708: ifnull +8 -> 716
    //   711: aload 16
    //   713: invokevirtual 223	android/b/a/a:a	()V
    //   716: aload 12
    //   718: ifnull -644 -> 74
    //   721: aload_0
    //   722: ldc 225
    //   724: iconst_0
    //   725: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   728: astore 59
    //   730: aload 59
    //   732: ifnull -658 -> 74
    //   735: aload 59
    //   737: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   740: astore 60
    //   742: aload 60
    //   744: ifnull -670 -> 74
    //   747: iconst_0
    //   748: istore 61
    //   750: iload 61
    //   752: aload 60
    //   754: arraylength
    //   755: if_icmpge -681 -> 74
    //   758: aload 60
    //   760: iload 61
    //   762: aaload
    //   763: invokevirtual 210	java/io/File:delete	()Z
    //   766: pop
    //   767: iinc 61 1
    //   770: goto -20 -> 750
    //   773: aload 12
    //   775: invokevirtual 210	java/io/File:delete	()Z
    //   778: pop
    //   779: getstatic 76	com/avast/android/mobilesecurity/engine/ac:a	Lcom/avast/android/mobilesecurity/engine/ac;
    //   782: astore 24
    //   784: aload 31
    //   786: ifnull +25 -> 811
    //   789: aload 31
    //   791: invokeinterface 216 1 0
    //   796: ifnull +15 -> 811
    //   799: aload 31
    //   801: invokeinterface 216 1 0
    //   806: invokeinterface 221 1 0
    //   811: aload 16
    //   813: ifnull +8 -> 821
    //   816: aload 16
    //   818: invokevirtual 223	android/b/a/a:a	()V
    //   821: aload 12
    //   823: ifnull -749 -> 74
    //   826: aload_0
    //   827: ldc 225
    //   829: iconst_0
    //   830: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   833: astore 53
    //   835: aload 53
    //   837: ifnull -763 -> 74
    //   840: aload 53
    //   842: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   845: astore 54
    //   847: aload 54
    //   849: ifnull -775 -> 74
    //   852: iconst_0
    //   853: istore 55
    //   855: iload 55
    //   857: aload 54
    //   859: arraylength
    //   860: if_icmpge -786 -> 74
    //   863: aload 54
    //   865: iload 55
    //   867: aaload
    //   868: invokevirtual 210	java/io/File:delete	()Z
    //   871: pop
    //   872: iinc 55 1
    //   875: goto -20 -> 855
    //   878: aload 31
    //   880: invokeinterface 201 1 0
    //   885: invokeinterface 206 1 0
    //   890: lookupswitch	default:+42->932, 204:+147->1037, 206:+252->1142, 404:+252->1142, 406:+357->1247
    //   933: fconst_1
    //   934: invokevirtual 210	java/io/File:delete	()Z
    //   937: pop
    //   938: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   941: astore 24
    //   943: aload 31
    //   945: ifnull +25 -> 970
    //   948: aload 31
    //   950: invokeinterface 216 1 0
    //   955: ifnull +15 -> 970
    //   958: aload 31
    //   960: invokeinterface 216 1 0
    //   965: invokeinterface 221 1 0
    //   970: aload 16
    //   972: ifnull +8 -> 980
    //   975: aload 16
    //   977: invokevirtual 223	android/b/a/a:a	()V
    //   980: aload 12
    //   982: ifnull -908 -> 74
    //   985: aload_0
    //   986: ldc 225
    //   988: iconst_0
    //   989: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   992: astore 83
    //   994: aload 83
    //   996: ifnull -922 -> 74
    //   999: aload 83
    //   1001: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1004: astore 84
    //   1006: aload 84
    //   1008: ifnull -934 -> 74
    //   1011: iconst_0
    //   1012: istore 85
    //   1014: iload 85
    //   1016: aload 84
    //   1018: arraylength
    //   1019: if_icmpge -945 -> 74
    //   1022: aload 84
    //   1024: iload 85
    //   1026: aaload
    //   1027: invokevirtual 210	java/io/File:delete	()Z
    //   1030: pop
    //   1031: iinc 85 1
    //   1034: goto -20 -> 1014
    //   1037: aload 12
    //   1039: invokevirtual 210	java/io/File:delete	()Z
    //   1042: pop
    //   1043: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   1046: astore 24
    //   1048: aload 31
    //   1050: ifnull +25 -> 1075
    //   1053: aload 31
    //   1055: invokeinterface 216 1 0
    //   1060: ifnull +15 -> 1075
    //   1063: aload 31
    //   1065: invokeinterface 216 1 0
    //   1070: invokeinterface 221 1 0
    //   1075: aload 16
    //   1077: ifnull +8 -> 1085
    //   1080: aload 16
    //   1082: invokevirtual 223	android/b/a/a:a	()V
    //   1085: aload 12
    //   1087: ifnull -1013 -> 74
    //   1090: aload_0
    //   1091: ldc 225
    //   1093: iconst_0
    //   1094: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1097: astore 77
    //   1099: aload 77
    //   1101: ifnull -1027 -> 74
    //   1104: aload 77
    //   1106: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1109: astore 78
    //   1111: aload 78
    //   1113: ifnull -1039 -> 74
    //   1116: iconst_0
    //   1117: istore 79
    //   1119: iload 79
    //   1121: aload 78
    //   1123: arraylength
    //   1124: if_icmpge -1050 -> 74
    //   1127: aload 78
    //   1129: iload 79
    //   1131: aaload
    //   1132: invokevirtual 210	java/io/File:delete	()Z
    //   1135: pop
    //   1136: iinc 79 1
    //   1139: goto -20 -> 1119
    //   1142: aload 12
    //   1144: invokevirtual 210	java/io/File:delete	()Z
    //   1147: pop
    //   1148: getstatic 76	com/avast/android/mobilesecurity/engine/ac:a	Lcom/avast/android/mobilesecurity/engine/ac;
    //   1151: astore 24
    //   1153: aload 31
    //   1155: ifnull +25 -> 1180
    //   1158: aload 31
    //   1160: invokeinterface 216 1 0
    //   1165: ifnull +15 -> 1180
    //   1168: aload 31
    //   1170: invokeinterface 216 1 0
    //   1175: invokeinterface 221 1 0
    //   1180: aload 16
    //   1182: ifnull +8 -> 1190
    //   1185: aload 16
    //   1187: invokevirtual 223	android/b/a/a:a	()V
    //   1190: aload 12
    //   1192: ifnull -1118 -> 74
    //   1195: aload_0
    //   1196: ldc 225
    //   1198: iconst_0
    //   1199: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1202: astore 71
    //   1204: aload 71
    //   1206: ifnull -1132 -> 74
    //   1209: aload 71
    //   1211: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1214: astore 72
    //   1216: aload 72
    //   1218: ifnull -1144 -> 74
    //   1221: iconst_0
    //   1222: istore 73
    //   1224: iload 73
    //   1226: aload 72
    //   1228: arraylength
    //   1229: if_icmpge -1155 -> 74
    //   1232: aload 72
    //   1234: iload 73
    //   1236: aaload
    //   1237: invokevirtual 210	java/io/File:delete	()Z
    //   1240: pop
    //   1241: iinc 73 1
    //   1244: goto -20 -> 1224
    //   1247: aload 12
    //   1249: invokevirtual 210	java/io/File:delete	()Z
    //   1252: pop
    //   1253: getstatic 76	com/avast/android/mobilesecurity/engine/ac:a	Lcom/avast/android/mobilesecurity/engine/ac;
    //   1256: astore 24
    //   1258: aload 31
    //   1260: ifnull +25 -> 1285
    //   1263: aload 31
    //   1265: invokeinterface 216 1 0
    //   1270: ifnull +15 -> 1285
    //   1273: aload 31
    //   1275: invokeinterface 216 1 0
    //   1280: invokeinterface 221 1 0
    //   1285: aload 16
    //   1287: ifnull +8 -> 1295
    //   1290: aload 16
    //   1292: invokevirtual 223	android/b/a/a:a	()V
    //   1295: aload 12
    //   1297: ifnull -1223 -> 74
    //   1300: aload_0
    //   1301: ldc 225
    //   1303: iconst_0
    //   1304: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1307: astore 65
    //   1309: aload 65
    //   1311: ifnull -1237 -> 74
    //   1314: aload 65
    //   1316: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1319: astore 66
    //   1321: aload 66
    //   1323: ifnull -1249 -> 74
    //   1326: iconst_0
    //   1327: istore 67
    //   1329: iload 67
    //   1331: aload 66
    //   1333: arraylength
    //   1334: if_icmpge -1260 -> 74
    //   1337: aload 66
    //   1339: iload 67
    //   1341: aaload
    //   1342: invokevirtual 210	java/io/File:delete	()Z
    //   1345: pop
    //   1346: iinc 67 1
    //   1349: goto -20 -> 1329
    //   1352: astore 30
    //   1354: aconst_null
    //   1355: astore 31
    //   1357: aconst_null
    //   1358: astore 32
    //   1360: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   1363: astore 24
    //   1365: aload 31
    //   1367: ifnull +25 -> 1392
    //   1370: aload 31
    //   1372: invokeinterface 216 1 0
    //   1377: ifnull +15 -> 1392
    //   1380: aload 31
    //   1382: invokeinterface 216 1 0
    //   1387: invokeinterface 221 1 0
    //   1392: aload 32
    //   1394: ifnull +8 -> 1402
    //   1397: aload 32
    //   1399: invokevirtual 223	android/b/a/a:a	()V
    //   1402: aload 12
    //   1404: ifnull -1330 -> 74
    //   1407: aload_0
    //   1408: ldc 225
    //   1410: iconst_0
    //   1411: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1414: astore 33
    //   1416: aload 33
    //   1418: ifnull -1344 -> 74
    //   1421: aload 33
    //   1423: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1426: astore 34
    //   1428: aload 34
    //   1430: ifnull -1356 -> 74
    //   1433: iconst_0
    //   1434: istore 35
    //   1436: iload 35
    //   1438: aload 34
    //   1440: arraylength
    //   1441: if_icmpge -1367 -> 74
    //   1444: aload 34
    //   1446: iload 35
    //   1448: aaload
    //   1449: invokevirtual 210	java/io/File:delete	()Z
    //   1452: pop
    //   1453: iinc 35 1
    //   1456: goto -20 -> 1436
    //   1459: astore 23
    //   1461: aconst_null
    //   1462: astore 16
    //   1464: getstatic 212	com/avast/android/mobilesecurity/engine/ac:c	Lcom/avast/android/mobilesecurity/engine/ac;
    //   1467: astore 24
    //   1469: aload 14
    //   1471: ifnull +25 -> 1496
    //   1474: aload 14
    //   1476: invokeinterface 216 1 0
    //   1481: ifnull +15 -> 1496
    //   1484: aload 14
    //   1486: invokeinterface 216 1 0
    //   1491: invokeinterface 221 1 0
    //   1496: aload 16
    //   1498: ifnull +8 -> 1506
    //   1501: aload 16
    //   1503: invokevirtual 223	android/b/a/a:a	()V
    //   1506: aload 12
    //   1508: ifnull -1434 -> 74
    //   1511: aload_0
    //   1512: ldc 225
    //   1514: iconst_0
    //   1515: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1518: astore 25
    //   1520: aload 25
    //   1522: ifnull -1448 -> 74
    //   1525: aload 25
    //   1527: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1530: astore 26
    //   1532: aload 26
    //   1534: ifnull -1460 -> 74
    //   1537: iconst_0
    //   1538: istore 27
    //   1540: iload 27
    //   1542: aload 26
    //   1544: arraylength
    //   1545: if_icmpge -1471 -> 74
    //   1548: aload 26
    //   1550: iload 27
    //   1552: aaload
    //   1553: invokevirtual 210	java/io/File:delete	()Z
    //   1556: pop
    //   1557: iinc 27 1
    //   1560: goto -20 -> 1540
    //   1563: aload 17
    //   1565: athrow
    //   1566: astore 15
    //   1568: aconst_null
    //   1569: astore 16
    //   1571: aload 15
    //   1573: astore 17
    //   1575: aload 14
    //   1577: ifnull +25 -> 1602
    //   1580: aload 14
    //   1582: invokeinterface 216 1 0
    //   1587: ifnull +15 -> 1602
    //   1590: aload 14
    //   1592: invokeinterface 216 1 0
    //   1597: invokeinterface 221 1 0
    //   1602: aload 16
    //   1604: ifnull +8 -> 1612
    //   1607: aload 16
    //   1609: invokevirtual 223	android/b/a/a:a	()V
    //   1612: aload 12
    //   1614: ifnull -51 -> 1563
    //   1617: aload_0
    //   1618: ldc 225
    //   1620: iconst_0
    //   1621: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   1624: astore 18
    //   1626: aload 18
    //   1628: ifnull -65 -> 1563
    //   1631: aload 18
    //   1633: invokevirtual 235	java/io/File:listFiles	()[Ljava/io/File;
    //   1636: astore 19
    //   1638: aload 19
    //   1640: ifnull -77 -> 1563
    //   1643: iconst_0
    //   1644: istore 20
    //   1646: iload 20
    //   1648: aload 19
    //   1650: arraylength
    //   1651: if_icmpge -88 -> 1563
    //   1654: aload 19
    //   1656: iload 20
    //   1658: aaload
    //   1659: invokevirtual 210	java/io/File:delete	()Z
    //   1662: pop
    //   1663: iinc 20 1
    //   1666: goto -20 -> 1646
    //   1669: astore 98
    //   1671: goto -1209 -> 462
    //   1674: astore 57
    //   1676: goto -865 -> 811
    //   1679: astore 63
    //   1681: goto -975 -> 706
    //   1684: astore 87
    //   1686: goto -716 -> 970
    //   1689: astore 69
    //   1691: goto -406 -> 1285
    //   1694: astore 75
    //   1696: goto -516 -> 1180
    //   1699: astore 81
    //   1701: goto -626 -> 1075
    //   1704: astore 92
    //   1706: goto -1105 -> 601
    //   1709: astore 29
    //   1711: goto -215 -> 1496
    //   1714: astore 37
    //   1716: goto -324 -> 1392
    //   1719: astore 22
    //   1721: goto -119 -> 1602
    //   1724: astore 17
    //   1726: goto -151 -> 1575
    //   1729: astore 17
    //   1731: aload 31
    //   1733: astore 14
    //   1735: goto -160 -> 1575
    //   1738: astore 17
    //   1740: aload 31
    //   1742: astore 14
    //   1744: aload 32
    //   1746: astore 16
    //   1748: goto -173 -> 1575
    //   1751: astore 40
    //   1753: aconst_null
    //   1754: astore 14
    //   1756: goto -292 -> 1464
    //   1759: astore 51
    //   1761: aload 31
    //   1763: astore 14
    //   1765: goto -301 -> 1464
    //   1768: astore 39
    //   1770: aload 16
    //   1772: astore 32
    //   1774: aconst_null
    //   1775: astore 31
    //   1777: goto -417 -> 1360
    //   1780: astore 50
    //   1782: aload 16
    //   1784: astore 32
    //   1786: goto -426 -> 1360
    //   1789: ldc 37
    //   1791: astore 8
    //   1793: goto -1757 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   49	60	77	java/security/NoSuchAlgorithmException
    //   49	60	85	java/lang/Exception
    //   144	151	1352	java/net/URISyntaxException
    //   144	151	1459	java/io/IOException
    //   144	151	1566	finally
    //   450	462	1669	java/io/IOException
    //   799	811	1674	java/io/IOException
    //   694	706	1679	java/io/IOException
    //   958	970	1684	java/io/IOException
    //   1273	1285	1689	java/io/IOException
    //   1168	1180	1694	java/io/IOException
    //   1063	1075	1699	java/io/IOException
    //   589	601	1704	java/io/IOException
    //   1484	1496	1709	java/io/IOException
    //   1380	1392	1714	java/io/IOException
    //   1590	1602	1719	java/io/IOException
    //   155	366	1724	finally
    //   1464	1469	1724	finally
    //   370	435	1729	finally
    //   529	574	1729	finally
    //   668	679	1729	finally
    //   773	784	1729	finally
    //   878	943	1729	finally
    //   1037	1048	1729	finally
    //   1142	1153	1729	finally
    //   1247	1258	1729	finally
    //   1360	1365	1738	finally
    //   155	366	1751	java/io/IOException
    //   370	435	1759	java/io/IOException
    //   529	574	1759	java/io/IOException
    //   668	679	1759	java/io/IOException
    //   773	784	1759	java/io/IOException
    //   878	943	1759	java/io/IOException
    //   1037	1048	1759	java/io/IOException
    //   1142	1153	1759	java/io/IOException
    //   1247	1258	1759	java/io/IOException
    //   155	366	1768	java/net/URISyntaxException
    //   370	435	1780	java/net/URISyntaxException
    //   529	574	1780	java/net/URISyntaxException
    //   668	679	1780	java/net/URISyntaxException
    //   773	784	1780	java/net/URISyntaxException
    //   878	943	1780	java/net/URISyntaxException
    //   1037	1048	1780	java/net/URISyntaxException
    //   1142	1153	1780	java/net/URISyntaxException
    //   1247	1258	1780	java/net/URISyntaxException
  }

  public static ac a(Context paramContext, String paramString, ah paramah, ab paramab)
  {
    return ac.a;
  }

  // ERROR //
  private static File a(File paramFile, String paramString, Context paramContext, android.content.pm.ApplicationInfo paramApplicationInfo, com.avast.android.mobilesecurity.engine.s params, ab paramab)
  {
    // Byte code:
    //   0: invokestatic 249	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   3: invokevirtual 250	java/util/UUID:toString	()Ljava/lang/String;
    //   6: invokevirtual 253	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   9: astore 6
    //   11: new 97	java/io/File
    //   14: dup
    //   15: new 165	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   22: aload_2
    //   23: ldc 225
    //   25: iconst_0
    //   26: invokevirtual 231	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   29: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: ldc_w 258
    //   35: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload 6
    //   40: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokespecial 259	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore 7
    //   51: aload 7
    //   53: invokevirtual 262	java/io/File:exists	()Z
    //   56: ifeq +9 -> 65
    //   59: aload 7
    //   61: invokevirtual 210	java/io/File:delete	()Z
    //   64: pop
    //   65: aload 7
    //   67: invokevirtual 265	java/io/File:createNewFile	()Z
    //   70: istore 71
    //   72: iload 71
    //   74: ifne +11 -> 85
    //   77: aconst_null
    //   78: astore 16
    //   80: aload 16
    //   82: areturn
    //   83: astore 8
    //   85: aconst_null
    //   86: astore 9
    //   88: new 267	java/io/FileOutputStream
    //   91: dup
    //   92: aload 7
    //   94: invokespecial 270	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   97: astore 10
    //   99: new 272	com/avast/android/mobilesecurity/engine/internal/b
    //   102: dup
    //   103: invokespecial 273	com/avast/android/mobilesecurity/engine/internal/b:<init>	()V
    //   106: astore 11
    //   108: aload 11
    //   110: ldc_w 275
    //   113: invokevirtual 277	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;)V
    //   116: aload 11
    //   118: ldc_w 279
    //   121: aload_0
    //   122: invokevirtual 282	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   125: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aload 11
    //   130: ldc_w 286
    //   133: aload_0
    //   134: invokevirtual 101	java/io/File:length	()J
    //   137: invokevirtual 289	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;J)V
    //   140: aload 11
    //   142: ldc_w 291
    //   145: ldc_w 293
    //   148: invokevirtual 295	com/avast/android/mobilesecurity/engine/internal/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: aload 11
    //   153: ldc_w 297
    //   156: aload_1
    //   157: invokevirtual 299	com/avast/android/mobilesecurity/engine/internal/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aload 11
    //   162: ldc_w 301
    //   165: ldc_w 303
    //   168: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: aload 11
    //   173: ldc_w 305
    //   176: ldc2_w 306
    //   179: invokevirtual 289	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;J)V
    //   182: aload_2
    //   183: aconst_null
    //   184: invokestatic 22	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;
    //   187: astore 37
    //   189: aload 37
    //   191: ifnull +121 -> 312
    //   194: ldc 37
    //   196: astore 58
    //   198: aload 37
    //   200: getfield 27	com/avast/android/mobilesecurity/engine/al:a	Ljava/lang/String;
    //   203: ldc 35
    //   205: ldc 37
    //   207: invokevirtual 41	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   210: pop
    //   211: aload 37
    //   213: getfield 27	com/avast/android/mobilesecurity/engine/al:a	Ljava/lang/String;
    //   216: ldc 35
    //   218: ldc 37
    //   220: invokevirtual 41	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   223: astore 60
    //   225: iconst_m1
    //   226: aload 60
    //   228: invokevirtual 309	java/lang/String:length	()I
    //   231: iadd
    //   232: istore 61
    //   234: iload 61
    //   236: iconst_m1
    //   237: if_icmple +65 -> 302
    //   240: new 165	java/lang/StringBuilder
    //   243: dup
    //   244: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   247: aload 58
    //   249: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: aload 60
    //   254: iload 61
    //   256: iconst_1
    //   257: isub
    //   258: invokevirtual 313	java/lang/String:charAt	(I)C
    //   261: invokevirtual 316	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   264: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: astore 62
    //   269: new 165	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   276: aload 62
    //   278: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload 60
    //   283: iload 61
    //   285: invokevirtual 313	java/lang/String:charAt	(I)C
    //   288: invokevirtual 316	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   291: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: astore 58
    //   296: iinc 61 254
    //   299: goto -65 -> 234
    //   302: aload 11
    //   304: ldc_w 318
    //   307: aload 58
    //   309: invokevirtual 299	com/avast/android/mobilesecurity/engine/internal/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   312: aload_2
    //   313: invokevirtual 322	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   316: aload_2
    //   317: invokevirtual 325	android/content/Context:getPackageName	()Ljava/lang/String;
    //   320: iconst_0
    //   321: invokevirtual 331	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   324: getfield 334	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   327: ldc_w 336
    //   330: invokevirtual 340	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   333: astore 57
    //   335: aload 11
    //   337: ldc_w 342
    //   340: ldc2_w 343
    //   343: aload 57
    //   345: iconst_0
    //   346: aaload
    //   347: invokestatic 348	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   350: lmul
    //   351: ldc2_w 349
    //   354: aload 57
    //   356: iconst_1
    //   357: aaload
    //   358: invokestatic 348	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   361: lmul
    //   362: ladd
    //   363: aload 57
    //   365: iconst_2
    //   366: aaload
    //   367: invokestatic 348	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   370: ldc2_w 349
    //   373: lrem
    //   374: ladd
    //   375: invokevirtual 352	com/avast/android/mobilesecurity/engine/internal/b:b	(Ljava/lang/String;J)V
    //   378: aload 11
    //   380: ldc_w 354
    //   383: aload 4
    //   385: getfield 130	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   388: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   391: aload 11
    //   393: ldc_w 356
    //   396: ldc_w 358
    //   399: invokevirtual 299	com/avast/android/mobilesecurity/engine/internal/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   402: aload 11
    //   404: ldc_w 360
    //   407: invokestatic 366	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   410: invokevirtual 369	java/util/Calendar:getTimeInMillis	()J
    //   413: ldc2_w 370
    //   416: ldiv
    //   417: invokevirtual 289	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;J)V
    //   420: aload 11
    //   422: ldc_w 373
    //   425: getstatic 378	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   428: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   431: aload 11
    //   433: ldc_w 380
    //   436: new 165	java/lang/StringBuilder
    //   439: dup
    //   440: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   443: getstatic 385	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   446: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: ldc_w 387
    //   452: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: getstatic 390	android/os/Build:MODEL	Ljava/lang/String;
    //   458: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: ldc_w 392
    //   464: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: getstatic 395	android/os/Build:BRAND	Ljava/lang/String;
    //   470: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: ldc_w 397
    //   476: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   482: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   485: aload_3
    //   486: ifnull +15 -> 501
    //   489: aload 11
    //   491: ldc_w 399
    //   494: aload_3
    //   495: getfield 404	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   498: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   501: aload 5
    //   503: ifnull +45 -> 548
    //   506: aload 5
    //   508: getfield 407	com/avast/android/mobilesecurity/engine/ab:a	Ljava/lang/String;
    //   511: ifnull +16 -> 527
    //   514: aload 11
    //   516: ldc_w 409
    //   519: aload 5
    //   521: getfield 407	com/avast/android/mobilesecurity/engine/ab:a	Ljava/lang/String;
    //   524: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   527: aload 5
    //   529: getfield 410	com/avast/android/mobilesecurity/engine/ab:b	Ljava/lang/String;
    //   532: ifnull +16 -> 548
    //   535: aload 11
    //   537: ldc_w 412
    //   540: aload 5
    //   542: getfield 410	com/avast/android/mobilesecurity/engine/ab:b	Ljava/lang/String;
    //   545: invokevirtual 284	com/avast/android/mobilesecurity/engine/internal/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   548: aload 11
    //   550: ldc_w 414
    //   553: new 165	java/lang/StringBuilder
    //   556: dup
    //   557: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   560: ldc_w 416
    //   563: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: aload 6
    //   568: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   571: ldc_w 418
    //   574: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   577: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   580: invokevirtual 295	com/avast/android/mobilesecurity/engine/internal/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   583: aload 11
    //   585: ldc_w 420
    //   588: aload_2
    //   589: ldc_w 422
    //   592: invokestatic 427	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   595: checkcast 422	com/avast/android/generic/ae
    //   598: invokevirtual 430	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   601: invokevirtual 295	com/avast/android/mobilesecurity/engine/internal/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   604: aload 10
    //   606: aload 11
    //   608: invokevirtual 433	com/avast/android/mobilesecurity/engine/internal/b:a	()[B
    //   611: invokevirtual 437	java/io/FileOutputStream:write	([B)V
    //   614: aload 10
    //   616: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   619: new 442	java/io/FileInputStream
    //   622: dup
    //   623: aload_0
    //   624: invokespecial 443	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   627: astore 39
    //   629: aload 11
    //   631: ldc_w 445
    //   634: aload_0
    //   635: invokevirtual 101	java/io/File:length	()J
    //   638: invokevirtual 447	com/avast/android/mobilesecurity/engine/internal/b:c	(Ljava/lang/String;J)V
    //   641: ldc_w 448
    //   644: newarray byte
    //   646: astore 44
    //   648: ldc_w 448
    //   651: invokestatic 454	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   654: astore 45
    //   656: aload 39
    //   658: aload 44
    //   660: invokevirtual 458	java/io/FileInputStream:read	([B)I
    //   663: istore 46
    //   665: iload 46
    //   667: iconst_m1
    //   668: if_icmpeq +362 -> 1030
    //   671: iload 46
    //   673: aload 45
    //   675: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   678: iadd
    //   679: ldc_w 448
    //   682: if_icmpne +120 -> 802
    //   685: aload 45
    //   687: aload 44
    //   689: invokevirtual 465	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   692: pop
    //   693: aload 11
    //   695: aload 11
    //   697: aload 45
    //   699: invokevirtual 468	java/nio/ByteBuffer:array	()[B
    //   702: ldc_w 448
    //   705: iconst_0
    //   706: invokevirtual 471	com/avast/android/mobilesecurity/engine/internal/b:a	([BII)[B
    //   709: invokevirtual 473	com/avast/android/mobilesecurity/engine/internal/b:a	([B)V
    //   712: aload 10
    //   714: aload 11
    //   716: invokevirtual 433	com/avast/android/mobilesecurity/engine/internal/b:a	()[B
    //   719: invokevirtual 437	java/io/FileOutputStream:write	([B)V
    //   722: aload 10
    //   724: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   727: aload 45
    //   729: invokevirtual 477	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   732: pop
    //   733: goto -77 -> 656
    //   736: astore 43
    //   738: aload 39
    //   740: astore 15
    //   742: aload 11
    //   744: astore 13
    //   746: aload 10
    //   748: astore 14
    //   750: aload 14
    //   752: ifnull +13 -> 765
    //   755: aload 14
    //   757: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   760: aload 14
    //   762: invokevirtual 480	java/io/FileOutputStream:close	()V
    //   765: aload 13
    //   767: ifnull +8 -> 775
    //   770: aload 13
    //   772: invokevirtual 481	com/avast/android/mobilesecurity/engine/internal/b:b	()V
    //   775: aconst_null
    //   776: astore 16
    //   778: aload 15
    //   780: ifnull -700 -> 80
    //   783: aload 15
    //   785: invokevirtual 482	java/io/FileInputStream:close	()V
    //   788: aconst_null
    //   789: astore 16
    //   791: goto -711 -> 80
    //   794: astore 17
    //   796: aconst_null
    //   797: astore 16
    //   799: goto -719 -> 80
    //   802: iload 46
    //   804: aload 45
    //   806: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   809: iadd
    //   810: ldc_w 448
    //   813: if_icmpge +72 -> 885
    //   816: aload 45
    //   818: aload 44
    //   820: iconst_0
    //   821: iload 46
    //   823: invokevirtual 485	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   826: pop
    //   827: goto -171 -> 656
    //   830: astore 42
    //   832: aload 39
    //   834: astore 21
    //   836: aload 10
    //   838: ifnull +13 -> 851
    //   841: aload 10
    //   843: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   846: aload 10
    //   848: invokevirtual 480	java/io/FileOutputStream:close	()V
    //   851: aload 11
    //   853: ifnull +8 -> 861
    //   856: aload 11
    //   858: invokevirtual 481	com/avast/android/mobilesecurity/engine/internal/b:b	()V
    //   861: aconst_null
    //   862: astore 16
    //   864: aload 21
    //   866: ifnull -786 -> 80
    //   869: aload 21
    //   871: invokevirtual 482	java/io/FileInputStream:close	()V
    //   874: aconst_null
    //   875: astore 16
    //   877: goto -797 -> 80
    //   880: astore 22
    //   882: goto -86 -> 796
    //   885: aload 45
    //   887: aload 44
    //   889: iconst_0
    //   890: ldc_w 448
    //   893: aload 45
    //   895: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   898: isub
    //   899: invokevirtual 485	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   902: pop
    //   903: aload 11
    //   905: aload 11
    //   907: aload 45
    //   909: invokevirtual 468	java/nio/ByteBuffer:array	()[B
    //   912: ldc_w 448
    //   915: iconst_0
    //   916: invokevirtual 471	com/avast/android/mobilesecurity/engine/internal/b:a	([BII)[B
    //   919: invokevirtual 473	com/avast/android/mobilesecurity/engine/internal/b:a	([B)V
    //   922: aload 10
    //   924: aload 11
    //   926: invokevirtual 433	com/avast/android/mobilesecurity/engine/internal/b:a	()[B
    //   929: invokevirtual 437	java/io/FileOutputStream:write	([B)V
    //   932: aload 10
    //   934: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   937: aload 45
    //   939: invokevirtual 477	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   942: pop
    //   943: aload 45
    //   945: aload 44
    //   947: ldc_w 448
    //   950: aload 45
    //   952: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   955: isub
    //   956: iload 46
    //   958: ldc_w 448
    //   961: aload 45
    //   963: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   966: isub
    //   967: isub
    //   968: invokevirtual 485	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   971: pop
    //   972: goto -316 -> 656
    //   975: astore 41
    //   977: aload 39
    //   979: astore 27
    //   981: aload 10
    //   983: ifnull +13 -> 996
    //   986: aload 10
    //   988: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   991: aload 10
    //   993: invokevirtual 480	java/io/FileOutputStream:close	()V
    //   996: aload 11
    //   998: ifnull +8 -> 1006
    //   1001: aload 11
    //   1003: invokevirtual 481	com/avast/android/mobilesecurity/engine/internal/b:b	()V
    //   1006: aconst_null
    //   1007: astore 16
    //   1009: aload 27
    //   1011: ifnull -931 -> 80
    //   1014: aload 27
    //   1016: invokevirtual 482	java/io/FileInputStream:close	()V
    //   1019: aconst_null
    //   1020: astore 16
    //   1022: goto -942 -> 80
    //   1025: astore 28
    //   1027: goto -231 -> 796
    //   1030: aload 11
    //   1032: aload 11
    //   1034: aload 45
    //   1036: invokevirtual 468	java/nio/ByteBuffer:array	()[B
    //   1039: aload 45
    //   1041: invokevirtual 461	java/nio/ByteBuffer:position	()I
    //   1044: iconst_0
    //   1045: invokevirtual 471	com/avast/android/mobilesecurity/engine/internal/b:a	([BII)[B
    //   1048: invokevirtual 473	com/avast/android/mobilesecurity/engine/internal/b:a	([B)V
    //   1051: aload 10
    //   1053: aload 11
    //   1055: invokevirtual 433	com/avast/android/mobilesecurity/engine/internal/b:a	()[B
    //   1058: invokevirtual 437	java/io/FileOutputStream:write	([B)V
    //   1061: aload 10
    //   1063: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   1066: aload 10
    //   1068: ifnull +13 -> 1081
    //   1071: aload 10
    //   1073: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   1076: aload 10
    //   1078: invokevirtual 480	java/io/FileOutputStream:close	()V
    //   1081: aload 11
    //   1083: ifnull +8 -> 1091
    //   1086: aload 11
    //   1088: invokevirtual 481	com/avast/android/mobilesecurity/engine/internal/b:b	()V
    //   1091: aload 39
    //   1093: ifnull +8 -> 1101
    //   1096: aload 39
    //   1098: invokevirtual 482	java/io/FileInputStream:close	()V
    //   1101: aload 7
    //   1103: astore 16
    //   1105: goto -1025 -> 80
    //   1108: astore 70
    //   1110: aconst_null
    //   1111: astore 10
    //   1113: aconst_null
    //   1114: astore 11
    //   1116: aload 70
    //   1118: astore 32
    //   1120: aload 10
    //   1122: ifnull +13 -> 1135
    //   1125: aload 10
    //   1127: invokevirtual 440	java/io/FileOutputStream:flush	()V
    //   1130: aload 10
    //   1132: invokevirtual 480	java/io/FileOutputStream:close	()V
    //   1135: aload 11
    //   1137: ifnull +8 -> 1145
    //   1140: aload 11
    //   1142: invokevirtual 481	com/avast/android/mobilesecurity/engine/internal/b:b	()V
    //   1145: aload 9
    //   1147: ifnull +8 -> 1155
    //   1150: aload 9
    //   1152: invokevirtual 482	java/io/FileInputStream:close	()V
    //   1155: aload 32
    //   1157: athrow
    //   1158: astore 18
    //   1160: aconst_null
    //   1161: astore 16
    //   1163: goto -1083 -> 80
    //   1166: astore 49
    //   1168: aconst_null
    //   1169: astore 16
    //   1171: goto -1091 -> 80
    //   1174: astore 23
    //   1176: goto -16 -> 1160
    //   1179: astore 29
    //   1181: goto -21 -> 1160
    //   1184: astore 34
    //   1186: goto -26 -> 1160
    //   1189: astore 33
    //   1191: goto -395 -> 796
    //   1194: astore 48
    //   1196: goto -36 -> 1160
    //   1199: astore 47
    //   1201: goto -405 -> 796
    //   1204: astore 50
    //   1206: goto -38 -> 1168
    //   1209: astore 35
    //   1211: goto -43 -> 1168
    //   1214: astore 36
    //   1216: goto -48 -> 1168
    //   1219: astore 30
    //   1221: goto -53 -> 1168
    //   1224: astore 31
    //   1226: goto -58 -> 1168
    //   1229: astore 24
    //   1231: goto -63 -> 1168
    //   1234: astore 25
    //   1236: goto -68 -> 1168
    //   1239: astore 19
    //   1241: goto -73 -> 1168
    //   1244: astore 66
    //   1246: aload 66
    //   1248: astore 32
    //   1250: aconst_null
    //   1251: astore 9
    //   1253: aconst_null
    //   1254: astore 11
    //   1256: goto -136 -> 1120
    //   1259: astore 32
    //   1261: aconst_null
    //   1262: astore 9
    //   1264: goto -144 -> 1120
    //   1267: astore 40
    //   1269: aload 39
    //   1271: astore 9
    //   1273: aload 40
    //   1275: astore 32
    //   1277: goto -157 -> 1120
    //   1280: astore 69
    //   1282: aconst_null
    //   1283: astore 27
    //   1285: aconst_null
    //   1286: astore 11
    //   1288: aconst_null
    //   1289: astore 10
    //   1291: goto -310 -> 981
    //   1294: astore 65
    //   1296: aconst_null
    //   1297: astore 27
    //   1299: aconst_null
    //   1300: astore 11
    //   1302: goto -321 -> 981
    //   1305: astore 26
    //   1307: aconst_null
    //   1308: astore 27
    //   1310: goto -329 -> 981
    //   1313: astore 68
    //   1315: aconst_null
    //   1316: astore 21
    //   1318: aconst_null
    //   1319: astore 11
    //   1321: aconst_null
    //   1322: astore 10
    //   1324: goto -488 -> 836
    //   1327: astore 64
    //   1329: aconst_null
    //   1330: astore 21
    //   1332: aconst_null
    //   1333: astore 11
    //   1335: goto -499 -> 836
    //   1338: astore 20
    //   1340: aconst_null
    //   1341: astore 21
    //   1343: goto -507 -> 836
    //   1346: astore 67
    //   1348: aconst_null
    //   1349: astore 15
    //   1351: aconst_null
    //   1352: astore 13
    //   1354: aconst_null
    //   1355: astore 14
    //   1357: goto -607 -> 750
    //   1360: astore 63
    //   1362: aload 10
    //   1364: astore 14
    //   1366: aconst_null
    //   1367: astore 15
    //   1369: aconst_null
    //   1370: astore 13
    //   1372: goto -622 -> 750
    //   1375: astore 12
    //   1377: aload 11
    //   1379: astore 13
    //   1381: aload 10
    //   1383: astore 14
    //   1385: aconst_null
    //   1386: astore 15
    //   1388: goto -638 -> 750
    //   1391: astore 38
    //   1393: goto -1015 -> 378
    //
    // Exception table:
    //   from	to	target	type
    //   65	72	83	java/io/IOException
    //   629	733	736	java/io/FileNotFoundException
    //   802	827	736	java/io/FileNotFoundException
    //   885	972	736	java/io/FileNotFoundException
    //   1030	1066	736	java/io/FileNotFoundException
    //   783	788	794	java/io/IOException
    //   629	733	830	java/io/IOException
    //   802	827	830	java/io/IOException
    //   885	972	830	java/io/IOException
    //   1030	1066	830	java/io/IOException
    //   869	874	880	java/io/IOException
    //   629	733	975	java/lang/OutOfMemoryError
    //   802	827	975	java/lang/OutOfMemoryError
    //   885	972	975	java/lang/OutOfMemoryError
    //   1030	1066	975	java/lang/OutOfMemoryError
    //   1014	1019	1025	java/io/IOException
    //   88	99	1108	finally
    //   770	775	1158	java/io/IOException
    //   1071	1076	1166	java/io/IOException
    //   856	861	1174	java/io/IOException
    //   1001	1006	1179	java/io/IOException
    //   1140	1145	1184	java/io/IOException
    //   1150	1155	1189	java/io/IOException
    //   1086	1091	1194	java/io/IOException
    //   1096	1101	1199	java/io/IOException
    //   1076	1081	1204	java/io/IOException
    //   1125	1130	1209	java/io/IOException
    //   1130	1135	1214	java/io/IOException
    //   986	991	1219	java/io/IOException
    //   991	996	1224	java/io/IOException
    //   841	846	1229	java/io/IOException
    //   846	851	1234	java/io/IOException
    //   755	765	1239	java/io/IOException
    //   99	108	1244	finally
    //   108	312	1259	finally
    //   312	378	1259	finally
    //   378	629	1259	finally
    //   629	733	1267	finally
    //   802	827	1267	finally
    //   885	972	1267	finally
    //   1030	1066	1267	finally
    //   88	99	1280	java/lang/OutOfMemoryError
    //   99	108	1294	java/lang/OutOfMemoryError
    //   108	312	1305	java/lang/OutOfMemoryError
    //   312	378	1305	java/lang/OutOfMemoryError
    //   378	629	1305	java/lang/OutOfMemoryError
    //   88	99	1313	java/io/IOException
    //   99	108	1327	java/io/IOException
    //   108	312	1338	java/io/IOException
    //   312	378	1338	java/io/IOException
    //   378	629	1338	java/io/IOException
    //   88	99	1346	java/io/FileNotFoundException
    //   99	108	1360	java/io/FileNotFoundException
    //   108	312	1375	java/io/FileNotFoundException
    //   312	378	1375	java/io/FileNotFoundException
    //   378	629	1375	java/io/FileNotFoundException
    //   312	378	1391	java/lang/Exception
  }

  private static HttpResponse a(HttpClient paramHttpClient, URI paramURI, File paramFile, r paramr)
  {
    HttpPost localHttpPost = new HttpPost(paramURI.toString().replace("&", ";") + ";full;");
    localHttpPost.addHeader("Content-type", "iavs4/upload");
    localHttpPost.setEntity(new j(paramFile, "binary/octet-stream", paramr));
    try
    {
      HttpResponse localHttpResponse2 = paramHttpClient.execute(localHttpPost);
      localHttpResponse1 = localHttpResponse2;
      return localHttpResponse1;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      while (true)
        localHttpResponse1 = null;
    }
    catch (IOException localIOException)
    {
      while (true)
        HttpResponse localHttpResponse1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.e
 * JD-Core Version:    0.6.2
 */