.class final Lavs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lavh;


# direct methods
.method constructor <init>(Lavh;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lavs;->c:Lavh;

    iput-object p2, p0, Lavs;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lavs;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lavs;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x65f4

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    iget-object v1, p0, Lavs;->c:Lavh;

    invoke-virtual {v1, v0}, Lavh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lavs;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lavs;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lavs;->c:Lavh;

    invoke-static {v0}, Lavh;->m(Lavh;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b057f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
