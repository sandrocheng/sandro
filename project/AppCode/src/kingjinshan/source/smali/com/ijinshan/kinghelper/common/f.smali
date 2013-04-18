.class final Lcom/ijinshan/kinghelper/common/f;
.super Landroid/content/AsyncQueryHandler;
.source "NumberPickListActivity.java"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    .line 471
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 472
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/f;->a:Ljava/lang/ref/WeakReference;

    .line 473
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 477
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    .line 478
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 480
    if-eqz p3, :cond_2

    .line 482
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 483
    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->c(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Lcom/ijinshan/kinghelper/common/e;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/ijinshan/kinghelper/common/e;->a(Landroid/database/Cursor;)V

    .line 484
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->d(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :goto_0
    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->c(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Lcom/ijinshan/kinghelper/common/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/common/e;->changeCursor(Landroid/database/Cursor;)V

    .line 495
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->e(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a()V

    .line 503
    :cond_0
    :goto_1
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a()V

    .line 487
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 488
    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->c(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Lcom/ijinshan/kinghelper/common/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/e;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/f;->b:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a()V

    goto :goto_0

    .line 499
    :cond_3
    if-eqz p3, :cond_0

    .line 500
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
