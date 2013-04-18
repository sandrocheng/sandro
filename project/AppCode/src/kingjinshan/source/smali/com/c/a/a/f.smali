.class final Lcom/c/a/a/f;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/c/a/a/e;


# direct methods
.method constructor <init>(Lcom/c/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/c/a/a/s;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/c/a/a/s;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v1, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 174
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->k:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->a:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->b:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPATAG_IMEI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapTags.MPATAG_IMSI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {p1}, Lcom/c/a/a/d;->a(Landroid/telephony/CellLocation;)V

    .line 183
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/d;->a(Landroid/telephony/TelephonyManager;)V

    .line 185
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/r;->c()Z

    .line 186
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->k:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 166
    sput p1, Lcom/c/a/a/s;->m:I

    .line 167
    return-void
.end method
