.class public final Laai;
.super Ljava/lang/Object;


# static fields
.field private static a:Laai;


# instance fields
.field private b:Lho;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Laai;->a:Laai;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laai;->c:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laai;->b:Lho;

    return-void
.end method

.method public static a()Laai;
    .locals 2

    sget-object v0, Laai;->a:Laai;

    if-nez v0, :cond_1

    const-class v1, Laai;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laai;->a:Laai;

    if-nez v0, :cond_0

    new-instance v0, Laai;

    invoke-direct {v0}, Laai;-><init>()V

    sput-object v0, Laai;->a:Laai;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Laai;->a:Laai;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laai;->b:Lho;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lk;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lk;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lk;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lk;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laai;->b:Lho;

    invoke-virtual {v1}, Lho;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Laai;->c:Z

    iget-boolean v0, p0, Laai;->c:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laai;->c:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laai;->c:Z

    const/4 v0, 0x0

    sput-object v0, Laai;->a:Laai;

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Laai;->c:Z

    return v0
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
