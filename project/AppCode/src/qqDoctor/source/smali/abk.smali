.class public final Labk;
.super Ljava/lang/Object;


# static fields
.field private static b:Labk;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/SharedPreferences$Editor;

.field private g:Landroid/content/SharedPreferences;

.field private h:Labv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Labk;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SoftwareUsageInfoMonitor"

    iput-object v0, p0, Labk;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labk;->d:Ljava/lang/String;

    iput-boolean v1, p0, Labk;->e:Z

    new-instance v0, Labl;

    invoke-direct {v0, p0}, Labl;-><init>(Labk;)V

    iput-object v0, p0, Labk;->h:Labv$b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const-string v0, "SoftwareManagerImpl"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Labk;->g:Landroid/content/SharedPreferences;

    iget-object v0, p0, Labk;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Labk;->f:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Labk;
    .locals 2

    const-class v1, Labk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labk;->b:Labk;

    if-nez v0, :cond_0

    new-instance v0, Labk;

    invoke-direct {v0, p0}, Labk;-><init>(Landroid/content/Context;)V

    sput-object v0, Labk;->b:Labk;

    :cond_0
    sget-object v0, Labk;->b:Labk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Labk;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labk;->d:Ljava/lang/String;

    iget-object v1, p0, Labk;->d:Ljava/lang/String;

    sget-object v2, Labk;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    iget-object v1, p0, Labk;->d:Ljava/lang/String;

    iget-object v2, p0, Labk;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lbor;->a(Ljava/lang/String;)Lbor;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lbor;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lbor;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    :goto_1
    iget-object v2, p0, Labk;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lbor;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lbor;->b:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lbor;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Labk;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Labk;->d:Ljava/lang/String;

    sput-object v0, Labk;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget v2, v0, Lbor;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbor;->d:I

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lbor;->c:Ljava/util/Date;

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Labk;->a:Ljava/lang/String;

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Labk;->h:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labk;->e:Z

    const-string v0, ""

    sput-object v0, Labk;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Labk;->a:Ljava/lang/String;

    iget-boolean v0, p0, Labk;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Labk;->h:Labv$b;

    invoke-virtual {v0, v1}, Labv;->a(Labv$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labk;->e:Z

    :cond_0
    return-void
.end method
