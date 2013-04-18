.class final Lcom/ijinshan/cleaner/f;
.super Ljava/lang/Object;
.source "CacheCleanerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iput-object p2, p0, Lcom/ijinshan/cleaner/f;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const-string v1, "mg_rub_cache_clean_success"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 432
    new-instance v0, Lcom/ijinshan/cleaner/i;

    iget-object v1, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/i;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/i;->start()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/f;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/ijinshan/cleaner/f;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->e()V

    .line 436
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void
.end method
