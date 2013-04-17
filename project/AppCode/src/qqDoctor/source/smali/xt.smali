.class final Lxt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Landroid/widget/EditText;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lxn;


# direct methods
.method constructor <init>(Lxn;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lxt;->e:Lxn;

    iput-object p2, p0, Lxt;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lxt;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lxt;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lxt;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lxt;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxt;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lxt;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const v0, 0x7f0b01ca

    :goto_0
    iget-object v1, p0, Lxt;->e:Lxn;

    iget-object v1, v1, Lxn;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v3, p0, Lxt;->e:Lxn;

    invoke-virtual {v3, v0}, Lxn;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v0, 0x7f0b080b

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const v0, 0x7f0b01cc

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b080c

    goto :goto_0

    :cond_3
    const v0, 0x7f0b01c7

    iget-object v2, p0, Lxt;->e:Lxn;

    iget-object v2, v2, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    iget-object v1, p0, Lxt;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto :goto_0
.end method
