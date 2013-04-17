.class public final Led;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ldd;

.field private synthetic c:Lcom/tencent/powermanager/view/PowerManagerView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;ILdd;)V
    .locals 0

    iput-object p1, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    iput p2, p0, Led;->a:I

    iput-object p3, p0, Led;->b:Ldd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v8, 0x3a98

    const/16 v7, 0x19

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->i(Lcom/tencent/powermanager/view/PowerManagerView;)Lag;

    move-result-object v0

    iget v1, p0, Led;->a:I

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbf;

    invoke-direct {v3}, Lbf;-><init>()V

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->j(Lcom/tencent/powermanager/view/PowerManagerView;)I

    move-result v0

    iput v0, v3, Lbf;->a:I

    iget-object v0, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->k(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v2}, Lcom/tencent/powermanager/view/PowerManagerView;->f(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lbf;->b:Ljava/lang/String;

    iget v0, p0, Led;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->l(Lcom/tencent/powermanager/view/PowerManagerView;)Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v6, v3, Lbf;->l:I

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->m(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0, v3}, Lcom/tencent/powermanager/view/PowerManagerView;->a(Landroid/content/Intent;Lbf;)V

    iget-object v1, p0, Led;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->n(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Led;->b:Ldd;

    invoke-virtual {v0}, Ldd;->dismiss()V

    return-void

    :pswitch_0
    const/4 v1, -0x1

    iput v1, v3, Lbf;->c:I

    aget-object v1, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lbf;->e:I

    iput-boolean v4, v3, Lbf;->i:Z

    iput-boolean v4, v3, Lbf;->h:Z

    iget-object v1, v0, Lag;->c:Ly;

    invoke-virtual {v1}, Ly;->j()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->k:Z

    iget-object v1, v0, Lag;->c:Ly;

    invoke-virtual {v1}, Ly;->d()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->g:Z

    iget-object v1, v0, Lag;->c:Ly;

    invoke-virtual {v1}, Ly;->h()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->j:Z

    iget-object v0, v0, Lag;->c:Ly;

    invoke-virtual {v0}, Ly;->c()Z

    move-result v0

    iput-boolean v0, v3, Lbf;->f:Z

    const/16 v0, 0x7530

    iput v0, v3, Lbf;->d:I

    goto/16 :goto_0

    :pswitch_1
    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lbf;->e:I

    iput-boolean v4, v3, Lbf;->i:Z

    iput-boolean v4, v3, Lbf;->h:Z

    iput v7, v3, Lbf;->c:I

    iput-boolean v4, v3, Lbf;->k:Z

    iget-object v1, v0, Lag;->c:Ly;

    invoke-virtual {v1}, Ly;->d()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->g:Z

    iget-object v0, v0, Lag;->c:Ly;

    invoke-virtual {v0}, Ly;->h()Z

    move-result v0

    iput-boolean v0, v3, Lbf;->j:Z

    iput-boolean v4, v3, Lbf;->f:Z

    iput v8, v3, Lbf;->d:I

    goto/16 :goto_0

    :pswitch_2
    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lbf;->e:I

    iput-boolean v4, v3, Lbf;->i:Z

    iput-boolean v4, v3, Lbf;->h:Z

    iput v7, v3, Lbf;->c:I

    iput-boolean v4, v3, Lbf;->k:Z

    iput-boolean v4, v3, Lbf;->g:Z

    iput-boolean v4, v3, Lbf;->j:Z

    iput-boolean v4, v3, Lbf;->f:Z

    iput v8, v3, Lbf;->d:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lag;->a:Lr;

    invoke-static {}, Lr;->j()I

    move-result v1

    iput v1, v3, Lbf;->e:I

    iput-boolean v4, v3, Lbf;->i:Z

    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1}, Lah;->d()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->h:Z

    iget-object v1, v0, Lag;->c:Ly;

    invoke-virtual {v1}, Ly;->e()I

    move-result v1

    iput v1, v3, Lbf;->c:I

    iget-object v1, v0, Lag;->a:Lr;

    invoke-virtual {v1}, Lr;->i()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->k:Z

    iput-boolean v5, v3, Lbf;->g:Z

    iget-object v1, v0, Lag;->a:Lr;

    invoke-virtual {v1}, Lr;->k()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->j:Z

    iget-object v1, v0, Lag;->b:Lap;

    invoke-virtual {v1}, Lap;->b()Z

    move-result v1

    iput-boolean v1, v3, Lbf;->f:Z

    iget-object v1, v0, Lag;->a:Lr;

    invoke-virtual {v1}, Lr;->f()I

    move-result v1

    iput v1, v3, Lbf;->d:I

    iget-object v0, v0, Lag;->c:Ly;

    invoke-virtual {v0}, Ly;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v6, v3, Lbf;->l:I

    goto/16 :goto_0

    :cond_0
    iput v5, v3, Lbf;->l:I

    goto/16 :goto_0

    :cond_1
    iput v5, v3, Lbf;->l:I

    goto/16 :goto_1

    :cond_2
    iput v4, v3, Lbf;->l:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
