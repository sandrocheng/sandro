import com.tencent.tmsecure.module.aresengine.SmsEntity;
import org.json.JSONObject;

public final class mk extends SmsEntity
  implements ls<mk>
{
  public int a;
  public int b;
  public String c;
  public String d;
  public int e;
  public String f;
  public boolean g;
  public int h;
  public boolean i;
  public int j;
  public boolean k;
  public boolean l;
  public boolean m = true;
  public int n;
  public int o;

  public mk()
  {
  }

  public mk(SmsEntity paramSmsEntity)
  {
    super(paramSmsEntity);
  }

  public static mk a(JSONObject paramJSONObject)
  {
    mk localmk = new mk();
    localmk.j = paramJSONObject.optInt("blockType");
    localmk.body = paramJSONObject.optString("body");
    localmk.date = paramJSONObject.optLong("date");
    localmk.id = paramJSONObject.optInt("id");
    localmk.m = paramJSONObject.optBoolean("isHideDetail");
    localmk.k = paramJSONObject.optBoolean("isReport");
    localmk.g = paramJSONObject.optBoolean("isSecure");
    localmk.name = paramJSONObject.optString("name");
    localmk.b = paramJSONObject.optInt("person");
    localmk.phonenum = paramJSONObject.optString("phonenum");
    localmk.protocolType = paramJSONObject.optInt("protocolType");
    localmk.read = paramJSONObject.optInt("read");
    localmk.a = paramJSONObject.optInt("read_extend");
    localmk.d = paramJSONObject.optString("serviceCenter");
    localmk.h = paramJSONObject.optInt("status");
    localmk.c = paramJSONObject.optString("subject");
    localmk.e = paramJSONObject.optInt("threadId");
    localmk.n = paramJSONObject.optInt("totalNumber");
    localmk.type = paramJSONObject.optInt("type");
    localmk.o = paramJSONObject.optInt("unreadNumber");
    localmk.f = paramJSONObject.optString("fromCard");
    return localmk;
  }

  // ERROR //
  private static JSONObject a(mk parammk)
  {
    // Byte code:
    //   0: new 40	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 141	org/json/JSONObject:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 38
    //   11: aload_0
    //   12: getfield 46	mk:j	I
    //   15: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   18: pop
    //   19: aload_1
    //   20: ldc 48
    //   22: aload_0
    //   23: getfield 54	mk:body	Ljava/lang/String;
    //   26: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   29: pop
    //   30: aload_1
    //   31: ldc 56
    //   33: aload_0
    //   34: getfield 63	mk:date	J
    //   37: invokevirtual 151	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   40: pop
    //   41: aload_1
    //   42: ldc 65
    //   44: aload_0
    //   45: getfield 67	mk:id	I
    //   48: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   51: pop
    //   52: aload_1
    //   53: ldc 69
    //   55: aload_0
    //   56: getfield 31	mk:m	Z
    //   59: invokevirtual 154	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   62: pop
    //   63: aload_1
    //   64: ldc 75
    //   66: aload_0
    //   67: getfield 77	mk:k	Z
    //   70: invokevirtual 154	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   73: pop
    //   74: aload_1
    //   75: ldc 79
    //   77: aload_0
    //   78: getfield 81	mk:g	Z
    //   81: invokevirtual 154	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   84: pop
    //   85: aload_1
    //   86: ldc 83
    //   88: aload_0
    //   89: getfield 85	mk:name	Ljava/lang/String;
    //   92: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   95: pop
    //   96: aload_1
    //   97: ldc 87
    //   99: aload_0
    //   100: getfield 89	mk:b	I
    //   103: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   106: pop
    //   107: aload_1
    //   108: ldc 91
    //   110: aload_0
    //   111: getfield 93	mk:phonenum	Ljava/lang/String;
    //   114: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   117: pop
    //   118: aload_1
    //   119: ldc 95
    //   121: aload_0
    //   122: getfield 97	mk:protocolType	I
    //   125: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   128: pop
    //   129: aload_1
    //   130: ldc 99
    //   132: aload_0
    //   133: getfield 101	mk:read	I
    //   136: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   139: pop
    //   140: aload_1
    //   141: ldc 103
    //   143: aload_0
    //   144: getfield 105	mk:a	I
    //   147: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   150: pop
    //   151: aload_1
    //   152: ldc 107
    //   154: aload_0
    //   155: getfield 109	mk:d	Ljava/lang/String;
    //   158: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   161: pop
    //   162: aload_1
    //   163: ldc 111
    //   165: aload_0
    //   166: getfield 113	mk:h	I
    //   169: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   172: pop
    //   173: aload_1
    //   174: ldc 115
    //   176: aload_0
    //   177: getfield 117	mk:c	Ljava/lang/String;
    //   180: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   183: pop
    //   184: aload_1
    //   185: ldc 119
    //   187: aload_0
    //   188: getfield 121	mk:e	I
    //   191: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   194: pop
    //   195: aload_1
    //   196: ldc 123
    //   198: aload_0
    //   199: getfield 125	mk:n	I
    //   202: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   205: pop
    //   206: aload_1
    //   207: ldc 127
    //   209: aload_0
    //   210: getfield 129	mk:type	I
    //   213: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   216: pop
    //   217: aload_1
    //   218: ldc 131
    //   220: aload_0
    //   221: getfield 133	mk:o	I
    //   224: invokevirtual 145	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   227: pop
    //   228: aload_1
    //   229: ldc 135
    //   231: aload_0
    //   232: getfield 137	mk:f	Ljava/lang/String;
    //   235: invokevirtual 148	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   238: pop
    //   239: aload_1
    //   240: areturn
    //   241: astore 24
    //   243: aconst_null
    //   244: astore_1
    //   245: aload 24
    //   247: astore_2
    //   248: aload_2
    //   249: invokevirtual 157	org/json/JSONException:printStackTrace	()V
    //   252: goto -13 -> 239
    //   255: astore_2
    //   256: goto -8 -> 248
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	241	org/json/JSONException
    //   8	239	255	org/json/JSONException
  }

  public final String a()
  {
    return this.phonenum;
  }

  public final void a(String paramString)
  {
    if (paramString != null);
    while (true)
    {
      this.phonenum = paramString;
      return;
      paramString = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mk
 * JD-Core Version:    0.6.2
 */