.class final Lcom/keniu/security/traffic/eq;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity2.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/keniu/security/traffic/eq;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    iput-object p2, p0, Lcom/keniu/security/traffic/eq;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/keniu/security/traffic/eq;->a:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/eq;->a:Landroid/widget/TextView;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
