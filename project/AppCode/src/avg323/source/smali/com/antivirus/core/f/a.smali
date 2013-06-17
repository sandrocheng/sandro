.class public Lcom/antivirus/core/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    new-instance v0, Lcom/antivirus/core/f/c;

    invoke-direct {v0, p0}, Lcom/antivirus/core/f/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/f/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    invoke-static {p0}, Lcom/antivirus/core/f/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
