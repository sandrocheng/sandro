.class final Lcom/keniu/security/rates/f;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "6"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const v1, 0x7f0b02d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-static {v0}, Lcom/keniu/security/rates/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 197
    if-ne v0, v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 202
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 203
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 204
    :cond_3
    if-ne v0, v3, :cond_0

    .line 205
    iget-object v0, p0, Lcom/keniu/security/rates/f;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const v1, 0x7f0b0379

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
