.class public Lyb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb$a;
    }
.end annotation


# static fields
.field private static c:Lyb;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private d:Lho;

.field private e:Lki;

.field private f:Lyb$a;

.field private g:Llt;

.field private h:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lyb;->c:Lyb;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyb$a;-><init>(Lyb;B)V

    iput-object v0, p0, Lyb;->f:Lyb$a;

    new-instance v0, Lyc;

    invoke-direct {v0, p0}, Lyc;-><init>(Lyb;)V

    iput-object v0, p0, Lyb;->g:Llt;

    new-instance v0, Lyd;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lyd;-><init>(Lyb;Landroid/os/Handler;)V

    iput-object v0, p0, Lyb;->h:Landroid/database/ContentObserver;

    iput-object p1, p0, Lyb;->a:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lyb;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iget-object v0, p0, Lyb;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    const-string v1, "1069070008"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setWebServerNum(Ljava/lang/String;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lyb;->d:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lyb;->e:Lki;

    return-void
.end method

.method static synthetic a(Lyb;)Lyb$a;
    .locals 1

    iget-object v0, p0, Lyb;->f:Lyb$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lyb;
    .locals 2

    sget-object v0, Lyb;->c:Lyb;

    if-nez v0, :cond_1

    const-class v1, Lyb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyb;->c:Lyb;

    if-nez v0, :cond_0

    new-instance v0, Lyb;

    invoke-direct {v0, p0}, Lyb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lyb;->c:Lyb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lyb;->c:Lyb;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lyb;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
    .locals 1

    iget-object v0, p0, Lyb;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-object v0
.end method

.method static synthetic c(Lyb;)Lki;
    .locals 1

    iget-object v0, p0, Lyb;->e:Lki;

    return-object v0
.end method

.method static synthetic d(Lyb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lyb;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lyb;)Lho;
    .locals 1

    iget-object v0, p0, Lyb;->d:Lho;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    iget-object v1, p0, Lyb;->g:Llt;

    invoke-virtual {v0, v1}, Lop;->a(Llt;)V

    iget-object v0, p0, Lyb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lyb;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    iget-object v1, p0, Lyb;->g:Llt;

    invoke-virtual {v0, v1}, Lop;->b(Llt;)V

    iget-object v0, p0, Lyb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lyb;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
