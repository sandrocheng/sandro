.class public final Lorg/antivirus/core/a/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/antivirus/core/Engine;)V
    .locals 2

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
