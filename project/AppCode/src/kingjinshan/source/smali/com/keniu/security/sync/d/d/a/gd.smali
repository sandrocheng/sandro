.class final Lcom/keniu/security/sync/d/d/a/gd;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Lcom/b/a/cu;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ct;)Lcom/b/a/db;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8844
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/gc;->a(Lcom/b/a/ct;)Lcom/b/a/ct;

    .line 8845
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->a(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8847
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->b()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Code"

    aput-object v3, v2, v5

    const-string v3, "Msg"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/ge;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->a(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8853
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->b(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8855
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->d()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "ParentId"

    aput-object v3, v2, v6

    const-string v3, "Hash"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-string v3, "Size"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ModifyTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "OpTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Prop"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ExpireTime"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "CreateTime"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ServerTime"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gj;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->b(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8861
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->c(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8863
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->f()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "ParentId"

    aput-object v3, v2, v6

    const-string v3, "Hash"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-string v3, "Size"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ModifyTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "OpTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Prop"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gh;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->c(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8869
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->d(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8871
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->h()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "TotalPersistSpace"

    aput-object v3, v2, v5

    const-string v3, "UsedPersistSpace"

    aput-object v3, v2, v6

    const-string v3, "TotalTransferSpace"

    aput-object v3, v2, v7

    const-string v3, "UsedTransferSpace"

    aput-object v3, v2, v8

    const-string v3, "BaseSpace"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ExpSpace"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PurchaseSpace"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "VisablePresistSpace"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "TotalFileCount"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "TotalDirCount"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Badge"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gy;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gz;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->d(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8877
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->e(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8879
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->j()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "TotalSpace"

    aput-object v3, v2, v5

    const-string v3, "UsedSpace"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/gw;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->e(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8885
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->f(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8887
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->l()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "File"

    aput-object v3, v2, v5

    const-string v3, "ExtraCode"

    aput-object v3, v2, v6

    const-string v3, "Description"

    aput-object v3, v2, v7

    const-string v3, "IsPasswd"

    aput-object v3, v2, v8

    const-string v3, "Status"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ViewCount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DownCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "CreateTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UserId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Passport"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "SaveCount"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/hc;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->f(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8893
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->g(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8895
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->n()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UsedPresisDayFlow"

    aput-object v3, v2, v5

    const-string v3, "TotalPresisDayFlow"

    aput-object v3, v2, v6

    const-string v3, "UsedPresisMonthFlow"

    aput-object v3, v2, v7

    const-string v3, "TotalPresisMonthFlow"

    aput-object v3, v2, v8

    const-string v3, "UsedPresisExceedFlow"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TotalPresisExceedFlow"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "UsedTransferDayFlow"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "TotalTransferDayFlow"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gt;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gu;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->g(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8901
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->h(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8903
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->p()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SignKey"

    aput-object v3, v2, v5

    const-string v3, "ParentId"

    aput-object v3, v2, v6

    const-string v3, "FileSize"

    aput-object v3, v2, v7

    const-string v3, "SiteId"

    aput-object v3, v2, v8

    const-string v3, "TaskId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CreateTime"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "RequestType"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Prop"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UserId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Network"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "UserType"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "FileHash"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "DownloadId"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ExpireTime"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Sha1"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Ed2K"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SignKey2"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gn;

    const-class v4, Lcom/keniu/security/sync/d/d/a/go;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->h(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8909
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gc;->i(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 8911
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->r()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SignKey"

    aput-object v3, v2, v5

    const-string v3, "SiteId"

    aput-object v3, v2, v6

    const-string v3, "TaskId"

    aput-object v3, v2, v7

    const-string v3, "CreateTime"

    aput-object v3, v2, v8

    const-string v3, "UserId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Network"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "UserType"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DownloadId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ExpireTime"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "FileIds"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "FileHashes"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/gq;

    const-class v4, Lcom/keniu/security/sync/d/d/a/gr;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gc;->i(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 8917
    const/4 v0, 0x0

    return-object v0
.end method
