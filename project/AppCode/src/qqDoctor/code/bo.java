import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts.ContactMethods;
import android.provider.Contacts.GroupMembership;
import android.provider.Contacts.Groups;
import android.provider.Contacts.Organizations;
import android.provider.Contacts.People;
import android.provider.Contacts.Phones;
import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bo extends bn
{
  private static ContentValues b = new ContentValues();
  private static ArrayList<cp> c = new ArrayList();
  private static ArrayList<cp> d = new ArrayList();
  private static final String[] e = { "", "HOME", "CELL", "WORK", "FAX;WORK", "FAX;HOME", "PAGER", "OTHER" };
  private static final String[] f = { "", "HOME", "WORK", "OTHER" };
  private static final String[] g = { "AIM", "MSN", "YAHOO", "SKYPE", "QQ", "GTALK", "ICQ", "JABBER" };
  private static final String[] h = { "", "WORK", "OTHER" };
  private static final Map<String, Integer> i = new HashMap();
  private static final String[] j = { "TEL", "ADR", "EMAIL", "X-TC-IM", "FN", "PHOTO", "ORG", "TITLE", "NOTE", "N", "NICKNAME", "X-FOCUS", "CATEGORIES", "RINGTONE" };
  private static long k;
  private static long l;
  private static Uri m;
  private static final Uri n;
  private static final Uri o;
  private static final Uri p;
  private static char[] r;
  private br q = null;

  static
  {
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= 14)
      {
        k = 0L;
        l = -1L;
        n = Uri.parse("content://contacts/organizations");
        o = Uri.parse("content://contacts/contact_methods");
        p = Uri.parse("content://contacts/phones");
        char[] arrayOfChar = new char[4];
        r = arrayOfChar;
        arrayOfChar[0] = '\\';
        r[1] = ';';
        r[2] = '\r';
        r[3] = '\n';
        return;
      }
      i.put(j[i1], Integer.valueOf(i1));
    }
  }

  private bo(Context paramContext)
  {
    super(paramContext);
    this.q = br.a(paramContext);
  }

  private static ContentValues a(cp paramcp)
  {
    ContentValues localContentValues = new ContentValues();
    String[] arrayOfString;
    int i1;
    if (paramcp.a[0].toString().equals("ADR"))
    {
      localContentValues.put("kind", Integer.valueOf(2));
      localContentValues.put("data", ct.b(paramcp.a[2].toString()));
      arrayOfString = ct.a(paramcp.a[1].toString());
      i1 = ct.a(f, arrayOfString[0]);
      if (i1 > 0)
        break label157;
      localContentValues.put("type", Integer.valueOf(0));
      localContentValues.put("label", arrayOfString[0]);
    }
    while (true)
    {
      if (arrayOfString.length > 1)
        localContentValues.put("isprimary", Integer.valueOf(1));
      localContentValues.put("person", Long.valueOf(l));
      return localContentValues;
      localContentValues.put("kind", Integer.valueOf(1));
      localContentValues.put("data", paramcp.a[2].toString());
      break;
      label157: localContentValues.put("type", Integer.valueOf(i1));
    }
  }

  private static ContentValues a(cp paramcp, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("title", paramString);
    String[] arrayOfString;
    int i1;
    if (paramcp != null)
    {
      arrayOfString = ct.a(paramcp.a[1].toString());
      i1 = ct.a(h, arrayOfString[0]);
      if (i1 > 0)
        break label112;
      localContentValues.put("type", Integer.valueOf(0));
      localContentValues.put("label", arrayOfString[0]);
    }
    while (true)
    {
      if (arrayOfString.length > 1)
        localContentValues.put("isprimary", Integer.valueOf(1));
      localContentValues.put("company", paramcp.a[2].toString());
      localContentValues.put("person", Long.valueOf(l));
      return localContentValues;
      label112: localContentValues.put("type", Integer.valueOf(i1));
    }
  }

  private static void a(long paramLong)
  {
    Cursor localCursor;
    if (k == 0L)
    {
      localCursor = a.query(Contacts.Groups.CONTENT_URI, null, "system_id='Contacts'", null, null);
      if (localCursor == null);
    }
    try
    {
      if (localCursor.moveToFirst())
        k = localCursor.getLong(localCursor.getColumnIndex("_id"));
      localCursor.close();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("person", Long.valueOf(paramLong));
      localContentValues.put("group_id", Long.valueOf(k));
      a.insert(Contacts.GroupMembership.CONTENT_URI, localContentValues);
      return;
    }
    finally
    {
      localCursor.close();
    }
  }

  private void a(long paramLong, ArrayList<String> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      a(paramLong);
    Iterator localIterator = paramArrayList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      if ((str != null) && (str.length() > 0))
      {
        int i1 = this.q.a(str);
        if (i1 != -1)
        {
          br.a(paramLong, i1);
        }
        else
        {
          long l1 = br.b(str);
          this.q.a();
          br.a(paramLong, (int)l1);
        }
      }
    }
  }

  private static boolean a(Uri paramUri, cp paramcp)
  {
    try
    {
      b.clear();
      b.put("data", paramcp.b);
      Contacts.People.setPhotoData(a, paramUri, paramcp.b);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        dk.c("SYSContactDaoV1", "addPhoto(), " + localException.toString());
    }
  }

  protected static bo b(Context paramContext)
  {
    return new bo(paramContext);
  }

  private static ArrayList<cp> e(String paramString)
  {
    String[] arrayOfString = { "number", "type", "label", "isprimary" };
    Cursor localCursor = a.query(Contacts.Phones.CONTENT_URI, arrayOfString, "person = ?", new String[] { paramString }, null);
    Object localObject = null;
    if (localCursor == null);
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      if (localCursor.moveToNext())
        break;
      localCursor.close();
    }
    cp localcp = new cp();
    localcp.a[0].append("TEL");
    String str1 = localCursor.getString(localCursor.getColumnIndex("number"));
    if (str1 != null)
      localcp.a[2].append(str1);
    int i1 = Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("type")));
    if ((i1 > 0) && (i1 < 8))
    {
      String str3 = e[i1];
      if (str3 != null)
        localcp.a[1].append(str3);
    }
    while (true)
    {
      if (localCursor.getInt(localCursor.getColumnIndex("isprimary")) == 1)
        localcp.c = true;
      ((ArrayList)localObject).add(localcp);
      break;
      String str2 = localCursor.getString(localCursor.getColumnIndex("label"));
      if (str2 != null)
        localcp.a[1].append(str2);
    }
  }

  private static ArrayList<cp> f(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = a.query(Uri.withAppendedPath(Uri.withAppendedPath(Contacts.People.CONTENT_URI, paramString), "contact_methods"), null, null, null, null);
    Object localObject1 = null;
    label40: cp localcp;
    int i1;
    if (localCursor == null)
    {
      return localObject1;
      localcp = new cp();
      i1 = localCursor.getInt(localCursor.getColumnIndex("kind"));
      if (i1 != 1)
        break label256;
      localcp.a[0].append("EMAIL");
      String str8 = localCursor.getString(localCursor.getColumnIndex("data"));
      if (str8 != null)
        localcp.a[2].append(str8);
      if (!localCursor.getString(localCursor.getColumnIndex("type")).equals("0"))
        break label202;
      String str10 = localCursor.getString(localCursor.getColumnIndex("label"));
      if (str10 != null)
        localcp.a[1].append(str10);
    }
    while (true)
    {
      localArrayList.add(localcp);
      if (localCursor.moveToNext())
        break label40;
      localCursor.close();
      localObject1 = localArrayList;
      break;
      label202: int i4 = Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("type")));
      if (i4 < 4)
      {
        String str9 = f[i4];
        if (str9 != null)
        {
          localcp.a[1].append(str9);
          continue;
          label256: if (i1 == 2)
          {
            localcp.a[0].append("ADR");
            String str5 = ";;" + de.a(localCursor.getString(localCursor.getColumnIndex("data")), r);
            if (str5 != null)
              localcp.a[2].append(str5);
            if (localCursor.getString(localCursor.getColumnIndex("type")).equals("0"))
            {
              String str7 = localCursor.getString(localCursor.getColumnIndex("label"));
              if (str7 != null)
                localcp.a[1].append(str7);
            }
            else
            {
              int i3 = Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("type")));
              if (i3 < 4)
              {
                String str6 = f[i3];
                if (str6 != null)
                  localcp.a[1].append(str6);
              }
            }
          }
          else
          {
            localcp.a[0].append("X-TC-IM");
            String str1 = localCursor.getString(localCursor.getColumnIndex("data"));
            if (str1 != null)
              localcp.a[2].append(str1);
            Object localObject2 = Contacts.ContactMethods.decodeImProtocol(localCursor.getString(localCursor.getColumnIndex("aux_data")));
            if ((localObject2 instanceof Integer))
            {
              int i2 = ((Integer)localObject2).intValue();
              if (ci.b)
              {
                if (i2 <= 7)
                {
                  String str4 = g[i2];
                  if (str4 != null)
                    localcp.a[1].append(str4);
                }
                else
                {
                  localcp.a[1].append("FETION");
                }
              }
              else if (i2 <= 7)
              {
                String str3 = g[i2];
                if (str3 != null)
                  localcp.a[1].append(str3);
              }
            }
            else
            {
              String str2 = (String)localObject2;
              if (str2 != null)
                localcp.a[1].append(str2);
            }
          }
        }
      }
    }
  }

  private static ArrayList<cp> g(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = { paramString };
    Cursor localCursor = a.query(Contacts.Organizations.CONTENT_URI, null, "person = ?", arrayOfString, null);
    Object localObject = null;
    label43: cp localcp1;
    cp localcp2;
    String str3;
    if (localCursor == null)
    {
      return localObject;
      localcp1 = new cp();
      localcp2 = new cp();
      localcp1.a[0].append("ORG");
      localcp2.a[0].append("TITLE");
      String str1 = localCursor.getString(localCursor.getColumnIndex("company"));
      if (str1 != null)
        localcp1.a[2].append(str1);
      String str2 = localCursor.getString(localCursor.getColumnIndex("title"));
      if (str2 != null)
        localcp2.a[2].append(str2);
      str3 = localCursor.getString(localCursor.getColumnIndex("label"));
      if ((str3 != null) && (!"".equals(str3)))
        break label269;
      int i1 = localCursor.getInt(localCursor.getColumnIndex("type"));
      if (i1 < 3)
      {
        String str4 = h[i1];
        if (str4 != null)
          localcp1.a[1].append(str4);
      }
    }
    while (true)
    {
      localArrayList.add(localcp1);
      localArrayList.add(localcp2);
      if (localCursor.moveToNext())
        break label43;
      localCursor.close();
      localObject = localArrayList;
      break;
      label269: if (str3 != null)
        localcp1.a[1].append(str3);
    }
  }

  private static String h(String paramString)
  {
    String str1 = null;
    if (paramString != null)
    {
      boolean bool = "".equals(paramString);
      str1 = null;
      if (!bool)
        break label21;
    }
    label21: List localList;
    do
    {
      return str1;
      localList = de.b(paramString, new char[] { '\\', ';', 'r', 'n' });
      str1 = null;
    }
    while (localList == null);
    if (localList.size() > 0);
    for (String str2 = (String)localList.get(0); ; str2 = null)
    {
      if (localList.size() > 1);
      for (String str3 = (String)localList.get(1); ; str3 = null)
      {
        if (localList.size() > 2);
        for (String str4 = (String)localList.get(2); ; str4 = null)
        {
          if (localList.size() > 3);
          for (String str5 = (String)localList.get(3); ; str5 = null)
          {
            if (localList.size() > 4);
            for (String str6 = (String)localList.get(4); ; str6 = null)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              if ((str5 != null) && (str5.length() > 0))
                localStringBuilder.append(str5);
              for (int i1 = 1; ; i1 = 0)
              {
                if ((str2 != null) && (str2.length() > 0))
                {
                  if (i1 != 0)
                    localStringBuilder.append(" ");
                  localStringBuilder.append(str2);
                }
                for (int i2 = 1; ; i2 = i1)
                {
                  if ((str4 != null) && (str4.length() > 0))
                  {
                    if (i2 != 0)
                      localStringBuilder.append(" ");
                    localStringBuilder.append(str4);
                    i2 = 1;
                  }
                  if ((str3 != null) && (str3.length() > 0))
                  {
                    if (i2 != 0)
                      localStringBuilder.append(" ");
                    localStringBuilder.append(str3);
                    i2 = 1;
                  }
                  if ((str6 != null) && (str6.length() > 0))
                  {
                    if (i2 != 0)
                      localStringBuilder.append(" ");
                    localStringBuilder.append(str6);
                  }
                  str1 = localStringBuilder.toString();
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  public final int a()
  {
    Cursor localCursor;
    int i1;
    if (ci.m)
    {
      localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id" }, "_sync_account=?", new String[] { "phone" }, null);
      if (localCursor != null)
        break label117;
      i1 = 0;
    }
    while (true)
    {
      return i1;
      if (ci.A)
      {
        localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id" }, "_sync_account<>?", new String[] { "SOURCE_SIM_CONTACTS" }, null);
        break;
      }
      localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id" }, null, null, null);
      break;
      label117: i1 = localCursor.getCount();
      localCursor.close();
    }
  }

  public final cb.a a(String paramString)
  {
    cb.a locala;
    if ((paramString == null) || ("".equals(paramString)))
      locala = cb.a.a;
    while (true)
    {
      return locala;
      Uri localUri = Uri.withAppendedPath(Contacts.People.CONTENT_URI, paramString);
      if (a.delete(localUri, null, null) == 0)
        locala = cb.a.c;
      else
        locala = cb.a.b;
    }
  }

  public final String a(cc paramcc)
  {
    if (paramcc == null);
    cq localcq;
    int i1;
    int[] arrayOfInt;
    int i2;
    int i3;
    Object localObject1;
    Object localObject2;
    int i4;
    Object localObject3;
    Object localObject4;
    int i5;
    int i6;
    label105: ArrayList localArrayList;
    String str1;
    label185: ContentValues[] arrayOfContentValues1;
    ContentValues[] arrayOfContentValues2;
    int i7;
    int i8;
    int i9;
    label331: ContentValues[] arrayOfContentValues3;
    int i17;
    for (String str2 = null; ; str2 = String.valueOf(l))
    {
      return str2;
      localcq = (cq)paramcc;
      if (localcq.c.size() > 0)
        localcq.d = Integer.valueOf(0);
      i1 = 0;
      c.clear();
      d.clear();
      arrayOfInt = new int[1 + localcq.c.size()];
      i2 = 0;
      i3 = 0;
      localObject1 = null;
      localObject2 = null;
      i4 = 0;
      localObject3 = null;
      localObject4 = "";
      i5 = 0;
      if (localcq.d.intValue() >= localcq.c.size())
        break label1154;
      i6 = 0;
      if (i6 == 0)
        break;
      localArrayList = new ArrayList();
      a((String)localObject4, localArrayList);
      if ((localcq.b != null) && (!"".equals(localcq.b)))
        break label1168;
      b.clear();
      if (ci.e)
        b.put("extra_group", Integer.valueOf(2));
      ContentValues localContentValues1 = b;
      if (i4 == 0)
        break label1160;
      str1 = "1";
      localContentValues1.put("starred", str1);
      b.put("name", h((String)localObject1));
      b.put("notes", (String)localObject2);
      if (ci.n)
        b.put("_sync_account", "phone");
      if (localObject3 != null)
        b.put("custom_ringtone", (String)localObject3);
      Uri localUri1 = a.insert(Contacts.People.CONTENT_URI, b);
      m = localUri1;
      l = ContentUris.parseId(localUri1);
      a(l, localArrayList);
      if (localcq.c.size() > 0)
        localcq.d = Integer.valueOf(0);
      arrayOfContentValues1 = new ContentValues[i2];
      arrayOfContentValues2 = new ContentValues[i3];
      i7 = 0;
      i8 = 0;
      i9 = 0;
      if (i8 < i5)
        break label1331;
      int i16 = Math.max(c.size(), d.size());
      if (i16 > 0)
      {
        arrayOfContentValues3 = new ContentValues[i16];
        i17 = 0;
        label370: if ((c.size() != 0) || (d.size() != 0))
          break label1929;
        a.bulkInsert(n, arrayOfContentValues3);
      }
      if (i2 > 0)
        a.bulkInsert(p, arrayOfContentValues1);
      if (i3 > 0)
        a.bulkInsert(o, arrayOfContentValues2);
    }
    cp localcp2 = localcq.b();
    Integer localInteger = (Integer)i.get(localcp2.a[0].toString());
    int i28;
    int i23;
    Object localObject7;
    Object localObject8;
    int i24;
    int i25;
    Object localObject9;
    Object localObject6;
    if (localInteger != null)
    {
      int i27 = localInteger.intValue();
      arrayOfInt[i5] = i27;
      switch (i27)
      {
      case 5:
      case 6:
      case 7:
      default:
        if (localInteger.intValue() == 0)
        {
          int i35 = i2 + 1;
          i28 = i1;
          Object localObject15 = localObject3;
          i23 = i4;
          localObject7 = localObject2;
          localObject8 = localObject1;
          i24 = i3;
          i25 = i35;
          localObject9 = localObject4;
          localObject6 = localObject15;
        }
        break;
      case 4:
      case 8:
      case 9:
      case 10:
      case 11:
      case 13:
      case 12:
      }
    }
    while (true)
    {
      label597: int i29 = i5 + 1;
      i1 = i28;
      int i26 = i29;
      while (true)
      {
        localcq.d = Integer.valueOf(1 + localcq.d.intValue());
        i5 = i26;
        i2 = i25;
        i3 = i24;
        localObject1 = localObject8;
        localObject2 = localObject7;
        i4 = i23;
        localObject3 = localObject6;
        localObject4 = localObject9;
        break;
        String str8 = localcp2.a[2].toString();
        arrayOfInt[i5] = -1;
        Object localObject14 = localObject4;
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = str8;
        localObject9 = localObject14;
        int i32 = i3;
        i25 = i2;
        i28 = 3;
        i24 = i32;
        break label597;
        String str7 = localcp2.a[2].toString();
        arrayOfInt[i5] = -1;
        localObject8 = localObject1;
        i24 = i3;
        i25 = i2;
        i28 = i1;
        Object localObject13 = localObject4;
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = str7;
        localObject9 = localObject13;
        break label597;
        if (i1 >= 2)
          break label2113;
        String str6 = localcp2.a[2].toString();
        arrayOfInt[i5] = -1;
        Object localObject12 = localObject4;
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = str6;
        localObject9 = localObject12;
        int i31 = i3;
        i25 = i2;
        i28 = 2;
        i24 = i31;
        break label597;
        if (i1 > 0)
          break label2113;
        String str5 = localcp2.a[2].toString();
        arrayOfInt[i5] = -1;
        Object localObject11 = localObject4;
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = str5;
        localObject9 = localObject11;
        int i30 = i3;
        i25 = i2;
        i28 = 1;
        i24 = i30;
        break label597;
        boolean bool = localcp2.a[2].toString().equals("1");
        localObject7 = localObject2;
        localObject8 = localObject1;
        i24 = i3;
        i25 = i2;
        i28 = i1;
        localObject9 = localObject4;
        localObject6 = localObject3;
        i23 = bool;
        break label597;
        String str4 = localcp2.a[2].toString();
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = localObject1;
        i24 = i3;
        i25 = i2;
        i28 = i1;
        Object localObject10 = localObject4;
        localObject6 = str4;
        localObject9 = localObject10;
        break label597;
        localObject9 = localcp2.a[2].toString();
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = localObject1;
        i24 = i3;
        i25 = i2;
        i28 = i1;
        break label597;
        if (localInteger.intValue() >= 4)
          break label2113;
        int i33 = i3 + 1;
        i25 = i2;
        i28 = i1;
        int i34 = i4;
        localObject7 = localObject2;
        localObject8 = localObject1;
        i24 = i33;
        localObject9 = localObject4;
        localObject6 = localObject3;
        i23 = i34;
        break label597;
        int i22 = i5 + 1;
        arrayOfInt[i5] = -1;
        Object localObject5 = localObject4;
        localObject6 = localObject3;
        i23 = i4;
        localObject7 = localObject2;
        localObject8 = localObject1;
        i24 = i3;
        i25 = i2;
        i26 = i22;
        localObject9 = localObject5;
      }
      label1154: i6 = 1;
      break label105;
      label1160: str1 = "0";
      break label185;
      label1168: String str3 = localcq.b;
      b.clear();
      ContentValues localContentValues4 = b;
      if (i4 != 0);
      for (int i21 = 1; ; i21 = 0)
      {
        localContentValues4.put("starred", Integer.valueOf(i21));
        if (localObject1 != null)
          b.put("name", h((String)localObject1));
        if (localObject2 != null)
          b.put("notes", (String)localObject2);
        if (localObject3 != null)
          b.put("custom_ringtone", (String)localObject3);
        b.put("_id", str3);
        if (ci.n)
          b.put("_sync_account", "phone");
        Uri localUri2 = a.insert(Contacts.People.CONTENT_URI, b);
        m = localUri2;
        l = ContentUris.parseId(localUri2);
        a(l, localArrayList);
        break;
      }
      label1331: if (arrayOfInt[i8] < 0)
      {
        localcq.d = Integer.valueOf(1 + localcq.d.intValue());
        i8++;
        break label331;
      }
      cp localcp1 = localcq.b();
      int i10;
      if (arrayOfInt[i8] % 2 == 0)
      {
        switch (arrayOfInt[i8])
        {
        default:
          i10 = i7;
        case 0:
        case 2:
        case 6:
        }
        while (true)
        {
          localcq.d = Integer.valueOf(1 + localcq.d.intValue());
          i7 = i10;
          break;
          i10 = i7 + 1;
          ContentValues localContentValues3 = new ContentValues();
          String[] arrayOfString2 = ct.a(localcp1.a[1].toString());
          int i15 = ct.a(e, arrayOfString2[0]);
          if (i15 <= 0)
          {
            localContentValues3.put("type", Integer.valueOf(0));
            localContentValues3.put("label", arrayOfString2[0]);
          }
          while (true)
          {
            if (localcp1.c)
              localContentValues3.put("isprimary", Integer.valueOf(1));
            localContentValues3.put("number", localcp1.a[2].toString());
            localContentValues3.put("person", Long.valueOf(l));
            arrayOfContentValues1[i7] = localContentValues3;
            break;
            localContentValues3.put("type", String.valueOf(i15));
          }
          int i14 = i9 + 1;
          arrayOfContentValues2[i9] = a(localcp1);
          i9 = i14;
          i10 = i7;
          continue;
          c.add(localcp1);
          i10 = i7;
        }
      }
      switch (arrayOfInt[i8])
      {
      case 2:
      case 4:
      case 6:
      default:
      case 1:
      case 3:
      case 5:
      case 7:
      }
      while (true)
      {
        i10 = i7;
        break;
        int i13 = i9 + 1;
        arrayOfContentValues2[i9] = a(localcp1);
        i9 = i13;
        i10 = i7;
        break;
        int i11 = i9 + 1;
        ContentValues localContentValues2 = new ContentValues();
        String[] arrayOfString1 = ct.a(localcp1.a[1].toString());
        int i12 = ct.a(g, arrayOfString1[0]);
        if (i12 < 0)
          if (ci.b)
            localContentValues2.put("aux_data", Contacts.ContactMethods.encodePredefinedImProtocol(8));
        while (true)
        {
          if (arrayOfString1.length > 1)
            localContentValues2.put("isprimary", Integer.valueOf(1));
          localContentValues2.put("data", localcp1.a[2].toString());
          localContentValues2.put("person", Long.valueOf(l));
          localContentValues2.put("kind", Integer.valueOf(3));
          localContentValues2.put("type", Integer.valueOf(3));
          arrayOfContentValues2[i9] = localContentValues2;
          i9 = i11;
          i10 = i7;
          break;
          localContentValues2.put("aux_data", Contacts.ContactMethods.encodePredefinedImProtocol(1));
          continue;
          localContentValues2.put("aux_data", Contacts.ContactMethods.encodePredefinedImProtocol(i12));
        }
        if (!ci.i)
        {
          a(m, localcp1);
          i10 = i7;
          break;
          d.add(localcp1);
        }
      }
      label1929: if (d.size() == 0)
      {
        int i20 = i17 + 1;
        arrayOfContentValues3[i17] = a((cp)c.get(0), "");
        c.remove(0);
        i17 = i20;
        break label370;
      }
      if (c.size() == 0)
      {
        int i19 = i17 + 1;
        arrayOfContentValues3[i17] = a(null, ((cp)d.get(0)).a[2].toString());
        d.remove(0);
        i17 = i19;
        break label370;
      }
      int i18 = i17 + 1;
      arrayOfContentValues3[i17] = a((cp)c.get(0), ((cp)d.get(0)).a[2].toString());
      c.remove(0);
      d.remove(0);
      i17 = i18;
      break label370;
      label2113: localObject9 = localObject4;
      localObject6 = localObject3;
      i23 = i4;
      localObject7 = localObject2;
      localObject8 = localObject1;
      i24 = i3;
      i25 = i2;
      i28 = i1;
    }
  }

  public final List<String> a(String[] paramArrayOfString, boolean paramBoolean)
  {
    Cursor localCursor;
    if (ci.A)
      localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id", "source_name" }, null, null, null);
    while (true)
    {
      localObject = null;
      if (localCursor != null)
        break;
      return localObject;
      if (ci.m)
        localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id", "_sync_account" }, null, null, null);
      else
        localCursor = a.query(Contacts.People.CONTENT_URI, new String[] { "_id" }, null, null, null);
    }
    Object localObject = new ArrayList();
    if (ci.A)
      label124: if (localCursor.moveToNext());
    while (true)
    {
      localCursor.close();
      this.q.a();
      break;
      if ("SOURCE_SIM_CONTACTS".equals(localCursor.getString(1)))
        break label124;
      ((ArrayList)localObject).add(localCursor.getString(localCursor.getColumnIndex("_id")));
      break label124;
      if (ci.m)
        while (localCursor.moveToNext())
          if ("phone".equals(localCursor.getString(1)))
            ((ArrayList)localObject).add(localCursor.getString(localCursor.getColumnIndex("_id")));
      else
        while (localCursor.moveToNext())
          ((ArrayList)localObject).add(localCursor.getString(localCursor.getColumnIndex("_id")));
    }
  }

  public final boolean a(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    int i1 = paramArrayList.size();
    int i2 = 0;
    if (i2 >= i1)
      return true;
    String str = a((cc)paramArrayList.get(i2));
    paramArrayList1.add(str);
    if (str == null)
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
    while (true)
    {
      i2++;
      break;
      paramArrayOfInt[i2] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
    }
  }

  public final cb.a b(cc paramcc)
  {
    cb.a locala;
    if ((paramcc.b == null) || ("".equals(paramcc.b)))
      locala = cb.a.a;
    while (true)
    {
      return locala;
      if (a(paramcc.b) == cb.a.b)
      {
        a(paramcc);
        locala = cb.a.b;
      }
      else
      {
        locala = cb.a.a;
      }
    }
  }

  public final boolean b(String paramString)
  {
    Uri localUri = Uri.withAppendedPath(Contacts.People.CONTENT_URI, paramString);
    Cursor localCursor = a.query(localUri, new String[] { "_id" }, null, null, null);
    boolean bool;
    if (localCursor == null)
      bool = false;
    while (true)
    {
      return bool;
      if (localCursor.moveToFirst())
      {
        localCursor.close();
        bool = true;
      }
      else
      {
        localCursor.close();
        bool = false;
      }
    }
  }

  public final cc c(String paramString)
  {
    cq localcq = new cq();
    Uri localUri = Uri.withAppendedPath(Contacts.People.CONTENT_URI, paramString);
    Cursor localCursor = a.query(localUri, new String[] { "name", "notes", "starred", "custom_ringtone" }, null, null, null);
    Object localObject;
    if (localCursor == null)
      localObject = null;
    while (true)
    {
      if (localObject != null)
        localcq.c.addAll((Collection)localObject);
      ArrayList localArrayList2 = e(paramString);
      if (localArrayList2 != null)
        localcq.c.addAll(localArrayList2);
      ArrayList localArrayList3 = f(paramString);
      if (localArrayList3 != null)
        localcq.c.addAll(localArrayList3);
      ArrayList localArrayList4 = g(paramString);
      if (localArrayList4 != null)
        localcq.c.addAll(localArrayList4);
      ArrayList localArrayList5 = new ArrayList();
      ArrayList localArrayList6 = new ArrayList();
      String str5 = this.q.a(paramString, localArrayList5);
      cp localcp5 = new cp();
      localcp5.a[0].append("CATEGORIES");
      if (str5 != null)
        localcp5.a[2].append(str5);
      localArrayList6.add(localcp5);
      if (localArrayList6 != null)
        localcq.c.addAll(localArrayList6);
      localcq.b = paramString;
      localcq.a = localArrayList5;
      return localcq;
      cp localcp1 = new cp();
      cp localcp2 = new cp();
      cp localcp3 = new cp();
      cp localcp4 = new cp();
      String str1 = new String();
      String str2 = new String();
      String str3 = new String();
      ArrayList localArrayList1 = new ArrayList();
      boolean bool = localCursor.moveToFirst();
      int i1 = 0;
      if (bool)
      {
        str1 = localCursor.getString(0);
        str2 = localCursor.getString(1);
        if (localCursor.getInt(2) == 1)
        {
          i1 = 1;
          label372: str3 = localCursor.getString(3);
        }
      }
      else
      {
        if ((str1 != null) && (!"".equals(str1)))
        {
          localcp1.a[0].append("N");
          String str6 = str1.replace("\\", "\\\\").replace(";", "\\;");
          if (str6 != null)
            localcp1.a[2].append(str6);
          localArrayList1.add(localcp1);
        }
        if ((str2 != null) && (!"".equals(str2)))
        {
          localcp2.a[0].append("NOTE");
          if (str2 != null)
            localcp2.a[2].append(str2);
          localArrayList1.add(localcp2);
        }
        localcp4.a[0].append("X-FOCUS");
        if (i1 == 0)
          break label635;
      }
      label635: for (String str4 = "1"; ; str4 = "0")
      {
        localcp4.a[2].append(str4);
        localArrayList1.add(localcp4);
        if ((str3 != null) && (str3.length() > 0))
        {
          localcp3.a[0].append("RINGTONE");
          if (str3 != null)
            localcp3.a[2].append(str3);
          localArrayList1.add(localcp3);
        }
        localCursor.close();
        if (localArrayList1.size() != 0)
          break label643;
        localObject = null;
        break;
        i1 = 0;
        break label372;
      }
      label643: localObject = localArrayList1;
    }
  }

  public final String d(String paramString)
  {
    Uri localUri = Uri.withAppendedPath(Contacts.Phones.CONTENT_FILTER_URL, Uri.encode(paramString));
    String[] arrayOfString = { "display_name" };
    Cursor localCursor = a.query(localUri, arrayOfString, null, null, null);
    String str = null;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToFirst();
      str = null;
      if (bool)
        str = localCursor.getString(0);
    }
    localCursor.close();
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bo
 * JD-Core Version:    0.6.2
 */