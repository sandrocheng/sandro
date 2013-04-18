package com.keniu.security.sync;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts.ContactMethods;
import android.provider.Contacts.Organizations;
import android.provider.Contacts.People;
import android.provider.Contacts.Phones;
import org.json.JSONException;
import org.json.JSONObject;

public final class e extends d
{
  private ContentResolver a;

  public final ContentResolver a()
  {
    return this.a;
  }

  public final String a(String paramString)
  {
    Cursor localCursor = this.a.query(Contacts.People.CONTENT_URI, null, "name =  '" + paramString + "'", null, null);
    for (String str = "-1"; localCursor.moveToNext(); str = localCursor.getString(localCursor.getColumnIndex("_id")));
    localCursor.close();
    return str;
  }

  public final String a(String paramString1, String paramString2)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString1;
    arrayOfString[1] = String.valueOf(2);
    arrayOfString[2] = paramString2;
    Cursor localCursor = this.a.query(Contacts.ContactMethods.CONTENT_URI, null, "person = ? AND kind = ? and data =?", arrayOfString, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  public final String a(String paramString1, String paramString2, String paramString3)
  {
    String[] arrayOfString = { paramString1, paramString2, paramString3 };
    Cursor localCursor = this.a.query(Contacts.Organizations.CONTENT_URI, null, "person = ? and company = ? and title = ?", arrayOfString, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  public final JSONObject a(Cursor paramCursor)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("_id"));
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("name"));
    paramCursor.getString(paramCursor.getColumnIndex("notes"));
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("FN", str2);
      localJSONObject1.put("ID", str1);
      Cursor localCursor1 = this.a.query(Contacts.Phones.CONTENT_URI, new String[] { "person", "number", "type" }, "person=" + str1, null, null);
      String str3 = "";
      String str4 = "";
      while (localCursor1.moveToNext())
      {
        String str19 = localCursor1.getString(localCursor1.getColumnIndex("number"));
        if ((str19 != null) && (!str19.equals("")) && (!str19.toLowerCase().equals("null")))
        {
          String str20 = localCursor1.getString(localCursor1.getColumnIndex("type"));
          str4 = str4 + str19 + ";";
          str3 = str3 + str20 + ";";
        }
      }
      localCursor1.close();
      if (str4.length() > 0)
        localJSONObject1.put("TEL", str4.substring(0, str4.length() - 1));
      if (str3.length() > 0)
        localJSONObject1.put("TTYPE", str3.substring(0, str3.length() - 1));
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = str1;
      arrayOfString1[1] = String.valueOf(1);
      Cursor localCursor2 = this.a.query(Contacts.ContactMethods.CONTENT_URI, null, "person = ? AND kind = ?", arrayOfString1, null);
      String str5 = "";
      String str6 = "";
      while (localCursor2.moveToNext())
      {
        String str17 = localCursor2.getString(localCursor2.getColumnIndex("data"));
        if ((str17 != null) && (!str17.equals("")) && (!str17.toLowerCase().equals("null")))
        {
          String str18 = localCursor2.getString(localCursor2.getColumnIndex("type"));
          str6 = str6 + str17 + ";";
          str5 = str5 + str18 + ";";
        }
      }
      localCursor2.close();
      if (str6.length() > 0)
        localJSONObject1.put("EMAIL", str6.substring(0, str6.length() - 1));
      if (str5.length() > 0)
        localJSONObject1.put("ETYPE", str5.substring(0, str5.length() - 1));
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = str1;
      arrayOfString2[1] = String.valueOf(2);
      Cursor localCursor3 = this.a.query(Contacts.ContactMethods.CONTENT_URI, null, "person = ? AND kind = ?", arrayOfString2, null);
      String str7 = "";
      String str8 = "";
      while (localCursor3.moveToNext())
      {
        String str15 = localCursor3.getString(localCursor3.getColumnIndex("data"));
        if ((str15 != null) && (!str15.equals("")) && (!str15.toLowerCase().equals("null")))
        {
          String str16 = localCursor3.getString(localCursor3.getColumnIndex("type"));
          str8 = str8 + str15 + ";";
          str7 = str7 + str16 + ";";
        }
      }
      localCursor3.close();
      if (str8.length() > 0)
        localJSONObject1.put("ADR", str8.substring(0, str8.length() - 1));
      if (str7.length() > 0)
        localJSONObject1.put("ATYPE", str7.substring(0, str7.length() - 1));
      String[] arrayOfString3 = { str1 };
      Cursor localCursor4 = this.a.query(Contacts.Organizations.CONTENT_URI, null, "person = ?", arrayOfString3, null);
      String str9 = "";
      String str10 = "";
      label850: String str14;
      for (String str11 = ""; localCursor4.moveToNext(); str11 = str11 + str14 + ";")
      {
        String str12 = localCursor4.getString(localCursor4.getColumnIndex("company"));
        if ((str12 == null) || (str12.equals("")) || (str12.toLowerCase().equals("null")))
          break label850;
        String str13 = localCursor4.getString(localCursor4.getColumnIndex("title"));
        str14 = localCursor4.getString(localCursor4.getColumnIndex("type"));
        str10 = str10 + str12 + ";";
        str9 = str9 + str13 + ";";
      }
      localCursor4.close();
      if (str10.length() > 0)
        localJSONObject1.put("ORG", str10.substring(0, str10.length() - 1));
      if (str9.length() > 0)
        localJSONObject1.put("OTITLE", str9.substring(0, str9.length() - 1));
      if (str11.length() > 0)
        localJSONObject1.put("OTYPE", str11.substring(0, str11.length() - 1));
      localJSONObject2 = localJSONObject1;
      return localJSONObject2;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        localJSONException.printStackTrace();
        JSONObject localJSONObject2 = null;
      }
    }
  }

  public final void a(long paramLong, String paramString1, String paramString2)
  {
    if ((paramString1.equals("")) || (paramString2.equals("")));
    while (true)
    {
      return;
      Uri localUri1 = Uri.withAppendedPath(Contacts.People.CONTENT_URI, String.valueOf(paramLong));
      ContentValues localContentValues = new ContentValues();
      Uri localUri2 = Uri.withAppendedPath(localUri1, "phones");
      localContentValues.put("type", paramString2);
      localContentValues.put("number", paramString1);
      this.a.insert(localUri2, localContentValues);
    }
  }

  public final void a(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals("")) || (paramString2.equals("")));
    while (true)
    {
      return;
      Uri localUri1 = Uri.withAppendedPath(Contacts.People.CONTENT_URI, String.valueOf(paramLong));
      ContentValues localContentValues = new ContentValues();
      Uri localUri2 = Uri.withAppendedPath(localUri1, "contact_methods");
      localContentValues.put("kind", Integer.valueOf(2));
      localContentValues.put("data", paramString1);
      localContentValues.put("type", paramString2);
      this.a.insert(localUri2, localContentValues);
    }
  }

  public final void a(ContentResolver paramContentResolver)
  {
    this.a = paramContentResolver;
  }

  public final void a(g paramg)
  {
    int i = 0;
    long l = b(paramg.e());
    if (l == -1L);
    while (true)
    {
      return;
      if ((paramg.i() != null) && (!paramg.i().equals("")) && (paramg.k() != null))
      {
        String[] arrayOfString8 = paramg.i().split(";");
        String[] arrayOfString9 = paramg.k().split(";");
        for (int m = 0; m < arrayOfString8.length; m++)
          if ((arrayOfString8[m] != null) && (!arrayOfString8[m].trim().equals("")))
            a(l, arrayOfString8[m], arrayOfString9[m]);
      }
      if ((paramg.g() != null) && (!paramg.g().equals("")) && (paramg.j() != null))
      {
        String[] arrayOfString6 = paramg.g().split(";");
        String[] arrayOfString7 = paramg.j().split(";");
        for (int k = 0; k < arrayOfString6.length; k++)
          if ((arrayOfString6[k] != null) && (!arrayOfString6[k].trim().equals("")))
            b(l, arrayOfString6[k], arrayOfString7[k]);
      }
      if ((paramg.f() != null) && (!paramg.f().equals("")) && (paramg.d() != null))
      {
        String[] arrayOfString4 = paramg.f().split(";");
        String[] arrayOfString5 = paramg.d().split(";");
        for (int j = 0; j < arrayOfString4.length; j++)
          if ((arrayOfString4[j] != null) && (!arrayOfString4[j].trim().equals("")))
            a(l, arrayOfString4[j], arrayOfString5[j], null);
      }
      if ((paramg.h() != null) && (!paramg.h().equals("")) && (paramg.b() != null))
      {
        String[] arrayOfString1 = paramg.h().split(";");
        String[] arrayOfString2 = paramg.b().split(";");
        String[] arrayOfString3 = paramg.c().split(";");
        while (i < arrayOfString1.length)
        {
          if ((arrayOfString1[i] != null) && (!arrayOfString1[i].trim().equals("")))
            b(l, arrayOfString1[i], arrayOfString2[i], arrayOfString3[i]);
          i++;
        }
      }
    }
  }

  public final long b(String paramString)
  {
    long l1;
    if ((paramString == null) || (paramString.equals("")))
      l1 = -1L;
    while (true)
    {
      return l1;
      try
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("name", paramString);
        localContentValues.put("starred", Integer.valueOf(0));
        long l2 = Long.parseLong(Contacts.People.createPersonInMyContactsGroup(this.a, localContentValues).toString().split("people/")[1]);
        l1 = l2;
      }
      catch (Exception localException)
      {
        l1 = -1L;
      }
    }
  }

  public final Cursor b()
  {
    return this.a.query(Contacts.People.CONTENT_URI, null, null, null, null);
  }

  public final String b(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.query(Contacts.Phones.CONTENT_URI, null, "person =? and number =? ", new String[] { paramString1, paramString2 }, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }

  public final void b(long paramLong, String paramString1, String paramString2)
  {
    if ((paramString1.equals("")) || (paramString1.equals("")));
    while (true)
    {
      return;
      Uri localUri1 = Uri.withAppendedPath(Contacts.People.CONTENT_URI, String.valueOf(paramLong));
      ContentValues localContentValues = new ContentValues();
      Uri localUri2 = Uri.withAppendedPath(localUri1, "contact_methods");
      localContentValues.put("kind", Integer.valueOf(1));
      localContentValues.put("data", paramString1);
      localContentValues.put("type", paramString2);
      this.a.insert(localUri2, localContentValues);
    }
  }

  public final void b(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals("")) || (paramString1.equals("")));
    while (true)
    {
      return;
      Uri localUri1 = Uri.withAppendedPath(Contacts.People.CONTENT_URI, String.valueOf(paramLong));
      ContentValues localContentValues = new ContentValues();
      Uri localUri2 = Uri.withAppendedPath(localUri1, "organizations");
      localContentValues.put("company", paramString1);
      localContentValues.put("title", paramString2);
      localContentValues.put("type", paramString3);
      this.a.insert(localUri2, localContentValues);
    }
  }

  public final String c(String paramString1, String paramString2)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString1;
    arrayOfString[1] = String.valueOf(1);
    arrayOfString[2] = paramString2;
    Cursor localCursor = this.a.query(Contacts.ContactMethods.CONTENT_URI, null, "person = ? AND kind = ? and data = ?", arrayOfString, null);
    if (localCursor.moveToNext());
    for (String str = localCursor.getString(localCursor.getColumnIndex("_id")); ; str = "-1")
    {
      localCursor.close();
      return str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.e
 * JD-Core Version:    0.6.2
 */