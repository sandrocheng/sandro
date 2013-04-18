.class final Lcom/ijinshan/cleaner/a;
.super Landroid/os/Handler;
.source "CacheCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g(Lcom/ijinshan/cleaner/CacheCleanerActivity;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 218
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    .line 225
    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->i(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/adapter/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const-string v1, "mg_rub_cache_scan"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 235
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e()J

    move-result-wide v0

    .line 239
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 242
    iget-object v4, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v4}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5171\u626b\u63cf\u5230 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u9879\u7f13\u5b58\u6570\u636e,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u603b\u5927\u5c0f"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v4, 0x7f0b0279

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    sget-object v3, Lcom/ijinshan/cleaner/g;->b:Lcom/ijinshan/cleaner/g;

    iput-object v3, v2, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 247
    :cond_1
    cmp-long v0, v0, v8

    if-gtz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v2, 0x7f0b027e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v5, 0x7f0b0272

    invoke-virtual {v4, v5}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    sget-object v1, Lcom/ijinshan/cleaner/g;->c:Lcom/ijinshan/cleaner/g;

    iput-object v1, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    goto/16 :goto_0

    .line 259
    :pswitch_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/a;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    goto/16 :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
