.class final Lboy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbot;


# direct methods
.method constructor <init>(Lbot;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lboy;->c:Lbot;

    iput-object p2, p0, Lboy;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lboy;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lboy;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lboy;->c:Lbot;

    invoke-static {v0}, Lbot;->P(Lbot;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0152

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lboy;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v1, p0, Lboy;->c:Lbot;

    invoke-static {v1, v0}, Lbot;->a(Lbot;Ljava/lang/String;)V

    goto :goto_0
.end method
