.class public final Lcom/keniu/security/util/ai;
.super Ljava/lang/Object;
.source "MyAlertController.java"


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public M:Lcom/keniu/security/util/an;

.field public N:Z

.field public O:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/CharSequence;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/content/DialogInterface$OnClickListener;

.field public q:Z

.field public r:Landroid/content/DialogInterface$OnCancelListener;

.field public s:Landroid/content/DialogInterface$OnKeyListener;

.field public t:[Ljava/lang/CharSequence;

.field public u:Landroid/widget/ListAdapter;

.field public v:Landroid/content/DialogInterface$OnClickListener;

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput v0, p0, Lcom/keniu/security/util/ai;->c:I

    .line 720
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->h:Z

    .line 721
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->i:Z

    .line 722
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->j:Z

    .line 740
    iput-boolean v0, p0, Lcom/keniu/security/util/ai;->B:Z

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/util/ai;->F:I

    .line 752
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->N:Z

    .line 753
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->O:Z

    .line 770
    iput-object p1, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    .line 771
    iput-boolean v1, p0, Lcom/keniu/security/util/ai;->q:Z

    .line 772
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/util/ai;->b:Landroid/view/LayoutInflater;

    .line 774
    return-void
.end method

.method private b(Lcom/keniu/security/util/MyAlertController;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 835
    iget-object v1, p0, Lcom/keniu/security/util/ai;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/keniu/security/util/MyAlertController$RecycleListView;

    move-object v7, v0

    .line 840
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_5

    .line 841
    iget-object v1, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 842
    new-instance v1, Lcom/keniu/security/util/aj;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/keniu/security/util/aj;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    .line 908
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    .line 916
    :cond_0
    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 917
    iget v1, p0, Lcom/keniu/security/util/ai;->F:I

    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;I)I

    .line 919
    iget-object v1, p0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 920
    new-instance v1, Lcom/keniu/security/util/al;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/util/al;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 948
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 949
    iget-object v1, p0, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 952
    :cond_2
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_a

    .line 953
    invoke-virtual {v7, v9}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    .line 957
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->N:Z

    iput-boolean v1, v7, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    .line 959
    invoke-static {p1, v7}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 960
    return-void

    .line 861
    :cond_4
    new-instance v1, Lcom/keniu/security/util/ak;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/keniu/security/util/ak;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;Landroid/database/Cursor;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    goto :goto_0

    .line 895
    :cond_5
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0300e5

    move v3, v1

    .line 897
    :goto_3
    iget-object v1, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 898
    iget-object v1, p0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 895
    :cond_6
    const v1, 0x7f0300e3

    move v3, v1

    goto :goto_3

    .line 898
    :cond_7
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    const v4, 0x7f08033b

    iget-object v5, p0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_0

    .line 902
    :cond_8
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    aput-object v6, v5, v10

    new-array v6, v9, [I

    const v8, 0x1020014

    aput v8, v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 931
    :cond_9
    iget-object v1, p0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 932
    new-instance v1, Lcom/keniu/security/util/am;

    invoke-direct {v1, p0, v7, p1}, Lcom/keniu/security/util/am;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController$RecycleListView;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 954
    :cond_a
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_3

    .line 955
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/keniu/security/util/MyAlertController;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 777
    iget-object v1, p0, Lcom/keniu/security/util/ai;->f:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 778
    iget-object v1, p0, Lcom/keniu/security/util/ai;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;)V

    .line 784
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/keniu/security/util/MyAlertController;->b(Ljava/lang/CharSequence;)V

    .line 787
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 788
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 791
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->h:Z

    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Z)Z

    .line 793
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 794
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 797
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->i:Z

    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->b(Lcom/keniu/security/util/MyAlertController;Z)Z

    .line 799
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 800
    const/4 v1, -0x3

    iget-object v2, p0, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 803
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->j:Z

    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->c(Lcom/keniu/security/util/MyAlertController;Z)Z

    .line 805
    :cond_4
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->K:Z

    if-eqz v1, :cond_5

    .line 806
    invoke-virtual {p1, v9}, Lcom/keniu/security/util/MyAlertController;->a(Z)V

    .line 810
    :cond_5
    iget-object v1, p0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 811
    :cond_6
    iget-object v1, p0, Lcom/keniu/security/util/ai;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/keniu/security/util/MyAlertController$RecycleListView;

    move-object v7, v0

    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_f

    new-instance v1, Lcom/keniu/security/util/aj;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/keniu/security/util/aj;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    :goto_1
    iget-object v2, p0, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    :cond_7
    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/keniu/security/util/ai;->F:I

    invoke-static {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;I)I

    iget-object v1, p0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_14

    new-instance v1, Lcom/keniu/security/util/al;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/util/al;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_9
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_15

    invoke-virtual {v7, v9}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_a
    :goto_3
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->N:Z

    iput-boolean v1, v7, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    invoke-static {p1, v7}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 813
    :cond_b
    iget-object v1, p0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 814
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->B:Z

    if-eqz v1, :cond_16

    .line 815
    iget-object v2, p0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    iget v3, p0, Lcom/keniu/security/util/ai;->x:I

    iget v4, p0, Lcom/keniu/security/util/ai;->y:I

    iget v5, p0, Lcom/keniu/security/util/ai;->z:I

    iget v6, p0, Lcom/keniu/security/util/ai;->A:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;IIII)V

    .line 822
    :cond_c
    :goto_4
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->O:Z

    if-nez v1, :cond_d

    .line 824
    invoke-static {p1}, Lcom/keniu/security/util/MyAlertController;->l(Lcom/keniu/security/util/MyAlertController;)Z

    .line 832
    :cond_d
    return-void

    .line 780
    :cond_e
    iget-object v1, p0, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/keniu/security/util/MyAlertController;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 811
    :cond_f
    new-instance v1, Lcom/keniu/security/util/ak;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/keniu/security/util/ak;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;Landroid/database/Cursor;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    goto :goto_1

    :cond_10
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_11

    const v1, 0x7f0300e5

    move v3, v1

    :goto_5
    iget-object v1, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    goto :goto_1

    :cond_11
    const v1, 0x7f0300e3

    move v3, v1

    goto :goto_5

    :cond_12
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    const v4, 0x7f08033b

    iget-object v5, p0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    aput-object v6, v5, v10

    new-array v6, v9, [I

    const v8, 0x1020014

    aput v8, v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/keniu/security/util/am;

    invoke-direct {v1, p0, v7, p1}, Lcom/keniu/security/util/am;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController$RecycleListView;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    :cond_15
    iget-boolean v1, p0, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_3

    .line 818
    :cond_16
    iget-object v1, p0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/keniu/security/util/MyAlertController;->b(Landroid/view/View;)V

    goto :goto_4
.end method
