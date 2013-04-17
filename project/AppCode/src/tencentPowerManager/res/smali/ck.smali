.class public final Lck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)V
    .locals 0

    iput-object p1, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg;

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v2, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v2

    iget v2, v2, Lbf;->c:I

    new-instance v3, Le$a;

    invoke-direct {v3, p0, v0}, Le$a;-><init>(Lck;Lbg;)V

    invoke-static {v1, v2, v3}, Le;->a(Landroid/app/Activity;ILe$a;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v3

    iget v3, v3, Lbf;->d:I

    iget-object v4, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-virtual {v4}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-virtual {v5}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sparse-switch v3, :sswitch_data_0

    :goto_1
    :sswitch_0
    iget-object v2, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v3, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    const v6, 0x7f060058

    invoke-virtual {v3, v6}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcl;

    invoke-direct {v6, p0, v5, v0}, Lcl;-><init>(Lck;[Ljava/lang/String;Lbg;)V

    invoke-static {v2, v1, v4, v3, v6}, Le;->a(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Le$b;)V

    goto :goto_0

    :sswitch_1
    move v1, v2

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_3
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->f:Z

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_2

    :pswitch_4
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_3
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->g:Z

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto :goto_3

    :pswitch_5
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_4
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->h:Z

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto :goto_4

    :pswitch_6
    iget-object v1, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-virtual {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-virtual {v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    iget-object v2, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v3, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v3

    iget v3, v3, Lbf;->e:I

    iget-object v4, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    const v5, 0x7f060059

    invoke-virtual {v4, v5}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcm;

    invoke-direct {v5, p0, v0, v1}, Lcm;-><init>(Lck;Lbg;[Ljava/lang/String;)V

    invoke-static {v2, v3, v1, v4, v5}, Le;->a(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Le$b;)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_5
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->i:Z

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_5

    :pswitch_8
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_6
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->j:Z

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_6

    :pswitch_9
    check-cast p2, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_7
    invoke-virtual {p2, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lbf;->k:Z

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x927c0 -> :sswitch_4
    .end sparse-switch
.end method
