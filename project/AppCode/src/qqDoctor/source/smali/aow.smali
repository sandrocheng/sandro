.class final Laow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0

    iput-object p1, p0, Laow;->a:Laou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Laow;->a:Laou;

    iget-object v1, p0, Laow;->a:Laou;

    invoke-static {v1}, Laou;->q(Laou;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->b(Laou;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Laow;->a:Laou;

    invoke-static {v0}, Laou;->r(Laou;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8b

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Laow;->a:Laou;

    invoke-static {v1}, Laou;->s(Laou;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0ab7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit16 v0, v0, -0x8b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laow;->a:Laou;

    invoke-static {v1}, Laou;->t(Laou;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laow;->a:Laou;

    iget-object v1, p0, Laow;->a:Laou;

    invoke-static {v1}, Laou;->u(Laou;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0ab6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->a(Laou;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Laow;->a:Laou;

    invoke-static {v0}, Laou;->v(Laou;)V

    goto :goto_0
.end method
