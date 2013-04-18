.class final Lcom/keniu/security/sync/d/d/a/hi;
.super Ljava/lang/Object;
.source "Fudsvr.java"

# interfaces
.implements Lcom/b/a/cu;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4527
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

    .line 4530
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/hh;->a(Lcom/b/a/ct;)Lcom/b/a/ct;

    .line 4531
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->a(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4533
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->b()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FileToken"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/hj;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->a(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4539
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->b(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4541
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->d()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "BlockStart"

    aput-object v3, v2, v6

    const-string v3, "FudNodeId"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/hm;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->b(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4547
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->c(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4549
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->f()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FileToken"

    aput-object v3, v2, v5

    const-string v3, "BlockStart"

    aput-object v3, v2, v6

    const-string v3, "BlockEnd"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/ib;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->c(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4555
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->d(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4557
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->h()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "FileToken"

    aput-object v3, v2, v6

    const-string v3, "BlockEnd"

    aput-object v3, v2, v7

    const-class v3, Lcom/keniu/security/sync/d/d/a/ie;

    const-class v4, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->d(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4563
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->e(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4565
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->j()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FileToken"

    aput-object v3, v2, v5

    const-string v3, "BlockStart"

    aput-object v3, v2, v6

    const-string v3, "BlockEnd"

    aput-object v3, v2, v7

    const-string v3, "Thumb"

    aput-object v3, v2, v8

    const-string v3, "ClientAddr"

    aput-object v3, v2, v9

    const-class v3, Lcom/keniu/security/sync/d/d/a/hp;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->e(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->f(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4573
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->l()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "FileToken"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/hs;

    const-class v4, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->f(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4579
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->g(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4581
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->n()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ThumbsToken"

    aput-object v3, v2, v5

    const-string v3, "Thumb"

    aput-object v3, v2, v6

    const-class v3, Lcom/keniu/security/sync/d/d/a/hv;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->g(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4587
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hh;->h(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 4589
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->p()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-class v3, Lcom/keniu/security/sync/d/d/a/hy;

    const-class v4, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hh;->h(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 4595
    const/4 v0, 0x0

    return-object v0
.end method
