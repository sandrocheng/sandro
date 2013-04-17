import com.tencent.tmsecure.module.aresengine.ContactEntity;
import org.json.JSONObject;

public final class lf extends ContactEntity
  implements ls<lf>
{
  public Object a;
  public int b;
  private boolean c = false;

  public lf()
  {
  }

  public lf(String paramString1, String paramString2, int paramInt)
  {
    this.name = paramString1;
    this.phonenum = paramString2;
    this.b = paramInt;
    this.enableForCalling = true;
    this.enableForSMS = true;
  }

  public static lf a(JSONObject paramJSONObject)
  {
    lf locallf = new lf();
    locallf.enableForCalling = paramJSONObject.optBoolean("enableForCalling");
    locallf.enableForSMS = paramJSONObject.optBoolean("enableForSMS");
    locallf.id = paramJSONObject.optInt("id");
    locallf.isSimContact = paramJSONObject.optBoolean("isSimContact");
    locallf.name = paramJSONObject.optString("name");
    locallf.phonenum = paramJSONObject.optString("phonenum");
    locallf.b = paramJSONObject.optInt("type");
    return locallf;
  }

  // ERROR //
  private static JSONObject a(lf paramlf)
  {
    // Byte code:
    //   0: new 40	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 69	org/json/JSONObject:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 38
    //   11: aload_0
    //   12: getfield 32	lf:enableForCalling	Z
    //   15: invokevirtual 73	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   18: pop
    //   19: aload_1
    //   20: ldc 45
    //   22: aload_0
    //   23: getfield 35	lf:enableForSMS	Z
    //   26: invokevirtual 73	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   29: pop
    //   30: aload_1
    //   31: ldc 47
    //   33: aload_0
    //   34: getfield 53	lf:id	I
    //   37: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   40: pop
    //   41: aload_1
    //   42: ldc 55
    //   44: aload_0
    //   45: getfield 57	lf:isSimContact	Z
    //   48: invokevirtual 73	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   51: pop
    //   52: aload_1
    //   53: ldc 58
    //   55: aload_0
    //   56: getfield 24	lf:name	Ljava/lang/String;
    //   59: invokevirtual 79	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   62: pop
    //   63: aload_1
    //   64: ldc 63
    //   66: aload_0
    //   67: getfield 27	lf:phonenum	Ljava/lang/String;
    //   70: invokevirtual 79	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   73: pop
    //   74: aload_1
    //   75: ldc 65
    //   77: aload_0
    //   78: getfield 29	lf:b	I
    //   81: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   84: pop
    //   85: aload_1
    //   86: areturn
    //   87: astore 10
    //   89: aconst_null
    //   90: astore_1
    //   91: aload 10
    //   93: astore_2
    //   94: aload_2
    //   95: invokevirtual 82	org/json/JSONException:printStackTrace	()V
    //   98: goto -13 -> 85
    //   101: astore_2
    //   102: goto -8 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	87	org/json/JSONException
    //   8	85	101	org/json/JSONException
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final boolean a()
  {
    return this.c;
  }

  public final lf b()
  {
    lf locallf = new lf();
    locallf.id = this.id;
    locallf.name = this.name;
    locallf.phonenum = this.phonenum;
    locallf.b = this.b;
    locallf.enableForCalling = this.enableForCalling;
    locallf.enableForSMS = this.enableForSMS;
    locallf.a = this.a;
    return locallf;
  }

  public final String toString()
  {
    return "Contact [tag=" + this.a + ", type=" + this.b + ", isShowDetail=" + this.c + ", isSimContact=" + this.isSimContact + ", enableForSMS=" + this.enableForSMS + ", enableForCalling=" + this.enableForCalling + ", phonenum=" + this.phonenum + ", name=" + this.name + ", id=" + this.id + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     lf
 * JD-Core Version:    0.6.2
 */