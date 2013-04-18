.class final Lcom/ijinshan/cleaner/x;
.super Ljava/lang/Thread;
.source "HistoryCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 202
    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1, v4}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;II)V

    .line 203
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 208
    iget-object v2, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;II)V

    .line 209
    iget-object v2, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-virtual {v2, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0, v5, v4}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;II)V

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/x;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0, v5, v4}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;II)V

    .line 220
    return-void
.end method
