.class public Lao;
.super Ljava/lang/Object;


# static fields
.field private static a:Lao;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lao;->b:I

    iput v0, p0, Lao;->c:I

    return-void
.end method

.method public static a()Lao;
    .locals 2

    const-class v1, Lao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lao;->a:Lao;

    if-nez v0, :cond_0

    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    sput-object v0, Lao;->a:Lao;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lao;->a:Lao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    double-to-int v0, p1

    iput v0, p0, Lao;->b:I

    const-wide/high16 v0, 0x404e

    mul-double/2addr v0, p1

    double-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lao;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lao;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lao;->c:I

    return v0
.end method
