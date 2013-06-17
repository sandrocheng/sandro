.class Lcom/antivirus/ui/main/o;
.super Landroid/os/Handler;


# instance fields
.field a:Landroid/content/Intent;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/main/c;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SCAN_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/ui/main/o;->a:Landroid/content/Intent;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/antivirus/ui/main/o;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const v2, 0x7f090150

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/main/o;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sparse-switch v1, :sswitch_data_0

    const v1, 0x7f09023c

    :goto_2
    invoke-static {v0}, Lcom/antivirus/ui/main/c;->d(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v1, v3

    goto :goto_1

    :sswitch_0
    const v1, 0x7f09023a

    goto :goto_2

    :sswitch_1
    const v1, 0x7f09014f

    goto :goto_2

    :sswitch_2
    move v1, v2

    goto :goto_2

    :sswitch_3
    move v1, v2

    goto :goto_2

    :sswitch_4
    move v1, v2

    goto :goto_2

    :sswitch_5
    const v1, 0x7f090151

    goto :goto_2

    :sswitch_6
    iget-object v2, p0, Lcom/antivirus/ui/main/o;->a:Landroid/content/Intent;

    const-string v3, "SCAN_STATUS_BROADCAST_EXTRA"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/main/o;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/main/c;

    invoke-static {v1}, Lcom/antivirus/ui/main/c;->b(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/main/o;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->c(Lcom/antivirus/ui/main/c;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/antivirus/ui/main/c;->b(I)I

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->e(Lcom/antivirus/ui/main/c;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->e(Lcom/antivirus/ui/main/c;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/antivirus/ui/main/c;->e(Lcom/antivirus/ui/main/c;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    invoke-static {v0}, Lcom/antivirus/ui/main/c;->e(Lcom/antivirus/ui/main/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/ui/main/c;->L()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_6
        -0x2 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
    .end sparse-switch
.end method
