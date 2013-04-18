.class final Lcom/keniu/security/traffic/eu;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubBrandSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eu;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
