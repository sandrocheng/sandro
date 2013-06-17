.class Lcom/antivirus/ui/protection/an;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/protection/aj;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/antivirus/ui/protection/an;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const v2, 0x7f090150

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/an;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/protection/aj;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/aj;)Z

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

    const v1, 0x7f090042

    :goto_2
    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->c(Lcom/antivirus/ui/protection/aj;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/aj;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->d(Lcom/antivirus/ui/protection/aj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->e(Lcom/antivirus/ui/protection/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

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
    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->b(Lcom/antivirus/ui/protection/aj;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/antivirus/ui/protection/aj;->b(I)I

    iget-object v1, v0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iget-object v2, v0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/aj;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, v0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/antivirus/ui/protection/aj;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    nop

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
