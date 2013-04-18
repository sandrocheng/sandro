package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.ct;
import com.b.a.dv;

public final class gc
{
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
  private static ct s;

  static
  {
    String[] arrayOfString = { "\n\fcommon.proto\022\006common\"\"\n\005Error\022\f\n\004code\030\001 \002(\005\022\013\n\003msg\030\002 \001(\t\"Õ\001\n\tFileInfo3\022\n\n\002id\030\001 \001(\t\022\021\n\tparent_id\030\002 \001(\t\022\f\n\004hash\030\003 \001(\t\022\f\n\004name\030\004 \001(\t\022\f\n\004size\030\005 \001(\003\022\f\n\004type\030\006 \001(\t\022\023\n\013modify_time\030\007 \001(\003\022\017\n\007op_time\030\b \001(\003\022\f\n\004prop\030\t \001(\005\022\023\n\013expire_time\030\n \001(\003\022\023\n\013create_time\030\013 \001(\003\022\023\n\013server_time\030\f \001(\003\"\001\n\bFileInfo\022\n\n\002id\030\001 \001(\t\022\021\n\tparent_id\030\002 \001(\t\022\f\n\004hash\030\003 \001(\t\022\f\n\004name\030\004 \001(\t\022\f\n\004size\030\005 \001(\003\022\f\n\004type\030\006 \001(\t\022\023\n\013modify_time\030\007 \001(\003\022\017\n\007o", "p_time\030\b \001(\003\022\f\n\004prop\030\t \001(\005\"\002\n\tUserInfo3\022\033\n\023total_persist_space\030\001 \001(\003\022\032\n\022used_persist_space\030\002 \001(\003\022\034\n\024total_transfer_space\030\003 \001(\003\022\033\n\023used_transfer_space\030\004 \001(\003\022\022\n\nbase_space\030\005 \001(\003\022\021\n\texp_space\030\006 \001(\003\022\026\n\016purchase_space\030\007 \001(\003\022\035\n\025visable_presist_space\030\b \001(\003\022\030\n\020total_file_count\030\t \001(\005\022\027\n\017total_dir_count\030\n \001(\005\022\r\n\005badge\030\013 \001(\003\"3\n\bUserInfo\022\023\n\013total_space\030\001 \001(\003\022\022\n\nused_space\030\002 \001(\003\"²\002\n\bUserLink\022\037\n\004file\030\001 \001(\0132\021.c", "ommon.FileInfo3\022\022\n\nextra_code\030\002 \001(\t\022\023\n\013description\030\003 \001(\t\022\021\n\tis_passwd\030\004 \001(\b\022\016\n\006status\030\005 \001(\005\022\022\n\nview_count\030\006 \001(\005\022\022\n\ndown_count\030\007 \001(\005\022\023\n\013create_time\030\b \001(\003\022\017\n\007user_id\030\t \001(\t\022\020\n\bpassport\030\n \001(\t\022\022\n\nsave_count\030\013 \001(\005\"E\n\006Status\022\f\n\bCHECKING\020\001\022\021\n\rCHECK_SUCCESS\020\002\022\016\n\nCHECK_FAIL\020\003\022\n\n\006CANCEL\020\004\"\002\n\bUserFlow\022\034\n\024used_presis_day_flow\030\001 \001(\003\022\035\n\025total_presis_day_flow\030\002 \001(\003\022\036\n\026used_presis_month_flow\030\003 \001(\003\022\037\n\027total_presis", "_month_flow\030\004 \001(\003\022\037\n\027used_presis_exceed_flow\030\005 \001(\003\022 \n\030total_presis_exceed_flow\030\006 \001(\003\022\036\n\026used_transfer_day_flow\030\007 \001(\003\022\037\n\027total_transfer_day_flow\030\b \001(\003\"¿\002\n\tFileToken\022\020\n\bsign_key\030\001 \002(\t\022\021\n\tparent_id\030\002 \002(\t\022\021\n\tfile_size\030\003 \002(\003\022\017\n\007site_id\030\004 \002(\005\022\017\n\007task_id\030\005 \002(\t\022\023\n\013create_time\030\006 \002(\003\022\024\n\frequest_type\030\007 \002(\005\022\f\n\004prop\030\b \002(\005\022\017\n\007user_id\030\t \002(\t\022\017\n\007network\030\n \002(\t\022\021\n\tuser_type\030\013 \001(\005\022\021\n\tfile_hash\030\f \001(\t\022\023\n\013download_id\030\r ", "\001(\005\022\023\n\013expire_time\030\016 \001(\003\022\f\n\004sha1\030\017 \001(\t\022\f\n\004ed2k\030\020 \001(\t\022\021\n\tsign_key2\030\021 \001(\t\"Ü\001\n\013ThumbsToken\022\020\n\bsign_key\030\001 \002(\t\022\017\n\007site_id\030\002 \002(\005\022\017\n\007task_id\030\003 \002(\t\022\023\n\013create_time\030\004 \002(\003\022\017\n\007user_id\030\005 \002(\t\022\017\n\007network\030\006 \002(\t\022\021\n\tuser_type\030\007 \002(\005\022\023\n\013download_id\030\b \002(\005\022\023\n\013expire_time\030\t \002(\003\022\020\n\bfile_ids\030\n \003(\t\022\023\n\013file_hashes\030\013 \003(\tB+\n)com.keniu.security.sync.tpan.model.protos" };
    gd localgd = new gd();
    ct.a(arrayOfString, new ct[0], localgd);
  }

  public static ct a()
  {
    return s;
  }

  private static void t()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gc
 * JD-Core Version:    0.6.2
 */