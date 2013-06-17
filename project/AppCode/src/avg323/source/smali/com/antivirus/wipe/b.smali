.class public Lcom/antivirus/wipe/b;
.super Lcom/antivirus/ui/a/a/a;


# instance fields
.field private Y:Ljava/util/ArrayList;

.field private Z:Ljava/util/HashMap;

.field public a:Lcom/antivirus/wipe/ak;

.field private aa:Ljava/util/HashMap;

.field private ab:Ljava/util/HashMap;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/widget/CheckBox;

.field private f:I

.field private g:Z

.field private h:Landroid/app/AlertDialog;

.field private i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v1, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/antivirus/wipe/b;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/wipe/b;->g:Z

    iput-object v1, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->Y:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->a:Lcom/antivirus/wipe/ak;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->Z:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ab:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->ac:Ljava/lang/String;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->ad:Ljava/lang/String;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->ae:Ljava/lang/String;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->ah:Ljava/lang/String;

    iput-object v1, p0, Lcom/antivirus/wipe/b;->ai:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic B(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic C(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic D(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic E(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic F(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private F()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/antivirus/wipe/b;->f:I

    iget-object v0, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v3, Lcom/antivirus/wipe/y;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/wipe/y;-><init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/z;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/z;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic G(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private G()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/antivirus/wipe/b;->f:I

    iget-object v0, p0, Lcom/antivirus/wipe/b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v3, Lcom/antivirus/wipe/aa;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/wipe/aa;-><init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/g;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/g;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic H(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private H()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/antivirus/wipe/b;->f:I

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090141

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/antivirus/wipe/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic I(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/h;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/h;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/k;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/k;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic J(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->I()V

    return-void
.end method

.method private K()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/antivirus/wipe/l;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/l;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic K(Lcom/antivirus/wipe/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/wipe/b;->c:Z

    return v0
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090173

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ac:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090174

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ad:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090175

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090176

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ah:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090177

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->ai:Ljava/lang/String;

    return-void
.end method

.method static synthetic L(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->J()V

    return-void
.end method

.method private M()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/wipe/b;->Z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ac:Ljava/lang/String;

    new-instance v2, Lcom/antivirus/wipe/m;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/m;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->Z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ad:Ljava/lang/String;

    new-instance v2, Lcom/antivirus/wipe/n;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/n;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ae:Ljava/lang/String;

    new-instance v2, Lcom/antivirus/wipe/o;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/o;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ah:Ljava/lang/String;

    new-instance v2, Lcom/antivirus/wipe/p;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/p;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ai:Ljava/lang/String;

    new-instance v2, Lcom/antivirus/wipe/q;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/q;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;I)I
    .locals 0

    iput p1, p0, Lcom/antivirus/wipe/b;->f:I

    return p1
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 11

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080173

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/antivirus/wipe/AccountWrapper;

    invoke-direct {v4}, Lcom/antivirus/wipe/AccountWrapper;-><init>()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ab:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4, v2}, Lcom/antivirus/wipe/AccountWrapper;->getAccountNames(Landroid/content/Context;)[Lcom/antivirus/wipe/a;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ab:Ljava/util/HashMap;

    iget-object v2, v7, Lcom/antivirus/wipe/a;->a:Ljava/lang/String;

    new-instance v8, Lcom/antivirus/wipe/t;

    invoke-direct {v8, p0, v7, p1}, Lcom/antivirus/wipe/t;-><init>(Lcom/antivirus/wipe/b;Lcom/antivirus/wipe/a;Landroid/view/LayoutInflater;)V

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f08005b

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v7, Lcom/antivirus/wipe/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08005c

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v2, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08005a

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v10, v7, Lcom/antivirus/wipe/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/antivirus/wipe/AccountWrapper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_1

    const v0, 0x7f020069

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wipe by data - can\'t find: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/antivirus/wipe/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/antivirus/wipe/v;

    invoke-direct {v2, p0, v1, v7}, Lcom/antivirus/wipe/v;-><init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;Lcom/antivirus/wipe/a;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not populate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/wipe/b;->a(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/i;

    invoke-direct {v1, p0, p1}, Lcom/antivirus/wipe/i;-><init>(Lcom/antivirus/wipe/b;Z)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/antivirus/wipe/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/wipe/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private b(Landroid/view/LayoutInflater;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.PICK_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    :cond_0
    iget-object v1, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f08005b

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08005c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v3, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f08005a

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/antivirus/wipe/b;->ae:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f0201aa

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    new-instance v3, Lcom/antivirus/wipe/w;

    invoke-direct {v3, p0, v2, v1}, Lcom/antivirus/wipe/w;-><init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not populate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/antivirus/wipe/b;->ah:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0201ad

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/antivirus/wipe/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f0201ab

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/antivirus/wipe/b;->ae:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/antivirus/wipe/b;->ah:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/antivirus/wipe/b;->ai:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const v6, 0x7f020069

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/antivirus/wipe/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/wipe/b;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private c(Landroid/view/LayoutInflater;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "com.android.browser"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v3, "com.google.android.browser"

    aput-object v3, v4, v0

    const/4 v0, 0x2

    const-string v3, "com.sony.nfx.app.browser"

    aput-object v3, v4, v0

    const/4 v0, 0x3

    const-string v3, "com.android.browser.provider"

    aput-object v3, v4, v0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v3, 0x7f080177

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v8, v1

    move-object v1, v2

    move v2, v8

    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    :try_start_0
    aget-object v3, v4, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get browser app info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/antivirus/wipe/b;->Z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f08005b

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08005c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v3, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f08005a

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/antivirus/wipe/b;->ac:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f0201ac

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    :goto_4
    new-instance v3, Lcom/antivirus/wipe/x;

    invoke-direct {v3, p0, v2, v1}, Lcom/antivirus/wipe/x;-><init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not populate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/antivirus/wipe/b;->ad:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0201a9

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method static synthetic c(Lcom/antivirus/wipe/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/wipe/b;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->Y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->K()V

    return-void
.end method

.method static synthetic k(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->H()V

    return-void
.end method

.method static synthetic m(Lcom/antivirus/wipe/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/wipe/b;->g:Z

    return v0
.end method

.method static synthetic n(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->G()V

    return-void
.end method

.method static synthetic p(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ab:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic q(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->Z:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic r(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->aa:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic s(Lcom/antivirus/wipe/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->F()V

    return-void
.end method

.method static synthetic t(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic u(Lcom/antivirus/wipe/b;)I
    .locals 2

    iget v0, p0, Lcom/antivirus/wipe/b;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/antivirus/wipe/b;->f:I

    return v0
.end method

.method static synthetic v(Lcom/antivirus/wipe/b;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/wipe/b;->f:I

    return v0
.end method

.method static synthetic w(Lcom/antivirus/wipe/b;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic x(Lcom/antivirus/wipe/b;)I
    .locals 2

    iget v0, p0, Lcom/antivirus/wipe/b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/antivirus/wipe/b;->f:I

    return v0
.end method

.method static synthetic y(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic z(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    const v0, 0x7f030049

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090166

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/antivirus/wipe/b;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080111

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090230

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080171

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090141

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/antivirus/wipe/c;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/c;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090167

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090168

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090169

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    const v2, 0x7f080112

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/wipe/b;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/wipe/b;->e:Landroid/widget/CheckBox;

    new-instance v2, Lcom/antivirus/wipe/r;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/r;-><init>(Lcom/antivirus/wipe/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/antivirus/wipe/b;->a(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v2}, Lcom/antivirus/wipe/b;->c(Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/antivirus/wipe/b;->b(Landroid/view/LayoutInflater;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/antivirus/wipe/b;->a()V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/wipe/ak;

    iget-object v1, p0, Lcom/antivirus/wipe/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Lcom/antivirus/wipe/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/wipe/b;->a:Lcom/antivirus/wipe/ak;

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->L()V

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->M()V

    invoke-direct {p0}, Lcom/antivirus/wipe/b;->N()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/wipe/b;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/wipe/b;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "progress"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alert"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/b;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/b;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->t()V

    return-void
.end method
