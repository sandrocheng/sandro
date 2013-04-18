.class final Lcom/keniu/security/traffic/ez;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubOperatorSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ez;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
