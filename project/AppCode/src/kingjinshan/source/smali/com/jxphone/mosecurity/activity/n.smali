.class final Lcom/jxphone/mosecurity/activity/n;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/n;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 553
    if-nez p2, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/n;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/keniu/security/a;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/n;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->showDialog(I)V

    goto :goto_0
.end method
