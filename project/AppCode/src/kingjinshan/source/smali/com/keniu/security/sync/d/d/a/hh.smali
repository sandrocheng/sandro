.class public final Lcom/keniu/security/sync/d/d/a/hh;
.super Ljava/lang/Object;
.source "Fudsvr.java"


# static fields
.field private static a:Lcom/b/a/cj;

.field private static b:Lcom/b/a/dv;

.field private static c:Lcom/b/a/cj;

.field private static d:Lcom/b/a/dv;

.field private static e:Lcom/b/a/cj;

.field private static f:Lcom/b/a/dv;

.field private static g:Lcom/b/a/cj;

.field private static h:Lcom/b/a/dv;

.field private static i:Lcom/b/a/cj;

.field private static j:Lcom/b/a/dv;

.field private static k:Lcom/b/a/cj;

.field private static l:Lcom/b/a/dv;

.field private static m:Lcom/b/a/cj;

.field private static n:Lcom/b/a/dv;

.field private static o:Lcom/b/a/cj;

.field private static p:Lcom/b/a/dv;

.field private static q:Lcom/b/a/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4504
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u000cfudsvr.proto\u0012\u0006fudsvr\u001a\u000ccommon.proto\"5\n\u000cQueryRequest\u0012%\n\nfile_token\u0018\u0001 \u0002(\u000b2\u0011.common.FileToken\"W\n\rQueryResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012\u0013\n\u000bblock_start\u0018\u0002 \u0001(\u0003\u0012\u0013\n\u000bfud_node_id\u0018\u0003 \u0001(\u0005\"]\n\u000cWriteRequest\u0012%\n\nfile_token\u0018\u0001 \u0002(\u000b2\u0011.common.FileToken\u0012\u0013\n\u000bblock_start\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tblock_end\u0018\u0003 \u0001(\u0003\"g\n\rWriteResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012%\n\nfile_token\u0018\u0002 \u0001(\u000b2\u0011.common.FileToken\u0012\u0011\n\tblock_end\u0018\u0003 \u0001(\u0003\"\u0080\u0001\n\u000bReadRequest\u0012%\n\n"

    aput-object v1, v0, v4

    const-string v1, "file_token\u0018\u0001 \u0002(\u000b2\u0011.common.FileToken\u0012\u0013\n\u000bblock_start\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tblock_end\u0018\u0003 \u0001(\u0003\u0012\r\n\u0005thumb\u0018\u0004 \u0001(\u0005\u0012\u0013\n\u000bclient_addr\u0018\u0005 \u0001(\t\"S\n\u000cReadResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012%\n\nfile_token\u0018\u0002 \u0001(\u000b2\u0011.common.FileToken\"M\n\u0011ReadThumbsRequest\u0012)\n\u000cthumbs_token\u0018\u0001 \u0002(\u000b2\u0013.common.ThumbsToken\u0012\r\n\u0005thumb\u0018\u0002 \u0002(\u0005\"2\n\u0012ReadThumbsResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.ErrorB+\n)com.keniu.security.sync.tpan.model.protos"

    aput-object v1, v0, v2

    .line 4526
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hi;

    invoke-direct {v1}, Lcom/keniu/security/sync/d/d/a/hi;-><init>()V

    .line 4598
    new-array v2, v2, [Lcom/b/a/ct;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2, v1}, Lcom/b/a/ct;->a([Ljava/lang/String;[Lcom/b/a/ct;Lcom/b/a/cu;)V

    .line 4603
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->a:Lcom/b/a/cj;

    return-object p0
.end method

.method public static a()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 4499
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->q:Lcom/b/a/ct;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ct;)Lcom/b/a/ct;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->q:Lcom/b/a/ct;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->b:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic b()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->c:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic b(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->d:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic c(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->e:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic c()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->b:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->f:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic d()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->c:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->g:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic d(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->h:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic e(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->i:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic e()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->d:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->j:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->e:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->k:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic f(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->l:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic g(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->m:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->f:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->n:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic h()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->g:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic h(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->o:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic h(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/hh;->p:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic i()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->h:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic j()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->i:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic k()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->j:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->k:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic m()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->l:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->m:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic o()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->n:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->o:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic q()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hh;->p:Lcom/b/a/dv;

    return-object v0
.end method

.method private static r()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
