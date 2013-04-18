.class final Lcom/keniu/security/traffic/ct;
.super Ljava/lang/Object;
.source "TrafficSoftDetailActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    const v0, 0x7f0803d8

    if-ne p2, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->c(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const v0, 0x7f0803d9

    if-ne p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->e(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->f(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/keniu/security/traffic/ct;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;I)V

    goto :goto_0
.end method
