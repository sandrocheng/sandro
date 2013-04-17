.class final Lbhq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbhn;


# direct methods
.method constructor <init>(Lbhn;)V
    .locals 0

    iput-object p1, p0, Lbhq;->a:Lbhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbhq;->a:Lbhn;

    invoke-static {v0}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbhq;->a:Lbhn;

    invoke-static {v0}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lbhq;->a:Lbhn;

    invoke-static {v1}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lbhq;->a:Lbhn;

    invoke-static {v2}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lbhq;->a:Lbhn;

    invoke-static {v1}, Lbhn;->b(Lbhn;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a([J)V

    return-void
.end method
