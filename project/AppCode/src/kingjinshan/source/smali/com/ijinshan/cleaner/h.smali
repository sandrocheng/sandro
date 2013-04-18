.class final Lcom/ijinshan/cleaner/h;
.super Ljava/lang/Object;
.source "CacheCleanerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    sget-object v1, Lcom/ijinshan/cleaner/g;->a:Lcom/ijinshan/cleaner/g;

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 132
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    sget-object v1, Lcom/ijinshan/cleaner/g;->b:Lcom/ijinshan/cleaner/g;

    if-ne v0, v1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const-string v1, "mg_rub_cache_clean"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const-string v1, "mg_rub_cache_clean_success"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 143
    new-instance v0, Lcom/ijinshan/cleaner/i;

    iget-object v1, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/i;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/i;->start()V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    sget-object v1, Lcom/ijinshan/cleaner/g;->c:Lcom/ijinshan/cleaner/g;

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    if-nez v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    new-instance v1, Lcom/ijinshan/cleaner/k;

    iget-object v2, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {v1, v2}, Lcom/ijinshan/cleaner/k;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/k;)Lcom/ijinshan/cleaner/k;

    .line 150
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/k;->start()V

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/h;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a()V

    goto :goto_0
.end method
