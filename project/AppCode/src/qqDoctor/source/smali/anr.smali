.class final Lanr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lanq;


# direct methods
.method constructor <init>(Lanq;Landroid/widget/EditText;Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lanr;->d:Lanq;

    iput-object p2, p0, Lanr;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lanr;->b:Landroid/view/View;

    iput-object p4, p0, Lanr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lanr;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lanr;->d:Lanq;

    invoke-static {v0}, Lanq;->a(Lanq;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lanr;->b:Landroid/view/View;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;

    iget-object v2, p0, Lanr;->d:Lanq;

    invoke-static {v2}, Lanq;->b(Lanq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;->doClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lanr;->d:Lanq;

    invoke-static {v0}, Lanq;->c(Lanq;)Lahz;

    move-result-object v0

    invoke-virtual {v0}, Lahz;->notifyDataSetChanged()V

    iget-object v0, p0, Lanr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lanr;->d:Lanq;

    invoke-static {v0}, Lanq;->d(Lanq;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lanr;->d:Lanq;

    invoke-static {v1}, Lanq;->e(Lanq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
