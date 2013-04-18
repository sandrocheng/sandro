.class public final Lcom/keniu/security/sync/d/d/a/ih;
.super Ljava/lang/Object;
.source "Loginsvr.java"


# static fields
.field private static A:Lcom/b/a/cj;

.field private static B:Lcom/b/a/dv;

.field private static C:Lcom/b/a/cj;

.field private static D:Lcom/b/a/dv;

.field private static E:Lcom/b/a/cj;

.field private static F:Lcom/b/a/dv;

.field private static G:Lcom/b/a/cj;

.field private static H:Lcom/b/a/dv;

.field private static I:Lcom/b/a/ct;

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

.field private static q:Lcom/b/a/cj;

.field private static r:Lcom/b/a/dv;

.field private static s:Lcom/b/a/cj;

.field private static t:Lcom/b/a/dv;

.field private static u:Lcom/b/a/cj;

.field private static v:Lcom/b/a/dv;

.field private static w:Lcom/b/a/cj;

.field private static x:Lcom/b/a/dv;

.field private static y:Lcom/b/a/cj;

.field private static z:Lcom/b/a/dv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 10164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u000eloginsvr.proto\u0012\u0008loginsvr\u001a\u000ccommon.proto\"\u00a5\u0001\n\u000cLoginRequest\u0012\r\n\u0005email\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0003 \u0002(\u0005\u0012\u0011\n\tdevice_id\u0018\u0004 \u0002(\t\u0012\u000b\n\u0003cid\u0018\u0005 \u0002(\t\u0012\u0012\n\nsession_id\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0008 \u0001(\t\u0012\u0010\n\u0008passport\u0018\t \u0001(\t\"e\n\rLoginResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012\u0012\n\nsession_id\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nip_address\u0018\u0004 \u0001(\t\"S\n\u000eReLoginRequest\u0012\u0012\n\nsession_id\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007network\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003cid\u0018\u0004 \u0001(\t\"C\n\u000f"

    aput-object v1, v0, v4

    const-string v1, "ReLoginResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012\u0012\n\nip_address\u0018\u0002 \u0001(\t\"#\n\rLogoutRequest\u0012\u0012\n\nsession_id\u0018\u0001 \u0002(\t\".\n\u000eLogoutResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\"G\n\u0014ActiveAccountRequest\u0012\u000b\n\u0003cid\u0018\u0001 \u0002(\t\u0012\r\n\u0005email\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bactive_code\u0018\u0003 \u0002(\t\"5\n\u0015ActiveAccountResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\"3\n\u0015ListActiveCodeRequest\u0012\u000b\n\u0003cid\u0018\u0001 \u0002(\t\u0012\r\n\u0005email\u0018\u0002 \u0002(\t\"Z\n\u000eActiveCodeInfo\u0012\u000c\n\u0004code\u0018\u0001 \u0002(\t\u0012\u000e\n\u0006expire\u0018\u0002 \u0002(\u0005\u0012\u000c\n\u0004used\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006sha"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "red\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0005 \u0001(\t\"]\n\u0016ListActiveCodeResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012%\n\u0003asc\u0018\u0002 \u0003(\u000b2\u0018.loginsvr.ActiveCodeInfo\"G\n\u0019GenerateActiveCodeRequest\u0012\u000b\n\u0003cid\u0018\u0001 \u0002(\t\u0012\r\n\u0005email\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0002(\t\"a\n\u001aGenerateActiveCodeResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\u0012%\n\u0003asc\u0018\u0002 \u0003(\u000b2\u0018.loginsvr.ActiveCodeInfo\"U\n\u001cRecordActiveCodeShareRequest\u0012\u000b\n\u0003cid\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bactive_code\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bshare_email\u0018\u0003 \u0002(\t\"=\n\u001dRecordActiveCodeSha"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.Error\"3\n\u0015AdmitMigrationRequest\u0012\u000b\n\u0003cid\u0018\u0001 \u0002(\t\u0012\r\n\u0005email\u0018\u0002 \u0002(\t\"6\n\u0016AdmitMigrationResponse\u0012\u001c\n\u0005error\u0018\u0001 \u0002(\u000b2\r.common.ErrorB+\n)com.keniu.security.sync.tpan.model.protos"

    aput-object v2, v0, v1

    .line 10201
    new-instance v1, Lcom/keniu/security/sync/d/d/a/ii;

    invoke-direct {v1}, Lcom/keniu/security/sync/d/d/a/ii;-><init>()V

    .line 10345
    new-array v2, v3, [Lcom/b/a/ct;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->a()Lcom/b/a/ct;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2, v1}, Lcom/b/a/ct;->a([Ljava/lang/String;[Lcom/b/a/ct;Lcom/b/a/cu;)V

    .line 10350
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic A()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->z:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic B()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->A:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic C()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->B:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic D()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->C:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic E()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->D:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic F()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->E:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic G()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->F:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic H()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->G:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic I()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->H:Lcom/b/a/dv;

    return-object v0
.end method

.method private static J()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->a:Lcom/b/a/cj;

    return-object p0
.end method

.method public static a()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 10159
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->I:Lcom/b/a/ct;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ct;)Lcom/b/a/ct;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->I:Lcom/b/a/ct;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->b:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic b()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->c:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic b(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->d:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic c(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->e:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic c()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->b:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->f:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic d()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->c:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->g:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic d(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->h:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic e(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->i:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic e()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->d:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->j:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->e:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->k:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic f(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->l:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic g(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->m:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->f:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->n:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic h()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->g:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic h(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->o:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic h(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->p:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic i(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->q:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic i()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->h:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic i(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->r:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic j()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->i:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic j(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->s:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic j(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->t:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic k(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->u:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic k()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->j:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic k(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->v:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->k:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic l(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->w:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic l(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->x:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic m(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->y:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic m()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->l:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic m(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->z:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->m:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic n(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->A:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic n(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->B:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic o(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->C:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic o()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->n:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic o(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->D:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->o:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic p(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->E:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic p(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->F:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic q(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->G:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic q()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->p:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic q(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/ih;->H:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->q:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic s()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->r:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic t()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->s:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic u()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->t:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic v()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->u:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic w()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->v:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic x()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->w:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic y()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->x:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic z()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ih;->y:Lcom/b/a/cj;

    return-object v0
.end method
