.class Lcom/antivirus/ui/scan/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/f;->a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/f;->a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    invoke-static {v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
