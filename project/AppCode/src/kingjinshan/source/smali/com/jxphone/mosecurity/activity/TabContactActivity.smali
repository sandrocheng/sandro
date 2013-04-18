.class public abstract Lcom/jxphone/mosecurity/activity/TabContactActivity;
.super Lcom/jxphone/mosecurity/activity/BaseContactActivity;
.source "TabContactActivity.java"


# instance fields
.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/TabContactActivity;->l:Z

    return-void
.end method


# virtual methods
.method protected final m()V
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/TabContactActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->n()I

    move-result v0

    invoke-static {p0, v0}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;I)V

    .line 19
    :cond_0
    return-void
.end method

.method protected abstract n()I
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onPause()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/TabContactActivity;->l:Z

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onResume()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/TabContactActivity;->l:Z

    .line 27
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->n()I

    move-result v0

    invoke-static {p0, v0}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;I)V

    .line 28
    return-void
.end method
