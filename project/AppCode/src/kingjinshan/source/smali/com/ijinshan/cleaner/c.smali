.class final Lcom/ijinshan/cleaner/c;
.super Ljava/lang/Object;
.source "CacheCleanerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/ijinshan/cleaner/c;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ijinshan/cleaner/c;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/ijinshan/cleaner/c;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/c;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 351
    iget-object v1, p0, Lcom/ijinshan/cleaner/c;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
