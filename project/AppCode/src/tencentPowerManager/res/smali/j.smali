.class final Lj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Le$b;

.field private synthetic b:Ldf;


# direct methods
.method constructor <init>(Le$b;Ldf;)V
    .locals 0

    iput-object p1, p0, Lj;->a:Le$b;

    iput-object p2, p0, Lj;->b:Ldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lj;->a:Le$b;

    invoke-interface {v0, p3}, Le$b;->a(I)V

    iget-object v0, p0, Lj;->b:Ldf;

    invoke-virtual {v0}, Ldf;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void
.end method
