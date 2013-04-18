.class final Lcom/ijinshan/cleaner/y;
.super Landroid/os/Handler;
.source "HistoryCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->d(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v1, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/o;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    const v4, 0x7f0b0280

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/o;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->a(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    const-string v1, "\u6e05\u7406\u5b8c\u6210\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/o;->dismiss()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/y;->a:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->f(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;

    .line 253
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
