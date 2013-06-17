.class Lcom/antivirus/ui/callmessagefilter/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/m;->b:Lcom/antivirus/ui/callmessagefilter/j;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/m;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/m;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/m;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
