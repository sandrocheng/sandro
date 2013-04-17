.class final Lbhr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbhn;


# direct methods
.method constructor <init>(Lbhn;)V
    .locals 0

    iput-object p1, p0, Lbhr;->a:Lbhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbhr;->a:Lbhn;

    invoke-static {v0}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lbhr;->a:Lbhn;

    invoke-static {v1}, Lbhn;->b(Lbhn;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a([J)V

    return-void
.end method
