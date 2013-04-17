.class final Lbes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lber;


# direct methods
.method constructor <init>(Lber;)V
    .locals 0

    iput-object p1, p0, Lbes;->a:Lber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/16 v2, 0xf

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbes;->a:Lber;

    invoke-static {v0}, Lber;->a(Lber;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbes;->a:Lber;

    invoke-static {v0}, Lber;->a(Lber;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lbes;->a:Lber;

    invoke-static {v0}, Lber;->b(Lber;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07d2

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
