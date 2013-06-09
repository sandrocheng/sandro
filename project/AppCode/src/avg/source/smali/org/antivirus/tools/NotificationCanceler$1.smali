.class Lorg/antivirus/tools/NotificationCanceler$1;
.super Lorg/antivirus/tools/NotificationCanceler$MyRunnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tools/NotificationCanceler;


# direct methods
.method constructor <init>(Lorg/antivirus/tools/NotificationCanceler;Landroid/app/NotificationManager;IJ)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tools/NotificationCanceler$1;->a:Lorg/antivirus/tools/NotificationCanceler;

    invoke-direct/range {p0 .. p5}, Lorg/antivirus/tools/NotificationCanceler$MyRunnable;-><init>(Lorg/antivirus/tools/NotificationCanceler;Landroid/app/NotificationManager;IJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/tools/NotificationCanceler$1;->b:Landroid/app/NotificationManager;

    iget v1, p0, Lorg/antivirus/tools/NotificationCanceler$1;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
