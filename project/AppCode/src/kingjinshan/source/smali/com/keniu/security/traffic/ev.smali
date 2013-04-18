.class final Lcom/keniu/security/traffic/ev;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubBrandSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u54c1\u724c"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/keniu/security/traffic/ev;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->finish()V

    goto :goto_0
.end method
