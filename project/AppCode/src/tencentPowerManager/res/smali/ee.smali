.class public final Lee;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/powermanager/view/PowerManagerView;

.field private synthetic b:Ldd;

.field private synthetic c:Lbf;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;Ldd;Lbf;)V
    .locals 0

    iput-object p1, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    iput-object p2, p0, Lee;->b:Ldd;

    iput-object p3, p0, Lee;->c:Lbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lee;->b:Ldd;

    invoke-virtual {v0, p3}, Ldd;->a(I)Ldi;

    move-result-object v0

    iget-object v1, p0, Lee;->b:Ldd;

    invoke-virtual {v1}, Ldd;->dismiss()V

    iget v0, v0, Ldi;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lee;->c:Lbf;

    iget v0, v0, Lbf;->a:I

    iget-object v1, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->l(Lcom/tencent/powermanager/view/PowerManagerView;)Lr;

    move-result-object v1

    invoke-virtual {v1}, Lr;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->i(Lcom/tencent/powermanager/view/PowerManagerView;)Lag;

    move-result-object v0

    iget-object v1, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->o(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lag;->a(Landroid/content/Context;ILbf;)V

    :cond_0
    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(Lcom/tencent/powermanager/view/PowerManagerView;)Ls;

    move-result-object v0

    iget-object v1, p0, Lee;->c:Lbf;

    new-instance v2, Lef;

    invoke-direct {v2, p0}, Lef;-><init>(Lee;)V

    invoke-virtual {v0, v1, v2}, Ls;->b(Lbf;Ls$a;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->q(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    iget-object v0, p0, Lee;->c:Lbf;

    invoke-static {v1, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->a(Landroid/content/Intent;Lbf;)V

    const-string v0, "savemode_is_new_ornot"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lee;->c:Lbf;

    iget v0, v0, Lbf;->a:I

    iget-object v2, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v2}, Lcom/tencent/powermanager/view/PowerManagerView;->l(Lcom/tencent/powermanager/view/PowerManagerView;)Lr;

    move-result-object v2

    invoke-virtual {v2}, Lr;->c()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->r(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->s(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
