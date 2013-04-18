.class public final Lcom/ijinshan/cleaner/as;
.super Ljava/lang/Thread;
.source "SDcardCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 675
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    iget-object v0, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V

    .line 682
    iget-object v0, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 683
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V

    .line 682
    iget-object v0, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V

    .line 682
    iget-object v1, p0, Lcom/ijinshan/cleaner/as;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method
