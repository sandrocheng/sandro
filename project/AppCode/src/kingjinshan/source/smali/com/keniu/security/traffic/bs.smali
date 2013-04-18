.class final Lcom/keniu/security/traffic/bs;
.super Ljava/lang/Object;
.source "TrafficMonthLimitSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/keniu/security/traffic/bs;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/bs;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/bs;->a:Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
