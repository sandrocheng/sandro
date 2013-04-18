package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.ct;
import com.b.a.dv;

public final class ih
{
  private static cj A;
  private static dv B;
  private static cj C;
  private static dv D;
  private static cj E;
  private static dv F;
  private static cj G;
  private static dv H;
  private static ct I;
  private static cj a;
  private static dv b;
  private static cj c;
  private static dv d;
  private static cj e;
  private static dv f;
  private static cj g;
  private static dv h;
  private static cj i;
  private static dv j;
  private static cj k;
  private static dv l;
  private static cj m;
  private static dv n;
  private static cj o;
  private static dv p;
  private static cj q;
  private static dv r;
  private static cj s;
  private static dv t;
  private static cj u;
  private static dv v;
  private static cj w;
  private static dv x;
  private static cj y;
  private static dv z;

  static
  {
    String[] arrayOfString = { "\n\016loginsvr.proto\022\bloginsvr\032\fcommon.proto\"¥\001\n\fLoginRequest\022\r\n\005email\030\001 \002(\t\022\020\n\bpassword\030\002 \001(\t\022\f\n\004type\030\003 \002(\005\022\021\n\tdevice_id\030\004 \002(\t\022\013\n\003cid\030\005 \002(\t\022\022\n\nsession_id\030\006 \001(\t\022\017\n\007network\030\007 \001(\t\022\017\n\007version\030\b \001(\t\022\020\n\bpassport\030\t \001(\t\"e\n\rLoginResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\022\n\nsession_id\030\002 \001(\t\022\016\n\006status\030\003 \001(\005\022\022\n\nip_address\030\004 \001(\t\"S\n\016ReLoginRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007network\030\002 \001(\t\022\017\n\007version\030\003 \001(\t\022\013\n\003cid\030\004 \001(\t\"C\n\017", "ReLoginResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\022\n\nip_address\030\002 \001(\t\"#\n\rLogoutRequest\022\022\n\nsession_id\030\001 \002(\t\".\n\016LogoutResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\"G\n\024ActiveAccountRequest\022\013\n\003cid\030\001 \002(\t\022\r\n\005email\030\002 \002(\t\022\023\n\013active_code\030\003 \002(\t\"5\n\025ActiveAccountResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\"3\n\025ListActiveCodeRequest\022\013\n\003cid\030\001 \002(\t\022\r\n\005email\030\002 \002(\t\"Z\n\016ActiveCodeInfo\022\f\n\004code\030\001 \002(\t\022\016\n\006expire\030\002 \002(\005\022\f\n\004used\030\003 \001(\t\022\016\n\006sha", "red\030\004 \001(\t\022\f\n\004type\030\005 \001(\t\"]\n\026ListActiveCodeResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022%\n\003asc\030\002 \003(\0132\030.loginsvr.ActiveCodeInfo\"G\n\031GenerateActiveCodeRequest\022\013\n\003cid\030\001 \002(\t\022\r\n\005email\030\002 \002(\t\022\016\n\006number\030\003 \002(\t\"a\n\032GenerateActiveCodeResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022%\n\003asc\030\002 \003(\0132\030.loginsvr.ActiveCodeInfo\"U\n\034RecordActiveCodeShareRequest\022\013\n\003cid\030\001 \002(\t\022\023\n\013active_code\030\002 \002(\t\022\023\n\013share_email\030\003 \002(\t\"=\n\035RecordActiveCodeSha", "reResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\"3\n\025AdmitMigrationRequest\022\013\n\003cid\030\001 \002(\t\022\r\n\005email\030\002 \002(\t\"6\n\026AdmitMigrationResponse\022\034\n\005error\030\001 \002(\0132\r.common.ErrorB+\n)com.keniu.security.sync.tpan.model.protos" };
    ii localii = new ii();
    ct[] arrayOfct = new ct[1];
    arrayOfct[0] = gc.a();
    ct.a(arrayOfString, arrayOfct, localii);
  }

  private static void J()
  {
  }

  public static ct a()
  {
    return I;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ih
 * JD-Core Version:    0.6.2
 */