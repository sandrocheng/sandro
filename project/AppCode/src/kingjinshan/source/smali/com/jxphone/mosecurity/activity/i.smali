.class final Lcom/jxphone/mosecurity/activity/i;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/r;

.field final synthetic c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/content/Context;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/i;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/i;->b:Lcom/jxphone/mosecurity/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v1, v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    .line 268
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 311
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->f:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 313
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/i;->b:Lcom/jxphone/mosecurity/activity/r;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/i;->b:Lcom/jxphone/mosecurity/activity/r;

    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/r;->a(Lcom/jxphone/mosecurity/c/b;)V

    .line 316
    :cond_1
    return-void

    .line 270
    :pswitch_0
    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(I)Z

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_1
    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(I)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jxphone/mosecurity/logic/a/g;->c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 280
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jxphone/mosecurity/logic/a/j;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 285
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :pswitch_2
    new-instance v0, Lcom/jxphone/mosecurity/activity/j;

    check-cast p1, Lcom/keniu/security/util/ap;

    invoke-virtual {p1}, Lcom/keniu/security/util/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/jxphone/mosecurity/activity/t;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {v2, v3}, Lcom/jxphone/mosecurity/activity/t;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/jxphone/mosecurity/activity/j;-><init>(Lcom/jxphone/mosecurity/activity/i;Landroid/content/Context;Landroid/os/Handler;)V

    .line 304
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-interface {v1, v2, v0}, Lcom/jxphone/mosecurity/logic/a/d;->c(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)Z

    move-result v0

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
