.class final Lorg/antivirus/ui/protection/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/a;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const v1, 0x7f09008d

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f09001f

    :goto_2
    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_1

    :sswitch_0
    const v0, 0x7f09008c

    goto :goto_2

    :sswitch_1
    move v0, v1

    goto :goto_2

    :sswitch_2
    move v0, v1

    goto :goto_2

    :sswitch_3
    move v0, v1

    goto :goto_2

    :sswitch_4
    const v0, 0x7f09008e

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lorg/antivirus/ui/protection/a;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
