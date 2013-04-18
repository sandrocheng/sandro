package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.ct;
import com.b.a.dv;

public final class a
{
  private static cj A;
  private static dv B;
  private static cj C;
  private static dv D;
  private static cj E;
  private static dv F;
  private static cj G;
  private static dv H;
  private static cj I;
  private static dv J;
  private static cj K;
  private static dv L;
  private static cj M;
  private static dv N;
  private static cj O;
  private static dv P;
  private static cj Q;
  private static dv R;
  private static cj S;
  private static dv T;
  private static cj U;
  private static dv V;
  private static cj W;
  private static dv X;
  private static cj Y;
  private static dv Z;
  private static cj a;
  private static cj aA;
  private static dv aB;
  private static cj aC;
  private static dv aD;
  private static cj aE;
  private static dv aF;
  private static cj aG;
  private static dv aH;
  private static cj aI;
  private static dv aJ;
  private static cj aK;
  private static dv aL;
  private static cj aM;
  private static dv aN;
  private static cj aO;
  private static dv aP;
  private static cj aQ;
  private static dv aR;
  private static cj aS;
  private static dv aT;
  private static cj aU;
  private static dv aV;
  private static cj aW;
  private static dv aX;
  private static cj aY;
  private static dv aZ;
  private static cj aa;
  private static dv ab;
  private static cj ac;
  private static dv ad;
  private static cj ae;
  private static dv af;
  private static cj ag;
  private static dv ah;
  private static cj ai;
  private static dv aj;
  private static cj ak;
  private static dv al;
  private static cj am;
  private static dv an;
  private static cj ao;
  private static dv ap;
  private static cj aq;
  private static dv ar;
  private static cj as;
  private static dv at;
  private static cj au;
  private static dv av;
  private static cj aw;
  private static dv ax;
  private static cj ay;
  private static dv az;
  private static dv b;
  private static cj ba;
  private static dv bb;
  private static cj bc;
  private static dv bd;
  private static cj be;
  private static dv bf;
  private static cj bg;
  private static dv bh;
  private static cj bi;
  private static dv bj;
  private static cj bk;
  private static dv bl;
  private static cj bm;
  private static dv bn;
  private static cj bo;
  private static dv bp;
  private static ct bq;
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
    String[] arrayOfString = { "\n\fappsvr.proto\022\006appsvr\032\fcommon.proto\"%\n\017GetSpaceRequest\022\022\n\nsession_id\030\001 \002(\t\"Q\n\020GetSpaceResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\"$\n\016GetFlowRequest\022\022\n\nsession_id\030\001 \002(\t\"O\n\017GetFlowResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\036\n\004flow\030\002 \001(\0132\020.common.UserFlow\"W\n\rDeleteRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\016\n\006option\030\003 \002(\005\022\021\n\tpartition\030\004 \002(\005\"O\n\016DeleteResponse\022\034\n\005error\030\001 \002(\0132", "\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\"n\n\rRenameRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\020\n\bnew_name\030\003 \002(\t\022\021\n\tpartition\030\004 \002(\005\022\023\n\013client_time\030\005 \001(\003\"p\n\016RenameResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"r\n\fMkDirRequest\022\022\n\nsession_id\030\001 \002(\t\022\021\n\tparent_id\030\002 \002(\t\022\023\n\013folder_name\030\003 \002(\t\022\021\n\tpartition\030\004 \002(\005\022\023\n\013client_time\030\005 \001(\003\"\001\n\rMkDirR", "esponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\022&\n\013exists_file\030\004 \001(\0132\021.common.FileInfo3\"m\n\013MoveRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\026\n\016dest_parent_id\030\003 \002(\t\022\021\n\tpartition\030\004 \002(\005\022\016\n\006option\030\005 \001(\005\"n\n\fMoveResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"m\n\013CopyRequest\022\022\n\nsession_id\030\001 \002(", "\t\022\017\n\007file_id\030\002 \002(\t\022\026\n\016dest_parent_id\030\003 \002(\t\022\021\n\tpartition\030\004 \002(\005\022\016\n\006option\030\005 \001(\005\"n\n\fCopyResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"M\n\016RestoreRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\026\n\016dest_parent_id\030\003 \002(\t\"q\n\017RestoreResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"h\n\013ListRequest\022\022", "\n\nsession_id\030\001 \002(\t\022\021\n\tfolder_id\030\002 \002(\t\022\017\n\007op_time\030\003 \001(\003\022\016\n\006cached\030\004 \002(\005\022\021\n\tpartition\030\005 \002(\005\"\001\n\fListResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022$\n\tfile_list\030\003 \003(\0132\021.common.FileInfo3\022\037\n\004user\030\004 \001(\0132\021.common.UserInfo3\"V\n\013InfoRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\021\n\tpartition\030\003 \002(\005\022\017\n\007op_time\030\004 \001(\003\"n\n\fInfoResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.Fi", "leInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"·\001\n\020OpenWriteRequest\022\022\n\nsession_id\030\001 \002(\t\022\021\n\tparent_id\030\002 \002(\t\022\021\n\tfile_name\030\003 \002(\t\022\021\n\tfile_size\030\004 \002(\003\022\021\n\tpartition\030\006 \002(\005\022\021\n\tfile_hash\030\007 \001(\t\022\017\n\007task_id\030\b \001(\t\022\016\n\006option\030\t \001(\005\022\017\n\007site_id\030\n \001(\005\"m\n\021OpenWriteResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\023\n\013file_exists\030\002 \001(\005\022%\n\nfile_token\030\003 \001(\0132\021.common.FileToken\"\001\n\020CloseFileRequest\022\022\n\nsession_id\030\001 \002(\t\022%\n\nfile_token\030\002 \002(\0132\021", ".common.FileToken\022\021\n\tfile_name\030\003 \002(\t\022\021\n\tpartition\030\004 \002(\005\022\023\n\013client_time\030\005 \001(\003\022\016\n\006option\030\006 \001(\005\"s\n\021CloseFileResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"o\n\017OpenReadRequest\022\022\n\nsession_id\030\001 \002(\t\022\021\n\tparent_id\030\002 \002(\t\022\021\n\tfile_name\030\003 \002(\t\022\017\n\007file_id\030\004 \002(\t\022\021\n\tpartition\030\005 \002(\005\"\001\n\020OpenReadResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022%\n\nfile_token\030\002 \001(\0132\021.comm", "on.FileToken\022\022\n\nblock_urls\030\003 \003(\t\022\025\n\rproxy_site_id\030\004 \001(\005\"]\n\021OpenThumbsRequest\022\022\n\nsession_id\030\001 \002(\t\022\020\n\bfile_ids\030\002 \003(\t\022\021\n\tpartition\030\003 \002(\005\022\017\n\007version\030\004 \001(\005\"o\n\021OpenThumbResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022%\n\nfile_token\030\002 \001(\0132\021.common.FileToken\022\025\n\rproxy_site_id\030\003 \001(\005\"k\n\022OpenThumbsResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\0227\n\024open_thumb_responses\030\002 \003(\0132\031.appsvr.OpenThumbResponse\"_\n\023OpenThumbs2Response\022\034\n\005e", "rror\030\001 \002(\0132\r.common.Error\022*\n\rthumbs_tokens\030\002 \003(\0132\023.common.ThumbsToken\"]\n\016PersistRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\026\n\016dest_parent_id\030\003 \002(\t\022\016\n\006option\030\004 \001(\005\"q\n\017PersistResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"%\n\017LinkListRequest\022\022\n\nsession_id\030\001 \002(\t\"v\n\020LinkListResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo", "3\022#\n\tlink_list\030\003 \003(\0132\020.common.UserLink\"6\n\017LinkInfoRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\"q\n\020LinkInfoResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\022\036\n\004link\030\003 \001(\0132\020.common.UserLink\"5\n\016AddLinkRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\"§\001\n\017AddLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\022\036\n\004link\030\004 \001(\0132\020.com", "mon.UserLink\022\024\n\finvalid_word\030\005 \001(\t\"8\n\021CancelLinkRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\"t\n\022CancelLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\"9\n\022RenewalLinkRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\"t\n\023RenewalLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\022\036\n\004link\030\003 \001(\0132\020.common.UserLink\"K\n\017EditLinkR", "equest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\023\n\013description\030\003 \001(\t\"q\n\020EditLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\022\036\n\004link\030\003 \001(\0132\020.common.UserLink\"L\n\021PasswdLinkRequest\022\022\n\nsession_id\030\001 \002(\t\022\017\n\007file_id\030\002 \002(\t\022\022\n\nnew_passwd\030\003 \001(\t\"\001\n\022PasswdLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004file\030\002 \001(\0132\021.common.FileInfo3\022\037\n\004user\030\003 \001(\0132\021.common.UserInfo3\022\036\n\004link\030\004 \001(\0132\020.common.", "UserLink\"7\n\025GetWebLinkInfoRequest\022\022\n\nextra_code\030\001 \002(\t\022\n\n\002ip\030\002 \001(\t\"V\n\026GetWebLinkInfoResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\036\n\004link\030\002 \001(\0132\020.common.UserLink\"B\n\017ReadLinkRequest\022\022\n\nextra_code\030\001 \002(\t\022\017\n\007network\030\002 \002(\t\022\n\n\002ip\030\003 \001(\t\"k\n\020ReadLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022%\n\nfile_token\030\002 \001(\0132\021.common.FileToken\022\022\n\nblock_urls\030\003 \003(\t\"/\n\rUpLinkRequest\022\022\n\nextra_code\030\001 \002(\t\022\n\n\002ip\030\002 \002(\t\".\n\016UpLinkResponse\022\034\n", "\005error\030\001 \002(\0132\r.common.Error\"1\n\017DownLinkRequest\022\022\n\nextra_code\030\001 \002(\t\022\n\n\002ip\030\002 \002(\t\"0\n\020DownLinkResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\"(\n\022RewardSpaceRequest\022\022\n\nsession_id\030\001 \002(\t\"T\n\023RewardSpaceResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\037\n\004user\030\002 \001(\0132\021.common.UserInfo3\"P\n\023SaveLinkFileRequest\022\022\n\nsession_id\030\001 \002(\t\022\022\n\nextra_code\030\002 \002(\t\022\021\n\tparent_id\030\003 \001(\t\"E\n\024SaveLinkFileResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022\017\n\007file", "_id\030\002 \001(\t\"\001\n\017OpenTestRequest\022\022\n\nsession_id\030\001 \002(\t\022\021\n\tfile_type\030\002 \002(\005\"K\n\bFileType\022\n\n\006ONE_MB\020\001\022\n\n\006TEN_MB\020\002\022\022\n\016ONE_HUNDRED_MB\020\003\022\023\n\017ONE_THOUSAND_MB\020\004\"X\n\020OpenTestResponse\022\034\n\005error\030\001 \002(\0132\r.common.Error\022&\n\013file_tokens\030\002 \003(\0132\021.common.FileTokenB+\n)com.keniu.security.sync.tpan.model.protos" };
    b localb = new b();
    ct[] arrayOfct = new ct[1];
    arrayOfct[0] = gc.a();
    ct.a(arrayOfString, arrayOfct, localb);
  }

  public static ct a()
  {
    return bq;
  }

  private static void br()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.a
 * JD-Core Version:    0.6.2
 */