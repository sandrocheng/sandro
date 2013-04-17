.class final Lasc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Larz;


# direct methods
.method constructor <init>(Larz;)V
    .locals 0

    iput-object p1, p0, Lasc;->a:Larz;

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

    iget-object v0, p0, Lasc;->a:Larz;

    iget-boolean v0, v0, Larz;->f:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lasc;->a:Larz;

    invoke-static {v0}, Larz;->m(Larz;)I

    move-result v0

    if-nez v0, :cond_0

    long-to-int v0, p4

    iget-object v1, p0, Lasc;->a:Larz;

    invoke-static {v1, v0}, Larz;->a(Larz;I)V

    goto :goto_0
.end method
