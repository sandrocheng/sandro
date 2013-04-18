.class final Lcom/jxphone/mosecurity/activity/a;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "isDummy"

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string v1, "list_type"

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->h:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 227
    packed-switch p2, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const-class v2, Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v1, v2, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const-class v2, Lcom/keniu/security/importx/ImportfCalllogActivity;

    invoke-static {v1, v2, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const-class v2, Lcom/keniu/security/importx/ImportfSmsActivity;

    invoke-static {v1, v2, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
