.class final Lcom/keniu/security/traffic/ef;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/keniu/security/traffic/ef;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/keniu/security/traffic/ef;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b021e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ef;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    return-void
.end method
