.class public final Lcom/ijinshan/cleaner/k;
.super Ljava/lang/Thread;
.source "CacheCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ijinshan/cleaner/k;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/k;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->d(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    .line 175
    iget-object v0, p0, Lcom/ijinshan/cleaner/k;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/k;)Lcom/ijinshan/cleaner/k;

    .line 176
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
