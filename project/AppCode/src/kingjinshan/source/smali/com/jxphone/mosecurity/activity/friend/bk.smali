.class final Lcom/jxphone/mosecurity/activity/friend/bk;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 198
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v3

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xa4cb80

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 207
    :cond_2
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_1
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->c(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->d(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    .line 218
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bk;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->e(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Z

    goto :goto_0

    .line 209
    :cond_3
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
