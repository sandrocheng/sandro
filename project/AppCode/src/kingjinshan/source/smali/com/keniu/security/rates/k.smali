.class final Lcom/keniu/security/rates/k;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/rates/RatesRequestMainActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/keniu/security/rates/k;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p2, p0, Lcom/keniu/security/rates/k;->b:Ljava/lang/String;

    .line 494
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 498
    iget-object v0, p0, Lcom/keniu/security/rates/k;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-static {v0}, Lcom/keniu/security/rates/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 499
    if-ne v0, v2, :cond_1

    .line 501
    iget-object v0, p0, Lcom/keniu/security/rates/k;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 507
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 509
    :cond_2
    if-ne v0, v3, :cond_0

    .line 511
    iget-object v0, p0, Lcom/keniu/security/rates/k;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const v1, 0x7f0b0379

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
