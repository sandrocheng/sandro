package a.a.a.a.a;

import org.json.JSONException;
import org.json.JSONObject;

class c
{
  String a;
  String b;
  int c;
  String d;
  String e;
  String f;
  String g;
  String h;
  long i;
  String j;
  String k;
  String l;
  String m;
  String n;
  long o;

  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("hwid", this.a);
      localJSONObject.put("packageName", this.b);
      localJSONObject.put("versionCode", this.c);
      localJSONObject.put("versionName", this.d);
      localJSONObject.put("aRelease", this.e);
      localJSONObject.put("aCodename", this.f);
      localJSONObject.put("model", this.g);
      localJSONObject.put("buildId", this.h);
      localJSONObject.put("buildTime", this.i);
      localJSONObject.put("buildType", this.j);
      localJSONObject.put("buildTags", this.k);
      localJSONObject.put("board", this.l);
      localJSONObject.put("brand", this.m);
      localJSONObject.put("device", this.n);
      localJSONObject.put("avalaibleSpace", this.o);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.a.c
 * JD-Core Version:    0.6.2
 */