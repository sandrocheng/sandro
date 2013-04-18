.class final Lcom/b/a/fl;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/b/a/fg;


# instance fields
.field final synthetic a:Lcom/b/a/fg;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/b/a/fg;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/b/a/fl;->a:Lcom/b/a/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/fl;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/fl;->b:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/b/a/fm;

    invoke-direct {v0}, Lcom/b/a/fm;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/b/a/fl;->b:Z

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/b/a/fl;->a:Lcom/b/a/fg;

    invoke-interface {v0, p1}, Lcom/b/a/fg;->a(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
