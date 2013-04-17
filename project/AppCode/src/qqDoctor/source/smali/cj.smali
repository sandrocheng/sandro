.class public final Lcj;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/Object;

.field private static c:Lcj;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcj;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcj;->c:Lcj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcj;->a:I

    return-void
.end method

.method public static a()Lcj;
    .locals 2

    sget-object v0, Lcj;->c:Lcj;

    if-eqz v0, :cond_0

    sget-object v0, Lcj;->c:Lcj;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcj;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcj;->c:Lcj;

    if-nez v0, :cond_1

    new-instance v0, Lcj;

    invoke-direct {v0}, Lcj;-><init>()V

    sput-object v0, Lcj;->c:Lcj;

    :cond_1
    sget-object v0, Lcj;->c:Lcj;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ldd;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget v1, p0, Lcj;->a:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    new-instance v0, Ldd;

    invoke-direct {v0, p1}, Ldd;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcj;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcj;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ldd;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcj;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcj;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ldd;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
