.class final Lcom/keniu/security/traffic/bt;
.super Ljava/lang/Object;
.source "TrafficMonthLimitSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/bt;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
