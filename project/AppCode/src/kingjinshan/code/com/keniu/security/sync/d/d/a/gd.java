package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.ct;
import com.b.a.cu;
import com.b.a.db;
import com.b.a.dv;
import java.util.List;

final class gd
  implements cu
{
  public final db a(ct paramct)
  {
    gc.a(paramct);
    gc.a((cj)gc.a().d().get(0));
    gc.a(new dv(gc.b(), new String[] { "Code", "Msg" }, ge.class, gf.class));
    gc.b((cj)gc.a().d().get(1));
    gc.b(new dv(gc.d(), new String[] { "Id", "ParentId", "Hash", "Name", "Size", "Type", "ModifyTime", "OpTime", "Prop", "ExpireTime", "CreateTime", "ServerTime" }, gj.class, gk.class));
    gc.c((cj)gc.a().d().get(2));
    gc.c(new dv(gc.f(), new String[] { "Id", "ParentId", "Hash", "Name", "Size", "Type", "ModifyTime", "OpTime", "Prop" }, gh.class, gi.class));
    gc.d((cj)gc.a().d().get(3));
    gc.d(new dv(gc.h(), new String[] { "TotalPersistSpace", "UsedPersistSpace", "TotalTransferSpace", "UsedTransferSpace", "BaseSpace", "ExpSpace", "PurchaseSpace", "VisablePresistSpace", "TotalFileCount", "TotalDirCount", "Badge" }, gy.class, gz.class));
    gc.e((cj)gc.a().d().get(4));
    gc.e(new dv(gc.j(), new String[] { "TotalSpace", "UsedSpace" }, gw.class, gx.class));
    gc.f((cj)gc.a().d().get(5));
    gc.f(new dv(gc.l(), new String[] { "File", "ExtraCode", "Description", "IsPasswd", "Status", "ViewCount", "DownCount", "CreateTime", "UserId", "Passport", "SaveCount" }, hc.class, hd.class));
    gc.g((cj)gc.a().d().get(6));
    gc.g(new dv(gc.n(), new String[] { "UsedPresisDayFlow", "TotalPresisDayFlow", "UsedPresisMonthFlow", "TotalPresisMonthFlow", "UsedPresisExceedFlow", "TotalPresisExceedFlow", "UsedTransferDayFlow", "TotalTransferDayFlow" }, gt.class, gu.class));
    gc.h((cj)gc.a().d().get(7));
    gc.h(new dv(gc.p(), new String[] { "SignKey", "ParentId", "FileSize", "SiteId", "TaskId", "CreateTime", "RequestType", "Prop", "UserId", "Network", "UserType", "FileHash", "DownloadId", "ExpireTime", "Sha1", "Ed2K", "SignKey2" }, gn.class, go.class));
    gc.i((cj)gc.a().d().get(8));
    gc.i(new dv(gc.r(), new String[] { "SignKey", "SiteId", "TaskId", "CreateTime", "UserId", "Network", "UserType", "DownloadId", "ExpireTime", "FileIds", "FileHashes" }, gq.class, gr.class));
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.gd
 * JD-Core Version:    0.6.2
 */