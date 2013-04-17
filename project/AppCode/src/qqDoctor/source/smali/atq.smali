.class final Latq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Latn;


# direct methods
.method constructor <init>(Latn;)V
    .locals 0

    iput-object p1, p0, Latq;->a:Latn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Latq;->a:Latn;

    invoke-static {v0}, Latn;->m(Latn;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Latq;->a:Latn;

    iget-object v0, p0, Latq;->a:Latn;

    invoke-static {v0}, Latn;->n(Latn;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Latn;->a(Latn;Z)Z

    iget-object v0, p0, Latq;->a:Latn;

    invoke-static {v0}, Latn;->o(Latn;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
