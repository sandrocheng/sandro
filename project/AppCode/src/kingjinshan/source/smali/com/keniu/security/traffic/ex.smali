.class final Lcom/keniu/security/traffic/ex;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubOperatorSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u8fd0\u8425\u5546"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/keniu/security/traffic/ex;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->finish()V

    goto :goto_0
.end method
