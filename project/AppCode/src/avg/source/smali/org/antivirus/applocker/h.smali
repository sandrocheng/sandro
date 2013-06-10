.class public Lorg/antivirus/applocker/h;
.super Lorg/antivirus/core/a/v;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const/16 v2, 0x41a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EmailAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Language"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "DeviceControl.sendEmail.email"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DeviceControl.sendEmail.lang"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->b:Ljava/lang/String;

    const-string v0, "DeviceControl.sendEmail.pass"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->c:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antivirus/applocker/h;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "AppLockerPW"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/antivirus/applocker/h;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/applocker/h;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "EmailAddress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "Language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->b:Ljava/lang/String;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "Password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/h;->c:Ljava/lang/String;

    const-string v0, "DeviceControl.sendEmail.email"

    iget-object v1, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->commSetValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DeviceControl.sendEmail.lang"

    iget-object v1, p0, Lorg/antivirus/applocker/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->commSetValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DeviceControl.sendEmail.pass"

    iget-object v1, p0, Lorg/antivirus/applocker/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->commSetValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/applocker/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "DeviceControl.sendEmail.email"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commRmValue(Ljava/lang/String;)V

    const-string v0, "DeviceControl.sendEmail.lang"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commRmValue(Ljava/lang/String;)V

    const-string v0, "DeviceControl.sendEmail.pass"

    invoke-static {v0}, Lorg/antivirus/AVSettings;->commRmValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x41a

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.sendMail"

    return-object v0
.end method
