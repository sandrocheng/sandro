.class public Lorg/antivirus/antitheft/h;
.super Lorg/antivirus/core/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lorg/antivirus/AVSettings;->getC2dmToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/antitheft/h;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setC2dmToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

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

    const/16 v0, 0x40b

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.updateGCM"

    return-object v0
.end method
