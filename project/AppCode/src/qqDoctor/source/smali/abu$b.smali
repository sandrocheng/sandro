.class final Labu$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Labu;


# direct methods
.method private constructor <init>(Labu;)V
    .locals 0

    iput-object p1, p0, Labu$b;->a:Labu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labu;B)V
    .locals 0

    invoke-direct {p0, p1}, Labu$b;-><init>(Labu;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iput v1, v0, Labu;->c:I

    iget-object v0, p0, Labu$b;->a:Labu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Labu;->b:Z

    iget-object v0, p0, Labu$b;->a:Labu;

    :cond_0
    iget-object v0, p0, Labu$b;->a:Labu;

    iget-boolean v0, v0, Labu;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-virtual {v0}, Labu;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-virtual {v0}, Labu;->d()Lmp;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Labu$b;->a:Labu;

    invoke-virtual {v1, v0}, Labu;->a(Lmp;)V

    :cond_2
    iget-object v0, p0, Labu$b;->a:Labu;

    iget-object v0, v0, Labu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Labu$b;->a:Labu;

    iget-boolean v0, v0, Labu;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-virtual {v0}, Labu;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-virtual {v0}, Labu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labu$b;->a:Labu;

    invoke-virtual {v0}, Labu;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
