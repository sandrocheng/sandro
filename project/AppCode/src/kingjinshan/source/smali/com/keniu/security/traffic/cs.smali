.class final Lcom/keniu/security/traffic/cs;
.super Ljava/lang/Object;
.source "TrafficSmsShowActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSmsShowActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/keniu/security/traffic/cs;->a:Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/keniu/security/traffic/cs;->a:Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/keniu/security/traffic/cs;->a:Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cs;->a:Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
