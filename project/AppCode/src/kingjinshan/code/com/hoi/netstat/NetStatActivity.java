package com.hoi.netstat;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.DateFormat;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

public class NetStatActivity extends Activity
{
  private static String a = "ok";
  private ListView b;
  private Handler c = new b(this);

  private void a(String paramString1, String paramString2)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(new File("/sdcard/" + paramString1), true);
      String str1 = paramString2.trim();
      String str2 = c();
      localFileOutputStream.write(str2.getBytes());
      localFileOutputStream.write(b(str2 + "ijinshan").getBytes());
      localFileOutputStream.write("\r\n[[[\r\n".getBytes());
      localFileOutputStream.write(str1.getBytes());
      localFileOutputStream.write("\r\n]]]".getBytes());
      localFileOutputStream.write(b(str1 + "ijinshan").getBytes());
      localFileOutputStream.write("\r\n\r\n".getBytes());
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  private static void a(ArrayList paramArrayList, String[] paramArrayOfString, Object[] paramArrayOfObject)
  {
    HashMap localHashMap = new HashMap();
    for (int i = 0; i < paramArrayOfString.length; i++)
      localHashMap.put(paramArrayOfString[i], paramArrayOfObject[i]);
    paramArrayList.add(localHashMap);
  }

  private static String b(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      byte[] arrayOfByte1 = paramString.getBytes();
      localMessageDigest.update(arrayOfByte1, 0, arrayOfByte1.length);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      for (int i = 0; i < arrayOfByte2.length; i++)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Byte.valueOf(arrayOfByte2[i]);
        localStringBuffer.append(String.format("%02x", arrayOfObject));
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return localStringBuffer.toString().toLowerCase();
  }

  // ERROR //
  private String c()
  {
    // Byte code:
    //   0: invokestatic 165	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   3: ldc 167
    //   5: invokevirtual 171	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   8: astore 22
    //   10: iconst_1
    //   11: istore_3
    //   12: aload 22
    //   14: ifnull +648 -> 662
    //   17: aload 22
    //   19: invokevirtual 176	java/lang/Process:destroy	()V
    //   22: iload_3
    //   23: istore 4
    //   25: new 38	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   32: ldc 178
    //   34: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 180
    //   39: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: iload 4
    //   44: invokevirtual 183	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   47: ldc 185
    //   49: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: astore 5
    //   57: new 38	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   64: aload 5
    //   66: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc 187
    //   71: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: getstatic 192	android/os/Build:ID	Ljava/lang/String;
    //   77: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: ldc 185
    //   82: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: astore 6
    //   90: new 38	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   97: aload 6
    //   99: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: ldc 194
    //   104: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: getstatic 197	android/os/Build:DISPLAY	Ljava/lang/String;
    //   110: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: ldc 185
    //   115: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: astore 7
    //   123: new 38	java/lang/StringBuilder
    //   126: dup
    //   127: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   130: aload 7
    //   132: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: ldc 199
    //   137: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: getstatic 202	android/os/Build:PRODUCT	Ljava/lang/String;
    //   143: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc 185
    //   148: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: astore 8
    //   156: new 38	java/lang/StringBuilder
    //   159: dup
    //   160: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   163: aload 8
    //   165: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: ldc 204
    //   170: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: getstatic 207	android/os/Build:DEVICE	Ljava/lang/String;
    //   176: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: ldc 185
    //   181: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: astore 9
    //   189: new 38	java/lang/StringBuilder
    //   192: dup
    //   193: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   196: aload 9
    //   198: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: ldc 209
    //   203: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: getstatic 212	android/os/Build:BOARD	Ljava/lang/String;
    //   209: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: ldc 185
    //   214: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: astore 10
    //   222: new 38	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   229: aload 10
    //   231: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc 214
    //   236: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: getstatic 217	android/os/Build:BRAND	Ljava/lang/String;
    //   242: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc 185
    //   247: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: astore 11
    //   255: new 38	java/lang/StringBuilder
    //   258: dup
    //   259: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   262: aload 11
    //   264: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: ldc 219
    //   269: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: getstatic 222	android/os/Build:MODEL	Ljava/lang/String;
    //   275: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: ldc 185
    //   280: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   286: astore 12
    //   288: new 38	java/lang/StringBuilder
    //   291: dup
    //   292: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   295: aload 12
    //   297: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: ldc 224
    //   302: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: getstatic 229	android/os/Build$VERSION:INCREMENTAL	Ljava/lang/String;
    //   308: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: ldc 185
    //   313: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: astore 13
    //   321: new 38	java/lang/StringBuilder
    //   324: dup
    //   325: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   328: aload 13
    //   330: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: ldc 231
    //   335: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: getstatic 234	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   341: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: ldc 185
    //   346: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: astore 14
    //   354: new 38	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   361: aload 14
    //   363: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: ldc 236
    //   368: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: getstatic 239	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   374: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: ldc 185
    //   379: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: astore 15
    //   387: new 38	java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   394: aload 15
    //   396: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: ldc 241
    //   401: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: getstatic 244	android/os/Build:TYPE	Ljava/lang/String;
    //   407: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: ldc 185
    //   412: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: astore 16
    //   420: new 38	java/lang/StringBuilder
    //   423: dup
    //   424: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   427: aload 16
    //   429: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: ldc 246
    //   434: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: getstatic 249	android/os/Build:TAGS	Ljava/lang/String;
    //   440: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: ldc 185
    //   445: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   448: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   451: astore 17
    //   453: new 38	java/lang/StringBuilder
    //   456: dup
    //   457: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   460: aload 17
    //   462: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: ldc 251
    //   467: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: getstatic 254	android/os/Build:FINGERPRINT	Ljava/lang/String;
    //   473: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: ldc 185
    //   478: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   484: astore 18
    //   486: new 38	java/lang/StringBuilder
    //   489: dup
    //   490: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   493: aload 18
    //   495: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   498: ldc_w 256
    //   501: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: getstatic 260	android/os/Build:TIME	J
    //   507: invokevirtual 263	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   510: ldc 185
    //   512: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   515: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   518: astore 19
    //   520: new 38	java/lang/StringBuilder
    //   523: dup
    //   524: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   527: aload 19
    //   529: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: ldc_w 265
    //   535: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: getstatic 268	android/os/Build:USER	Ljava/lang/String;
    //   541: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: ldc 185
    //   546: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   552: astore 20
    //   554: new 38	java/lang/StringBuilder
    //   557: dup
    //   558: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   561: aload 20
    //   563: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: ldc_w 270
    //   569: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   572: getstatic 273	android/os/Build:HOST	Ljava/lang/String;
    //   575: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: ldc 185
    //   580: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   583: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: astore 21
    //   588: new 38	java/lang/StringBuilder
    //   591: dup
    //   592: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   595: ldc_w 275
    //   598: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: aload_0
    //   602: ldc_w 276
    //   605: invokevirtual 280	com/hoi/netstat/NetStatActivity:getString	(I)Ljava/lang/String;
    //   608: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: ldc 185
    //   613: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   616: aload 21
    //   618: invokevirtual 59	java/lang/String:trim	()Ljava/lang/String;
    //   621: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   624: ldc_w 282
    //   627: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   633: areturn
    //   634: astore_2
    //   635: iconst_0
    //   636: istore_3
    //   637: iconst_0
    //   638: ifeq +24 -> 662
    //   641: aconst_null
    //   642: invokevirtual 176	java/lang/Process:destroy	()V
    //   645: iconst_0
    //   646: istore 4
    //   648: goto -623 -> 25
    //   651: astore_1
    //   652: iconst_0
    //   653: ifeq +7 -> 660
    //   656: aconst_null
    //   657: invokevirtual 176	java/lang/Process:destroy	()V
    //   660: aload_1
    //   661: athrow
    //   662: iload_3
    //   663: istore 4
    //   665: goto -640 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	634	java/io/IOException
    //   0	10	651	finally
  }

  private static String d()
  {
    return DateFormat.format("kk:mm yyyy/MM/dd", System.currentTimeMillis()).toString();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903237);
    this.b = ((ListView)findViewById(2131231471));
    this.b.setBackgroundColor(-16777216);
    String[] arrayOfString = { "title", "text", "action" };
    int[] arrayOfInt = { 2131231472, 2131231473 };
    ArrayList localArrayList = new ArrayList();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = getString(2131428267);
    arrayOfObject[1] = "";
    arrayOfObject[2] = new c(this);
    a(localArrayList, arrayOfString, arrayOfObject);
    this.b.setOnItemClickListener(new d(this, localArrayList));
    this.b.setAdapter(new SimpleAdapter(this, localArrayList, 2130903238, arrayOfString, arrayOfInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.NetStatActivity
 * JD-Core Version:    0.6.2
 */