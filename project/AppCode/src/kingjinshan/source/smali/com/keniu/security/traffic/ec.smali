.class final Lcom/keniu/security/traffic/ec;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    const v1, 0x7f030028

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/traffic/ec;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 126
    const v2, 0x7f0b02b4

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 127
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 128
    const v1, 0x7f0b02b6

    new-instance v2, Lcom/keniu/security/traffic/ed;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/ed;-><init>(Lcom/keniu/security/traffic/ec;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 157
    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1, v4}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 158
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 160
    return-void
.end method
