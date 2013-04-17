.class final Lavo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lavh;


# direct methods
.method constructor <init>(Lavh;Landroid/widget/EditText;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lavo;->d:Lavh;

    iput-object p2, p0, Lavo;->a:Landroid/widget/EditText;

    iput p3, p0, Lavo;->b:I

    iput-object p4, p0, Lavo;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lavo;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->f(Lavh;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lavo;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    iput-object v1, v0, Llw;->b:Ljava/lang/String;

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->g(Lavh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->h(Lavh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->g(Lavh;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->i(Lavh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    iget-object v0, v0, Llw;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->j(Lavh;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v0

    iget-object v1, p0, Lavo;->d:Lavh;

    invoke-static {v1}, Lavh;->g(Lavh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-virtual {v0}, Lavh;->onResume()V

    iget-object v0, p0, Lavo;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lavo;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lavo;->d:Lavh;

    invoke-static {v0}, Lavh;->k(Lavh;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b057f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method
