.class public final Lsv;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;

.field private static e:Lsv;


# instance fields
.field private d:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Lfv;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lho;

.field private m:Labv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsv;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsv;->b:Ljava/util/Map;

    const-string v0, ""

    sput-object v0, Lsv;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LockMonitor"

    iput-object v0, p0, Lsv;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lsv;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsv;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lsv;->k:Ljava/lang/String;

    const-class v0, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-class v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-class v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/VerifyResultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Lsx;

    invoke-direct {v0, p0}, Lsx;-><init>(Lsv;)V

    iput-object v0, p0, Lsv;->m:Labv$b;

    iput-object p1, p0, Lsv;->f:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lsv;->l:Lho;

    new-instance v0, Lfv;

    invoke-direct {v0, p1}, Lfv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsv;->i:Lfv;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv;->j:Ljava/lang/String;

    new-instance v0, Lsw;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsw;-><init>(Lsv;Landroid/os/Looper;)V

    iput-object v0, p0, Lsv;->g:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lsv;
    .locals 1

    sget-object v0, Lsv;->e:Lsv;

    if-nez v0, :cond_0

    new-instance v0, Lsv;

    invoke-direct {v0, p0}, Lsv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsv;->e:Lsv;

    :cond_0
    sget-object v0, Lsv;->e:Lsv;

    return-object v0
.end method

.method static synthetic a(Lsv;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lsv;->a:Ljava/util/Set;

    if-eqz v0, :cond_2

    sget-object v0, Lsv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lsv;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv;->k:Ljava/lang/String;

    iget-object v0, p0, Lsv;->k:Ljava/lang/String;

    sget-object v1, Lsv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsv;->a:Ljava/util/Set;

    iget-object v1, p0, Lsv;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lsv;->k:Ljava/lang/String;

    iget-object v1, p0, Lsv;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsv;->k:Ljava/lang/String;

    sput-object v0, Lsv;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lsv;->l:Lho;

    invoke-virtual {v0}, Lho;->co()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lyj;

    iget-object v1, p0, Lsv;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lsv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lyj;->a(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lsv;->d:Ljava/lang/String;

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lsv;->m:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsv;->h:Z

    const-string v0, ""

    sput-object v0, Lsv;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lsv;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lsv;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lsv;->i:Lfv;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lfv;->a:Lji;

    invoke-virtual {v0}, Lji;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf;

    iget-object v0, v0, Lmf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sput-object v1, Lsv;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lsv;->m:Labv$b;

    invoke-virtual {v0, v1}, Labv;->a(Labv$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsv;->h:Z

    :cond_2
    return-void
.end method
