.class public Lhv;
.super Lhz;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lhv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lhv;->c:Lhv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filesafe_db.sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhv;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lhz;-><init>(Landroid/content/Context;)V

    new-instance v0, Lhw;

    const-string v1, "filesafe_db.sqlite"

    invoke-direct {v0, p0, p1, v1}, Lhw;-><init>(Lhv;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhv;->b:Ljn;

    return-void
.end method

.method public static a()Lhv;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhv;->a(Landroid/content/Context;)Lhv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lhv;
    .locals 2

    sget-object v0, Lhv;->c:Lhv;

    if-nez v0, :cond_1

    const-class v1, Lhv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhv;->c:Lhv;

    if-nez v0, :cond_0

    new-instance v0, Lhv;

    invoke-direct {v0, p0}, Lhv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhv;->c:Lhv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lhv;->c:Lhv;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static b()V
    .locals 0

    return-void
.end method

.method protected static c()V
    .locals 0

    return-void
.end method
