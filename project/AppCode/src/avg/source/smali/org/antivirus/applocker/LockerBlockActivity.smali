.class public Lorg/antivirus/applocker/LockerBlockActivity;
.super Lorg/antivirus/applocker/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/applocker/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/antivirus/applocker/LockerBlockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->getApplockerUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/applocker/LockerBlockActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/antivirus/applocker/LockerBlockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/antivirus/applocker/LockerBlockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/antivirus/applocker/LockerBlockActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/LockerBlockActivity;->setResult(I)V

    invoke-virtual {p0}, Lorg/antivirus/applocker/LockerBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blocked_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/applocker/LockerBlockActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/antivirus/applocker/LockerBlockActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/LockerBlockActivity;->setResult(I)V

    const v0, 0x7f090049

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
