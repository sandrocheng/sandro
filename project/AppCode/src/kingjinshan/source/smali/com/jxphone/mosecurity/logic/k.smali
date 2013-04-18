.class final Lcom/jxphone/mosecurity/logic/k;
.super Ljava/lang/Object;
.source "PhoneCallLogicImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/i;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/i;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->g(Lcom/jxphone/mosecurity/logic/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->h(Lcom/jxphone/mosecurity/logic/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/keniu/security/a;->an()I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/i;->i(Lcom/jxphone/mosecurity/logic/i;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->j(Lcom/jxphone/mosecurity/logic/i;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/k;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/i;->k(Lcom/jxphone/mosecurity/logic/i;)Landroid/os/Handler;

    move-result-object v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
