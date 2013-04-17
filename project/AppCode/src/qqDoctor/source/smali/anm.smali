.class final Lanm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lanl;


# direct methods
.method constructor <init>(Lanl;)V
    .locals 0

    iput-object p1, p0, Lanm;->a:Lanl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lanm;->a:Lanl;

    invoke-virtual {v0}, Lanl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lavf;

    invoke-virtual {v0}, Lavf;->a()I

    move-result v1

    iget-object v2, p0, Lanm;->a:Lanl;

    invoke-static {v2}, Lanl;->a(Lanl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lavg;

    const/4 v2, 0x1

    iput v2, v1, Lavg;->b:I

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lavf;->a(I)V

    iget-object v1, p0, Lanm;->a:Lanl;

    invoke-static {v1}, Lanl;->b(Lanl;)V

    invoke-virtual {v0}, Lavf;->notifyDataSetChanged()V

    return-void
.end method
