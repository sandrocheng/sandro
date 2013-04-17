.class public abstract Ls$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lr;
    .locals 1

    invoke-static {}, Lr;->a()Lr;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ly;
    .locals 1

    invoke-static {}, Ly;->a()Ly;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized f()Lfg;
    .locals 2

    const-class v1, Ls$a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lfg;

    invoke-direct {v0}, Lfg;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Lz;
    .locals 1

    invoke-static {}, Lz;->a()Lz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
