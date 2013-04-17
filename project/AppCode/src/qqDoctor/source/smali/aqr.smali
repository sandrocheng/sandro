.class final Laqr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laqo;


# direct methods
.method constructor <init>(Laqo;)V
    .locals 0

    iput-object p1, p0, Laqr;->a:Laqo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Laqr;->a:Laqo;

    invoke-static {v0}, Laqo;->r(Laqo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laqr;->a:Laqo;

    invoke-static {v1}, Laqo;->m(Laqo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Laqr;->a:Laqo;

    invoke-static {v0}, Laqo;->s(Laqo;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00a8

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Laqr;->a:Laqo;

    invoke-static {v2, v0, v1}, Laqo;->a(Laqo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
