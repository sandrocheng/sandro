.class final Lorg/antivirus/ui/main/m;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antivirus/ui/main/m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const v2, 0x7f09008d

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/main/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/main/AntivirusMainScreen;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

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

    const v1, 0x7f09001f

    :goto_2
    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v1, v3

    goto :goto_1

    :sswitch_0
    const v1, 0x7f0901db

    goto :goto_2

    :sswitch_1
    const v1, 0x7f09008c

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
    const v1, 0x7f09008e

    goto :goto_2

    :sswitch_6
    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->b(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->b(I)I

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->c(Lorg/antivirus/ui/main/AntivirusMainScreen;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->c(Lorg/antivirus/ui/main/AntivirusMainScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->c(Lorg/antivirus/ui/main/AntivirusMainScreen;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->c(Lorg/antivirus/ui/main/AntivirusMainScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lorg/antivirus/ui/main/AntivirusMainScreen;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_6
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
    .end sparse-switch
.end method
