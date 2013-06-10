.class final Lorg/antivirus/antitheft/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/antitheft/z;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/z;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/aa;->a:Lorg/antivirus/antitheft/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-wide/32 v0, 0x1d4c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lorg/antivirus/antitheft/aa;->a:Lorg/antivirus/antitheft/z;

    iget-boolean v0, v0, Lorg/antivirus/antitheft/z;->c:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/antivirus/antitheft/aa;->a:Lorg/antivirus/antitheft/z;

    iget-object v0, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSimID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lorg/antivirus/core/telephony/TelephonyInfo;

    iget-object v0, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lorg/antivirus/core/telephony/TelephonyInfo;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lorg/antivirus/core/telephony/TelephonyInfo;->grabLineAndSimNumbers(Landroid/content/Context;)Z

    invoke-virtual {v2}, Lorg/antivirus/core/telephony/TelephonyInfo;->getSimNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v3, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v3, v0}, Lorg/antivirus/core/EngineSettings;->setSimID(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/antivirus/core/telephony/TelephonyInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v1, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setLine1Number(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getSimID()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2, v0}, Lorg/antivirus/core/EngineSettings;->setSimID(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    const-class v3, Lorg/antivirus/AVService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/16 v3, 0x40c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
