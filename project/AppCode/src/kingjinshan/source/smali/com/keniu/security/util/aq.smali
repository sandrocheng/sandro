.class public final Lcom/keniu/security/util/aq;
.super Ljava/lang/Object;
.source "MyAlertDialog.java"


# instance fields
.field private final a:Lcom/keniu/security/util/ai;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/keniu/security/util/ai;

    invoke-direct {v0, p1}, Lcom/keniu/security/util/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    .line 281
    const v0, 0x7f0a001a

    iput v0, p0, Lcom/keniu/security/util/aq;->b:I

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method private a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 635
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 636
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->C:[Z

    .line 637
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->D:Z

    .line 638
    return-object p0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    .line 768
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p4, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 769
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p2, v0, Lcom/keniu/security/util/ai;->F:I

    .line 770
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->E:Z

    .line 772
    return-object p0
.end method

.method private a(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    .line 604
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 606
    return-object p0
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    .line 703
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p4, v0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 704
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->J:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->D:Z

    .line 707
    return-object p0
.end method

.method private a(Landroid/view/View;IIII)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 913
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    .line 914
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->B:Z

    .line 915
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p2, v0, Lcom/keniu/security/util/ai;->x:I

    .line 916
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p3, v0, Lcom/keniu/security/util/ai;->y:I

    .line 917
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p4, v0, Lcom/keniu/security/util/ai;->z:I

    .line 918
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p5, v0, Lcom/keniu/security/util/ai;->A:I

    .line 919
    return-object p0
.end method

.method private a(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 848
    return-object p0
.end method

.method private a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    .line 829
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 830
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p2, v0, Lcom/keniu/security/util/ai;->F:I

    .line 831
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->E:Z

    .line 832
    return-object p0
.end method

.method private a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 667
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 668
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->C:[Z

    .line 669
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->D:Z

    .line 670
    return-object p0
.end method

.method private b(Z)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean p1, v0, Lcom/keniu/security/util/ai;->i:Z

    .line 434
    return-object p0
.end method

.method private c(Landroid/view/View;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->f:Landroid/view/View;

    .line 321
    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    .line 497
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 498
    return-object p0
.end method

.method private c(Z)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean p1, v0, Lcom/keniu/security/util/ai;->j:Z

    .line 479
    return-object p0
.end method

.method private d(Z)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 933
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean p1, v0, Lcom/keniu/security/util/ai;->K:Z

    .line 934
    return-object p0
.end method

.method private e(Z)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 941
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean p1, v0, Lcom/keniu/security/util/ai;->N:Z

    .line 942
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/keniu/security/util/aq;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const v1, 0x7f02013d

    iput v1, v0, Lcom/keniu/security/util/ai;->c:I

    .line 354
    return-object p0
.end method

.method public final a(I)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    .line 292
    return-object p0
.end method

.method public final a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 735
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 736
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p2, v0, Lcom/keniu/security/util/ai;->F:I

    .line 737
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->E:Z

    .line 738
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    .line 384
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 385
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->r:Landroid/content/DialogInterface$OnCancelListener;

    .line 522
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->s:Landroid/content/DialogInterface$OnKeyListener;

    .line 534
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->d:Landroid/graphics/drawable/Drawable;

    .line 365
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    .line 864
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->B:Z

    .line 865
    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    .line 581
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 582
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    .line 303
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    .line 403
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 404
    return-object p0
.end method

.method public final a(Z)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean p1, v0, Lcom/keniu/security/util/ai;->q:Z

    .line 509
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 799
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p3, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 800
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput p2, v0, Lcom/keniu/security/util/ai;->F:I

    .line 801
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->E:Z

    .line 802
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 561
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 562
    return-object p0
.end method

.method public final b()Lcom/keniu/security/util/aq;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->h:Z

    .line 409
    return-object p0
.end method

.method public final b(I)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    .line 332
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    .line 428
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 429
    return-object p0
.end method

.method public final b(Landroid/view/View;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 875
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    .line 876
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->B:Z

    .line 877
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-boolean v1, v0, Lcom/keniu/security/util/ai;->O:Z

    .line 881
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    .line 343
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p1, v0, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    return-object p0
.end method

.method public final c()Lcom/keniu/security/util/ap;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 953
    new-instance v8, Lcom/keniu/security/util/ap;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget v2, p0, Lcom/keniu/security/util/aq;->b:I

    invoke-direct {v8, v1, v2}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;I)V

    .line 954
    iget-object v9, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    invoke-static {v8}, Lcom/keniu/security/util/ap;->a(Lcom/keniu/security/util/ap;)Lcom/keniu/security/util/MyAlertController;

    move-result-object v10

    iget-object v1, v9, Lcom/keniu/security/util/ai;->f:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, v9, Lcom/keniu/security/util/ai;->f:Landroid/view/View;

    invoke-virtual {v10, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v1, v9, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/keniu/security/util/ai;->g:Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Lcom/keniu/security/util/MyAlertController;->b(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v9, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    iget-object v2, v9, Lcom/keniu/security/util/ai;->k:Ljava/lang/CharSequence;

    iget-object v3, v9, Lcom/keniu/security/util/ai;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->h:Z

    invoke-static {v10, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Z)Z

    :cond_2
    iget-object v1, v9, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const/4 v1, -0x2

    iget-object v2, v9, Lcom/keniu/security/util/ai;->m:Ljava/lang/CharSequence;

    iget-object v3, v9, Lcom/keniu/security/util/ai;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->i:Z

    invoke-static {v10, v1}, Lcom/keniu/security/util/MyAlertController;->b(Lcom/keniu/security/util/MyAlertController;Z)Z

    :cond_3
    iget-object v1, v9, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    const/4 v1, -0x3

    iget-object v2, v9, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    iget-object v3, v9, Lcom/keniu/security/util/ai;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->j:Z

    invoke-static {v10, v1}, Lcom/keniu/security/util/MyAlertController;->c(Lcom/keniu/security/util/MyAlertController;Z)Z

    :cond_4
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->K:Z

    if-eqz v1, :cond_5

    invoke-virtual {v10, v12}, Lcom/keniu/security/util/MyAlertController;->a(Z)V

    :cond_5
    iget-object v1, v9, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    iget-object v1, v9, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_6

    iget-object v1, v9, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    :cond_6
    iget-object v1, v9, Lcom/keniu/security/util/ai;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/keniu/security/util/MyAlertController$RecycleListView;

    move-object v7, v0

    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_11

    iget-object v1, v9, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_10

    new-instance v1, Lcom/keniu/security/util/aj;

    iget-object v2, v9, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, v9, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, v9, v2, v3, v7}, Lcom/keniu/security/util/aj;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    :goto_1
    iget-object v2, v9, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    if-eqz v2, :cond_7

    iget-object v2, v9, Lcom/keniu/security/util/ai;->M:Lcom/keniu/security/util/an;

    :cond_7
    invoke-static {v10, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, v9, Lcom/keniu/security/util/ai;->F:I

    invoke-static {v10, v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;I)I

    iget-object v1, v9, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_15

    new-instance v1, Lcom/keniu/security/util/al;

    invoke-direct {v1, v9, v10}, Lcom/keniu/security/util/al;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    :goto_2
    iget-object v1, v9, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_9

    iget-object v1, v9, Lcom/keniu/security/util/ai;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_9
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_16

    invoke-virtual {v7, v12}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_a
    :goto_3
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->N:Z

    iput-boolean v1, v7, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    invoke-static {v10, v7}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    :cond_b
    iget-object v1, v9, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->B:Z

    if-eqz v1, :cond_17

    iget-object v2, v9, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    iget v3, v9, Lcom/keniu/security/util/ai;->x:I

    iget v4, v9, Lcom/keniu/security/util/ai;->y:I

    iget v5, v9, Lcom/keniu/security/util/ai;->z:I

    iget v6, v9, Lcom/keniu/security/util/ai;->A:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;IIII)V

    :cond_c
    :goto_4
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->O:Z

    if-nez v1, :cond_d

    invoke-static {v10}, Lcom/keniu/security/util/MyAlertController;->l(Lcom/keniu/security/util/MyAlertController;)Z

    .line 955
    :cond_d
    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-boolean v1, v1, Lcom/keniu/security/util/ai;->q:Z

    invoke-virtual {v8, v1}, Lcom/keniu/security/util/ap;->setCancelable(Z)V

    .line 956
    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->r:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v8, v1}, Lcom/keniu/security/util/ap;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 957
    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->s:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_e

    .line 958
    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->s:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v1}, Lcom/keniu/security/util/ap;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 960
    :cond_e
    return-object v8

    .line 954
    :cond_f
    iget-object v1, v9, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/keniu/security/util/ai;->e:Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Lcom/keniu/security/util/MyAlertController;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_10
    new-instance v1, Lcom/keniu/security/util/ak;

    iget-object v2, v9, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v3, v9, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    invoke-direct {v1, v9, v2, v3, v7}, Lcom/keniu/security/util/ak;-><init>(Lcom/keniu/security/util/ai;Landroid/content/Context;Landroid/database/Cursor;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V

    goto :goto_1

    :cond_11
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->E:Z

    if-eqz v1, :cond_12

    const v1, 0x7f0300e5

    move v3, v1

    :goto_5
    iget-object v1, v9, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    if-nez v1, :cond_14

    iget-object v1, v9, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    iget-object v1, v9, Lcom/keniu/security/util/ai;->u:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    :cond_12
    const v1, 0x7f0300e3

    move v3, v1

    goto :goto_5

    :cond_13
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v9, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    const v4, 0x7f08033b

    iget-object v5, v9, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, v9, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    iget-object v4, v9, Lcom/keniu/security/util/ai;->H:Landroid/database/Cursor;

    new-array v5, v12, [Ljava/lang/String;

    iget-object v6, v9, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    aput-object v6, v5, v13

    new-array v6, v12, [I

    const v11, 0x1020014

    aput v11, v6, v13

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_15
    iget-object v1, v9, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/keniu/security/util/am;

    invoke-direct {v1, v9, v7, v10}, Lcom/keniu/security/util/am;-><init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController$RecycleListView;Lcom/keniu/security/util/MyAlertController;)V

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    :cond_16
    iget-boolean v1, v9, Lcom/keniu/security/util/ai;->D:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_3

    :cond_17
    iget-object v1, v9, Lcom/keniu/security/util/ai;->w:Landroid/view/View;

    invoke-virtual {v10, v1}, Lcom/keniu/security/util/MyAlertController;->b(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->o:Ljava/lang/CharSequence;

    .line 473
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 474
    return-object p0
.end method

.method public final d()Lcom/keniu/security/util/ap;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 970
    return-object v0
.end method

.method public final d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/util/ai;->t:[Ljava/lang/CharSequence;

    .line 547
    iget-object v0, p0, Lcom/keniu/security/util/aq;->a:Lcom/keniu/security/util/ai;

    iput-object p2, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    .line 548
    return-object p0
.end method
