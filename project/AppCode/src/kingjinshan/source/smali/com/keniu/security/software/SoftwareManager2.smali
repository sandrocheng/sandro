.class public Lcom/keniu/security/software/SoftwareManager2;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SoftwareManager2.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/PopupWindow;

.field private C:Landroid/view/LayoutInflater;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Z

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:[Ljava/lang/String;

.field final a:Landroid/os/Handler;

.field b:Landroid/widget/AdapterView$OnItemClickListener;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/util/ArrayList;

.field private s:Ljava/util/ArrayList;

.field private t:Ljava/util/ArrayList;

.field private u:Lcom/keniu/security/software/aj;

.field private v:Lcom/keniu/security/software/aj;

.field private w:Lcom/keniu/security/software/aj;

.field private x:Lcom/keniu/security/software/af;

.field private y:Landroid/widget/ListView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 74
    iput v2, p0, Lcom/keniu/security/software/SoftwareManager2;->c:I

    .line 75
    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->d:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->e:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->f:I

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->g:I

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->h:I

    .line 82
    iput v2, p0, Lcom/keniu/security/software/SoftwareManager2;->i:I

    .line 83
    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->j:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    .line 112
    iput-boolean v2, p0, Lcom/keniu/security/software/SoftwareManager2;->F:Z

    .line 211
    const/16 v0, 0x100

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->G:I

    .line 212
    const/16 v0, 0x101

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->H:I

    .line 213
    const/16 v0, 0x103

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->I:I

    .line 215
    new-instance v0, Lcom/keniu/security/software/r;

    invoke-direct {v0, p0}, Lcom/keniu/security/software/r;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->a:Landroid/os/Handler;

    .line 527
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Google Inc."

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->J:[Ljava/lang/String;

    .line 544
    new-instance v0, Lcom/keniu/security/software/x;

    invoke-direct {v0, p0}, Lcom/keniu/security/software/x;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1426
    return-void
.end method

.method static synthetic A(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    return v0
.end method

.method static synthetic B(Lcom/keniu/security/software/SoftwareManager2;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->C:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic D(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->n:I

    return v0
.end method

.method static synthetic E(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->l:I

    return v0
.end method

.method static synthetic F(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->k:I

    return v0
.end method

.method static synthetic G(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->m:I

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/af;)Lcom/keniu/security/software/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->x:Lcom/keniu/security/software/af;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->u:Lcom/keniu/security/software/aj;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 185
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->z:Landroid/widget/TextView;

    .line 187
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    .line 191
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/sdcard"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v5, v2

    mul-long v2, v3, v5

    .line 196
    iget-object v4, p0, Lcom/keniu/security/software/SoftwareManager2;->z:Landroid/widget/TextView;

    const v5, 0x7f0b070c

    invoke-virtual {p0, v5}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->z:Landroid/widget/TextView;

    const v3, 0x7f0b070d

    invoke-virtual {p0, v3}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSysCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInnerSysCate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->f()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/Comparator;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    :goto_2
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    :goto_4
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->u:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->v:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->w:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/util/Comparator;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1315
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    .line 1316
    :goto_0
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1318
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1321
    :cond_0
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1322
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1323
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1326
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1330
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    .line 1331
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1333
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1337
    :cond_2
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1338
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1339
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1342
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1345
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1346
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    .line 1347
    :goto_4
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1349
    iget-object v3, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1351
    :cond_4
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1352
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1353
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1356
    iget-object v2, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1359
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->u:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    .line 1360
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->v:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    .line 1361
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->w:Lcom/keniu/security/software/aj;

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    .line 1362
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManager2;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/keniu/security/software/SoftwareManager2;->F:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/software/SoftwareManager2;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/software/SoftwareManager2;->n:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->v:Lcom/keniu/security/software/aj;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->E:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/keniu/security/software/ar;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/software/ar;-><init>(Lcom/keniu/security/software/SoftwareManager2;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/keniu/security/software/ar;->start()V

    .line 209
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 932
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 933
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    const-string v1, "package:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 937
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSysCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInnerSysCate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->f()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/software/SoftwareManager2;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/software/SoftwareManager2;->l:I

    return p1
.end method

.method private c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 667
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 668
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 669
    const v1, 0x7f0b0710

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 670
    const v1, 0x7f0b021d

    new-instance v2, Lcom/keniu/security/software/y;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/y;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 677
    new-instance v1, Lcom/keniu/security/software/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/z;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 684
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/software/SoftwareManager2;->w:Lcom/keniu/security/software/aj;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/keniu/security/software/SoftwareManager2;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/software/SoftwareManager2;->k:I

    return p1
.end method

.method private d()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 691
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 693
    const v1, 0x7f08011b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 695
    const v3, 0x7f0b070f

    invoke-virtual {p0, v3}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    const v1, 0x7f08011c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 697
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    const v3, 0x7f0b0261

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 699
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 700
    new-instance v3, Lcom/keniu/security/software/aa;

    invoke-direct {v3, p0}, Lcom/keniu/security/software/aa;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 715
    const-string v3, "hidesoftwareremoverootdialog"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 717
    new-instance v1, Lcom/keniu/security/software/ab;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/ab;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 733
    const v1, 0x7f0b054c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 734
    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 735
    const v1, 0x7f0b0733

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/ac;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ac;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 745
    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 746
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/af;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->x:Lcom/keniu/security/software/af;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/software/SoftwareManager2;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/software/SoftwareManager2;->m:I

    return p1
.end method

.method private e()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 750
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 751
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 752
    const v1, 0x7f0b070e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 753
    const v1, 0x7f0b03a9

    new-instance v2, Lcom/keniu/security/software/ad;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ad;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 763
    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/software/ae;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ae;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 770
    new-instance v1, Lcom/keniu/security/software/s;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/s;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 777
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 782
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/cust/app/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    const-string v2, "/cust_backup/image/cust_data/unicom/cn/app"

    const-string v3, "/cust_backup"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;)Z

    .line 812
    :goto_0
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/malware/bz;->c(Ljava/lang/String;)Z

    .line 813
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "systemUninstall"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 815
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 816
    new-instance v1, Lcom/keniu/security/software/av;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/software/av;-><init>(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/o;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 828
    :goto_1
    return-void

    .line 798
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/cust/chinatelecom/cn/delapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    const-string v2, "/cust/chinatelecom/cn/delapp"

    const-string v3, "/cust"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 803
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 807
    :cond_1
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->f()Z

    .line 808
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 818
    :cond_2
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto :goto_1

    .line 822
    :cond_3
    const v0, 0x7f0b0744

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 788
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private g()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 853
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 855
    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 904
    :goto_0
    return-object v0

    .line 859
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 860
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 861
    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/software/o;

    .line 862
    invoke-virtual {v1}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appCate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    const v1, 0x7f0b0559

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v1, Lcom/keniu/security/software/t;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/t;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_1
    const v1, 0x7f0b0557

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v1, Lcom/keniu/security/software/u;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/u;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    const v1, 0x7f0b0558

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v1, Lcom/keniu/security/software/v;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/v;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 893
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 894
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 895
    new-instance v4, Lcom/keniu/security/software/w;

    invoke-direct {v4, p0, v0, v3}, Lcom/keniu/security/software/w;-><init>(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/o;Ljava/util/List;)V

    invoke-virtual {v2, v1, v4}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 904
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    return v0
.end method

.method static synthetic i(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    return v0
.end method

.method static synthetic j(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    return v0
.end method

.method static synthetic k(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    return v0
.end method

.method static synthetic l(Lcom/keniu/security/software/SoftwareManager2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    return v0
.end method

.method static synthetic n(Lcom/keniu/security/software/SoftwareManager2;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->J:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    return v0
.end method

.method static synthetic p(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->u:Lcom/keniu/security/software/aj;

    return-object v0
.end method

.method static synthetic q(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    return v0
.end method

.method static synthetic r(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->w:Lcom/keniu/security/software/aj;

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->q:I

    return v0
.end method

.method static synthetic v(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->v:Lcom/keniu/security/software/aj;

    return-object v0
.end method

.method static synthetic w(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    return v0
.end method

.method static synthetic x(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->f()V

    return-void
.end method

.method static synthetic y(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->o:I

    return v0
.end method

.method static synthetic z(Lcom/keniu/security/software/SoftwareManager2;)I
    .locals 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/software/SoftwareManager2;->p:I

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/keniu/security/main/BaseTitleActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 632
    if-nez p2, :cond_0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 637
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/aj;

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/aj;->a(I)V

    goto :goto_0

    .line 643
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 648
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 650
    :try_start_1
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 652
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 656
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/aj;

    iget v1, p0, Lcom/keniu/security/software/SoftwareManager2;->D:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/aj;->a(I)V

    goto :goto_0

    .line 659
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    const v0, 0x7f03003c

    const v1, 0x7f0b0706

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 132
    const-string v0, "sm"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManager2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->C:Landroid/view/LayoutInflater;

    .line 135
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    .line 136
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->A:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 140
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->a()V

    .line 141
    new-instance v0, Lcom/keniu/security/software/ar;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/software/ar;-><init>(Lcom/keniu/security/software/SoftwareManager2;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/keniu/security/software/ar;->start()V

    .line 142
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const v1, 0x7f0b0219

    const/4 v4, 0x0

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 541
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->g()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 533
    :pswitch_0
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->g()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 535
    :pswitch_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b070e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b03a9

    new-instance v2, Lcom/keniu/security/software/ad;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ad;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/software/ae;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ae;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/software/s;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/s;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 537
    :pswitch_2
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0710

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b021d

    new-instance v2, Lcom/keniu/security/software/y;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/y;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/software/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/z;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f08011b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0b070f

    invoke-virtual {p0, v3}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0b0261

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v3, Lcom/keniu/security/software/aa;

    invoke-direct {v3, p0}, Lcom/keniu/security/software/aa;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "hidesoftwareremoverootdialog"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/keniu/security/software/ab;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/ab;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b054c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0733

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/ac;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/ac;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onDestroy()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/software/SoftwareManager2;->F:Z

    .line 119
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->g()Z

    .line 123
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 158
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    move v0, v2

    .line 180
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->x:Lcom/keniu/security/software/af;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->z:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/keniu/security/software/SoftwareManager2;->a()V

    .line 172
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManager2;->x:Lcom/keniu/security/software/af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    move v0, v2

    .line 178
    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManager2;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/keniu/security/main/BaseTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManager2;->B:Landroid/widget/PopupWindow;

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onPause()V

    .line 154
    return-void
.end method
