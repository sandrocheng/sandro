.class public Lorg/antivirus/antitheft/i;
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

    new-instance v0, Lorg/antivirus/core/telephony/TelephonyInfo;

    invoke-direct {v0, p1}, Lorg/antivirus/core/telephony/TelephonyInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lorg/antivirus/core/telephony/TelephonyInfo;->grabLineAndSimNumbers(Landroid/content/Context;)Z

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/antivirus/core/telephony/TelephonyInfo;->getSimNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/antivirus/antitheft/i;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

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

    const/16 v0, 0x40c

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.updateSIM"

    return-object v0
.end method
