.class final Lcom/keniu/security/sync/d/d/a/ii;
.super Ljava/lang/Object;
.source "Loginsvr.java"

# interfaces
.implements Lcom/b/a/cu;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10202
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

    .line 10205
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/ih;->a(Lcom/b/a/ct;)Lcom/b/a/ct;

    .line 10206
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->a(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10208
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->b()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Email"

    aput-object v3, v2, v5

    const-string v3, "Password"

    aput-object v3, v2, v6

    const-string v3, "Type"

    aput-object v3, v2, v7

    const-string v3, "DeviceId"

    aput-object v3, v2, v8

    const-string v3, "Cid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SessionId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Network"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Version"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Passport"

    aput-object v4, v2, v3

    const-class v3, Lcom/keniu/security/sync/d/d/a/jk;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->a(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10214
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->b(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10216
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->d()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "SessionId"

    aput-object v3, v2, v6

    const-string v3, "Status"

    aput-object v3, v2, v7

    const-string v3, "IpAddress"

    aput-object v3, v2, v8

    const-class v3, Lcom/keniu/security/sync/d/d/a/jn;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->b(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10222
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->c(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10224
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->f()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Network"

    aput-object v3, v2, v6

    const-string v3, "Version"

    aput-object v3, v2, v7

    const-string v3, "Cid"

    aput-object v3, v2, v8

    const-class v3, Lcom/keniu/security/sync/d/d/a/jw;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->c(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->d(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10232
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->h()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "IpAddress"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/jz;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->d(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->e(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10240
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->j()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/jq;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->e(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10246
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->f(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10248
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->l()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/jt;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->f(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10254
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->g(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10256
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->n()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Cid"

    aput-object v3, v2, v5

    const-string v3, "Email"

    aput-object v3, v2, v6

    const-string v3, "ActiveCode"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/ij;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->g(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10262
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->h(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10264
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->p()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/im;

    const-class v4, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->h(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10270
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->i(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10272
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->r()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Cid"

    aput-object v3, v2, v5

    const-string v3, "Email"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/je;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->i(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10278
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->j(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10280
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->t()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Code"

    aput-object v3, v2, v5

    const-string v3, "Expire"

    aput-object v3, v2, v6

    const-string v3, "Used"

    aput-object v3, v2, v7

    const-string v3, "Shared"

    aput-object v3, v2, v8

    const-string v3, "Type"

    aput-object v3, v2, v9

    const-class v3, Lcom/keniu/security/sync/d/d/a/ip;

    const-class v4, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->j(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->k(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10288
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->v()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "Asc"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/jh;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->k(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10294
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->l(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10296
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->x()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Cid"

    aput-object v3, v2, v5

    const-string v3, "Email"

    aput-object v3, v2, v6

    const-string v3, "Number"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/iy;

    const-class v4, Lcom/keniu/security/sync/d/d/a/iz;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->l(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10302
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->m(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10304
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->z()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "Asc"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/jb;

    const-class v4, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->m(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10310
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->n(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10312
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->B()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Cid"

    aput-object v3, v2, v5

    const-string v3, "ActiveCode"

    aput-object v3, v2, v6

    const-string v3, "ShareEmail"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/kc;

    const-class v4, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->n(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10318
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->o(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10320
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->D()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/kf;

    const-class v4, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->o(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10326
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->p(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10328
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->F()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Cid"

    aput-object v3, v2, v5

    const-string v3, "Email"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/is;

    const-class v4, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->p(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ih;->q(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 10336
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->H()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/iv;

    const-class v4, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ih;->q(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 10342
    const/4 v0, 0x0

    return-object v0
.end method
