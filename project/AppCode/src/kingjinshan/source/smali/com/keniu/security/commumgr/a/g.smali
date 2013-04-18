.class final Lcom/keniu/security/commumgr/a/g;
.super Ljava/lang/Object;
.source "RpCtrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v1, "isDummy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v1, "list_type"

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->g:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    packed-switch p2, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 133
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    const-class v3, Lcom/keniu/security/importx/ImportfCalllogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    const-class v3, Lcom/keniu/security/importx/ImportfSmsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/keniu/security/commumgr/a/h;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/commumgr/a/h;-><init>(Lcom/keniu/security/commumgr/a/g;Landroid/view/View;)V

    .line 173
    iget-object v2, p0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    const v3, 0x7f0b0477

    const v4, 0x7f0b022e

    const v5, 0x7f0b021a

    invoke-static {v2, v3, v4, v5, v1}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v0}, Lcom/keniu/security/util/ap;->a(Landroid/view/View;)V

    .line 178
    invoke-virtual {v2}, Lcom/keniu/security/util/ap;->show()V

    .line 179
    invoke-virtual {v2}, Lcom/keniu/security/util/ap;->c()Landroid/widget/Button;

    move-result-object v3

    .line 180
    new-instance v4, Lcom/keniu/security/commumgr/a/j;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/keniu/security/commumgr/a/j;-><init>(Lcom/keniu/security/commumgr/a/g;Landroid/view/View;Lcom/keniu/security/util/w;Lcom/keniu/security/util/ap;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
