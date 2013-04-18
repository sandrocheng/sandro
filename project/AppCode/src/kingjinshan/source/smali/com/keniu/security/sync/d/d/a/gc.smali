.class public final Lcom/keniu/security/sync/d/d/a/gc;
.super Ljava/lang/Object;
.source "Common.java"


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

.field private static q:Lcom/b/a/cj;

.field private static r:Lcom/b/a/dv;

.field private static s:Lcom/b/a/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8789
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u000ccommon.proto\u0012\u0006common\"\"\n\u0005Error\u0012\u000c\n\u0004code\u0018\u0001 \u0002(\u0005\u0012\u000b\n\u0003msg\u0018\u0002 \u0001(\t\"\u00d5\u0001\n\tFileInfo3\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0011\n\tparent_id\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004hash\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004size\u0018\u0005 \u0001(\u0003\u0012\u000c\n\u0004type\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bmodify_time\u0018\u0007 \u0001(\u0003\u0012\u000f\n\u0007op_time\u0018\u0008 \u0001(\u0003\u0012\u000c\n\u0004prop\u0018\t \u0001(\u0005\u0012\u0013\n\u000bexpire_time\u0018\n \u0001(\u0003\u0012\u0013\n\u000bcreate_time\u0018\u000b \u0001(\u0003\u0012\u0013\n\u000bserver_time\u0018\u000c \u0001(\u0003\"\u0095\u0001\n\u0008FileInfo\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0011\n\tparent_id\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004hash\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004size\u0018\u0005 \u0001(\u0003\u0012\u000c\n\u0004type\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bmodify_time\u0018\u0007 \u0001(\u0003\u0012\u000f\n\u0007o"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "p_time\u0018\u0008 \u0001(\u0003\u0012\u000c\n\u0004prop\u0018\t \u0001(\u0005\"\u009f\u0002\n\tUserInfo3\u0012\u001b\n\u0013total_persist_space\u0018\u0001 \u0001(\u0003\u0012\u001a\n\u0012used_persist_space\u0018\u0002 \u0001(\u0003\u0012\u001c\n\u0014total_transfer_space\u0018\u0003 \u0001(\u0003\u0012\u001b\n\u0013used_transfer_space\u0018\u0004 \u0001(\u0003\u0012\u0012\n\nbase_space\u0018\u0005 \u0001(\u0003\u0012\u0011\n\texp_space\u0018\u0006 \u0001(\u0003\u0012\u0016\n\u000epurchase_space\u0018\u0007 \u0001(\u0003\u0012\u001d\n\u0015visable_presist_space\u0018\u0008 \u0001(\u0003\u0012\u0018\n\u0010total_file_count\u0018\t \u0001(\u0005\u0012\u0017\n\u000ftotal_dir_count\u0018\n \u0001(\u0005\u0012\r\n\u0005badge\u0018\u000b \u0001(\u0003\"3\n\u0008UserInfo\u0012\u0013\n\u000btotal_space\u0018\u0001 \u0001(\u0003\u0012\u0012\n\nused_space\u0018\u0002 \u0001(\u0003\"\u00b2\u0002\n\u0008UserLink\u0012\u001f\n\u0004file\u0018\u0001 \u0001(\u000b2\u0011.c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ommon.FileInfo3\u0012\u0012\n\nextra_code\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012\u0011\n\tis_passwd\u0018\u0004 \u0001(\u0008\u0012\u000e\n\u0006status\u0018\u0005 \u0001(\u0005\u0012\u0012\n\nview_count\u0018\u0006 \u0001(\u0005\u0012\u0012\n\ndown_count\u0018\u0007 \u0001(\u0005\u0012\u0013\n\u000bcreate_time\u0018\u0008 \u0001(\u0003\u0012\u000f\n\u0007user_id\u0018\t \u0001(\t\u0012\u0010\n\u0008passport\u0018\n \u0001(\t\u0012\u0012\n\nsave_count\u0018\u000b \u0001(\u0005\"E\n\u0006Status\u0012\u000c\n\u0008CHECKING\u0010\u0001\u0012\u0011\n\rCHECK_SUCCESS\u0010\u0002\u0012\u000e\n\nCHECK_FAIL\u0010\u0003\u0012\n\n\u0006CANCEL\u0010\u0004\"\u008c\u0002\n\u0008UserFlow\u0012\u001c\n\u0014used_presis_day_flow\u0018\u0001 \u0001(\u0003\u0012\u001d\n\u0015total_presis_day_flow\u0018\u0002 \u0001(\u0003\u0012\u001e\n\u0016used_presis_month_flow\u0018\u0003 \u0001(\u0003\u0012\u001f\n\u0017total_presis"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_month_flow\u0018\u0004 \u0001(\u0003\u0012\u001f\n\u0017used_presis_exceed_flow\u0018\u0005 \u0001(\u0003\u0012 \n\u0018total_presis_exceed_flow\u0018\u0006 \u0001(\u0003\u0012\u001e\n\u0016used_transfer_day_flow\u0018\u0007 \u0001(\u0003\u0012\u001f\n\u0017total_transfer_day_flow\u0018\u0008 \u0001(\u0003\"\u00bf\u0002\n\tFileToken\u0012\u0010\n\u0008sign_key\u0018\u0001 \u0002(\t\u0012\u0011\n\tparent_id\u0018\u0002 \u0002(\t\u0012\u0011\n\tfile_size\u0018\u0003 \u0002(\u0003\u0012\u000f\n\u0007site_id\u0018\u0004 \u0002(\u0005\u0012\u000f\n\u0007task_id\u0018\u0005 \u0002(\t\u0012\u0013\n\u000bcreate_time\u0018\u0006 \u0002(\u0003\u0012\u0014\n\u000crequest_type\u0018\u0007 \u0002(\u0005\u0012\u000c\n\u0004prop\u0018\u0008 \u0002(\u0005\u0012\u000f\n\u0007user_id\u0018\t \u0002(\t\u0012\u000f\n\u0007network\u0018\n \u0002(\t\u0012\u0011\n\tuser_type\u0018\u000b \u0001(\u0005\u0012\u0011\n\tfile_hash\u0018\u000c \u0001(\t\u0012\u0013\n\u000bdownload_id\u0018\r "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0001(\u0005\u0012\u0013\n\u000bexpire_time\u0018\u000e \u0001(\u0003\u0012\u000c\n\u0004sha1\u0018\u000f \u0001(\t\u0012\u000c\n\u0004ed2k\u0018\u0010 \u0001(\t\u0012\u0011\n\tsign_key2\u0018\u0011 \u0001(\t\"\u00dc\u0001\n\u000bThumbsToken\u0012\u0010\n\u0008sign_key\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007site_id\u0018\u0002 \u0002(\u0005\u0012\u000f\n\u0007task_id\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bcreate_time\u0018\u0004 \u0002(\u0003\u0012\u000f\n\u0007user_id\u0018\u0005 \u0002(\t\u0012\u000f\n\u0007network\u0018\u0006 \u0002(\t\u0012\u0011\n\tuser_type\u0018\u0007 \u0002(\u0005\u0012\u0013\n\u000bdownload_id\u0018\u0008 \u0002(\u0005\u0012\u0013\n\u000bexpire_time\u0018\t \u0002(\u0003\u0012\u0010\n\u0008file_ids\u0018\n \u0003(\t\u0012\u0013\n\u000bfile_hashes\u0018\u000b \u0003(\tB+\n)com.keniu.security.sync.tpan.model.protos"

    aput-object v2, v0, v1

    .line 8840
    new-instance v1, Lcom/keniu/security/sync/d/d/a/gd;

    invoke-direct {v1}, Lcom/keniu/security/sync/d/d/a/gd;-><init>()V

    .line 8920
    new-array v2, v3, [Lcom/b/a/ct;

    invoke-static {v0, v2, v1}, Lcom/b/a/ct;->a([Ljava/lang/String;[Lcom/b/a/ct;Lcom/b/a/cu;)V

    .line 8924
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
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->a:Lcom/b/a/cj;

    return-object p0
.end method

.method public static a()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 8784
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->s:Lcom/b/a/ct;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ct;)Lcom/b/a/ct;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->s:Lcom/b/a/ct;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->b:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic b()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->c:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic b(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->d:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic c(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->e:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic c()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->b:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->f:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic d()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->c:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->g:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic d(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->h:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic e(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->i:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic e()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->d:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->j:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->e:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->k:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic f(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->l:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic g(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->m:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->f:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->n:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic h()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->g:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic h(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->o:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic h(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->p:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic i(Lcom/b/a/cj;)Lcom/b/a/cj;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->q:Lcom/b/a/cj;

    return-object p0
.end method

.method static synthetic i()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->h:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic i(Lcom/b/a/dv;)Lcom/b/a/dv;
    .locals 0
    .parameter

    .prologue
    .line 6
    sput-object p0, Lcom/keniu/security/sync/d/d/a/gc;->r:Lcom/b/a/dv;

    return-object p0
.end method

.method static synthetic j()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->i:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic k()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->j:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->k:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic m()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->l:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->m:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic o()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->n:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->o:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic q()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->p:Lcom/b/a/dv;

    return-object v0
.end method

.method static synthetic r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->q:Lcom/b/a/cj;

    return-object v0
.end method

.method static synthetic s()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gc;->r:Lcom/b/a/dv;

    return-object v0
.end method

.method private static t()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
