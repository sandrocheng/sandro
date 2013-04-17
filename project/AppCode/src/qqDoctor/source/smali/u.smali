.class public Lu;
.super Ljava/lang/Object;


# static fields
.field private static a:Lu;


# instance fields
.field private b:Lx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lu;->a:Lu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu;->b:Lx;

    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Lu;->b:Lx;

    return-void
.end method

.method public static a()Lu;
    .locals 2

    sget-object v0, Lu;->a:Lu;

    if-nez v0, :cond_1

    const-class v1, Lu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu;->a:Lu;

    if-nez v0, :cond_0

    new-instance v0, Lu;

    invoke-direct {v0}, Lu;-><init>()V

    sput-object v0, Lu;->a:Lu;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lu;->a:Lu;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0, p1}, Ly;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0, p1}, Ly;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0}, Ly;->c()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0, p1}, Ly;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0}, Ly;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu;->b:Lx;

    iget-object v0, v0, Lx;->a:Ly;

    invoke-interface {v0}, Ly;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
