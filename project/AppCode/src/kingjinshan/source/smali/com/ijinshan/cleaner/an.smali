.class final Lcom/ijinshan/cleaner/an;
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
    .line 506
    iput-object p1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 510
    iget-object v0, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 513
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->s(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Z

    .line 514
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->t(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Z

    .line 515
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g()J

    move-result-wide v1

    .line 516
    iget-object v3, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u603b\u626b\u63cf\u5230 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u9879\u5783\u573e\u6587\u4ef6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u603b\u5927\u5c0f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    cmp-long v3, v1, v6

    if-lez v3, :cond_0

    .line 521
    iget-object v3, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v5, 0x7f0b0279

    invoke-virtual {v4, v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v3, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    sget-object v4, Lcom/ijinshan/cleaner/aq;->b:Lcom/ijinshan/cleaner/aq;

    iput-object v4, v3, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 524
    :cond_0
    cmp-long v1, v1, v6

    if-gtz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v3, 0x7f0b0277

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/ijinshan/cleaner/an;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    sget-object v2, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    iput-object v2, v1, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 528
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_2
    return-void

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
