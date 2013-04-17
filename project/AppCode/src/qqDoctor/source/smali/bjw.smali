.class final Lbjw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbjo;


# direct methods
.method constructor <init>(Lbjo;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbjw;->d:Lbjo;

    iput-object p2, p0, Lbjw;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbjw;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lbjw;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Laai;->a()Laai;

    move-result-object v0

    iget-object v1, p0, Lbjw;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbjw;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const v0, 0x7f0b01ca

    :goto_0
    iget-object v1, p0, Lbjw;->d:Lbjo;

    invoke-static {v1}, Lbjo;->r(Lbjo;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lbjw;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const v0, 0x7f0b01cc

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lbjw;->d:Lbjo;

    invoke-static {v3}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->be()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f0b063f

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Laai;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b01c7

    goto :goto_0

    :cond_3
    const v0, 0x7f0b01c9

    goto :goto_0
.end method
