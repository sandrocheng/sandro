.class final Lcom/ijinshan/cleaner/am;
.super Ljava/lang/Object;
.source "SDcardCleanerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/ijinshan/cleaner/am;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/ijinshan/cleaner/am;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/ijinshan/cleaner/am;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/am;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->s(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Z

    .line 501
    iget-object v1, p0, Lcom/ijinshan/cleaner/am;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
