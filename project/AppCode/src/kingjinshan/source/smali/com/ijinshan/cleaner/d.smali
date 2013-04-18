.class final Lcom/ijinshan/cleaner/d;
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
    .line 357
    iput-object p1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 360
    iget-object v0, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 363
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 364
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->m(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z

    .line 365
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 366
    iget-object v2, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e()J

    move-result-wide v2

    .line 367
    iget-object v4, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v4}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5171\u626b\u63cf\u5230 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u9879\u7f13\u5b58\u6570\u636e,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u603b\u5927\u5c0f"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v4, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v5, 0x7f0b0279

    invoke-virtual {v4, v5}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    sget-object v4, Lcom/ijinshan/cleaner/g;->b:Lcom/ijinshan/cleaner/g;

    iput-object v4, v1, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 374
    :cond_0
    cmp-long v1, v2, v7

    if-gtz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v3, 0x7f0b0277

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/ijinshan/cleaner/d;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    sget-object v2, Lcom/ijinshan/cleaner/g;->c:Lcom/ijinshan/cleaner/g;

    iput-object v2, v1, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 378
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 379
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_2
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
