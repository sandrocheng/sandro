.class final Lcom/keniu/security/traffic/w;
.super Ljava/lang/Object;
.source "TrafficAdjustByHandActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/keniu/security/traffic/w;->a:Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/keniu/security/traffic/w;->a:Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/w;->a:Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
