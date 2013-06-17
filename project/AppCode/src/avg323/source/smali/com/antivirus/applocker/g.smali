.class public Lcom/antivirus/applocker/g;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/antivirus/ui/a/a/c;
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/antivirus/applocker/i;

.field private d:Lcom/antivirus/applocker/l;

.field private e:Ljava/util/ArrayList;

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/applocker/g;->b:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/applocker/g;->f:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/antivirus/applocker/g;->g:J

    return-void
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090126

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/applocker/h;

    invoke-direct {v1, p0}, Lcom/antivirus/applocker/h;-><init>(Lcom/antivirus/applocker/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/antivirus/applocker/l;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/applocker/l;-><init>(Lcom/antivirus/applocker/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/antivirus/applocker/g;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private G()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/applocker/k;

    iget-boolean v3, v0, Lcom/antivirus/applocker/k;->d:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/applocker/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/antivirus/applocker/g;)Lcom/antivirus/applocker/l;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    return-object v0
.end method

.method static synthetic c(Lcom/antivirus/applocker/g;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->f(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/antivirus/c;->g(Z)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Lcom/antivirus/c;->g(Z)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011f

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/antivirus/applocker/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    return-object v0
.end method

.method private e(Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09011c

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->f(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/antivirus/c;->g(Z)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09011d

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/antivirus/c;->g(Z)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011f

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/antivirus/applocker/g;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/applocker/g;->G()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/applocker/g;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090110

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/applocker/g;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/antivirus/applocker/g;->F()V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 8

    const v7, 0x7f09011c

    const v6, 0x7f09011b

    const/16 v5, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v7}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_0
    array-length v1, v0

    invoke-static {v0, v4, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "menu_opened"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v2, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v7}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v5, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09011d

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v5, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v2, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v0

    if-nez v0, :cond_5

    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v7}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v5, v3, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09011d

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v5, v3, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/antivirus/applocker/g;->d(Z)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/applocker/i;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/applocker/i;-><init>(Lcom/antivirus/applocker/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/applocker/g;->c:Lcom/antivirus/applocker/i;

    iget-object v0, p0, Lcom/antivirus/applocker/g;->c:Lcom/antivirus/applocker/i;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/g;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/antivirus/applocker/g;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/AppBlockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1, v0}, Lcom/avg/ui/general/a/a;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iput-boolean v4, p0, Lcom/antivirus/applocker/g;->f:Z

    invoke-direct {p0}, Lcom/antivirus/applocker/g;->G()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/antivirus/applocker/c;

    invoke-direct {v1}, Lcom/antivirus/applocker/c;-><init>()V

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1, v2, v0}, Lcom/antivirus/applocker/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/applocker/AppLockerWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090112

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/g;->a(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/q;

    invoke-direct {v1}, Lcom/antivirus/applocker/q;-><init>()V

    const v2, 0x7f0800be

    const-string v3, "PasswordConfirmationFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "change_password"

    invoke-static {v0, v1, v2, v6, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "password_change"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/antivirus/applocker/g;->a(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/antivirus/applocker/g;->e(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->l()V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "activate_timer"

    invoke-static {v0, v1, v2, v6, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/g;->a(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a_(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "password_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/antivirus/applocker/g;->a(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "change_password"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/antivirus/applocker/g;->c(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "activate_timer"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/g;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/g;->a(Z)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method protected e(Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/applocker/k;

    iput-boolean p1, v0, Lcom/antivirus/applocker/k;->d:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    invoke-virtual {v0}, Lcom/antivirus/applocker/l;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/applocker/g;->f:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/applocker/k;

    iget-object v1, v0, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v3, v4

    move v2, v4

    :goto_0
    iget-object v1, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    int-to-long v7, v3

    cmp-long v1, v7, p4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/applocker/k;

    iget-object v1, v1, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    invoke-virtual {v1, v3}, Lcom/antivirus/applocker/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/applocker/k;

    iget-object v2, p0, Lcom/antivirus/applocker/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/antivirus/applocker/k;

    iget-boolean v2, v2, Lcom/antivirus/applocker/k;->d:Z

    if-nez v2, :cond_1

    move v2, v5

    :goto_1
    iput-boolean v2, v1, Lcom/antivirus/applocker/k;->d:Z

    move v2, v5

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcom/antivirus/applocker/k;->d:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/antivirus/applocker/g;->g:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v1, v6

    if-lez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/applocker/g;->g:J

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09012c

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    iput-boolean v5, p0, Lcom/antivirus/applocker/g;->f:Z

    iget-object v1, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/antivirus/applocker/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/applocker/k;

    iget-boolean v0, v0, Lcom/antivirus/applocker/k;->d:Z

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v5, v1, Lcom/antivirus/applocker/k;->d:Z

    iget-object v0, p0, Lcom/antivirus/applocker/g;->d:Lcom/antivirus/applocker/l;

    invoke-virtual {v0}, Lcom/antivirus/applocker/l;->notifyDataSetChanged()V

    return-void

    :cond_4
    move v5, v4

    goto :goto_2
.end method

.method public r()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    sget-boolean v1, Lcom/antivirus/c;->b:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/antivirus/c;->b:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v4, Lcom/antivirus/c;->b:Z

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/n;

    invoke-direct {v1}, Lcom/antivirus/applocker/n;-><init>()V

    const v2, 0x7f0800be

    const-string v3, "LockerBlockFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/LockerBlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090113

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "firest_edit_text"

    iget-object v2, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090116

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/antivirus/applocker/g;->a(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/antivirus/applocker/g;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/g;->a(Z)V

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/applocker/g;->c:Lcom/antivirus/applocker/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/g;->c:Lcom/antivirus/applocker/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/antivirus/applocker/i;->a:Z

    iget-object v0, p0, Lcom/antivirus/applocker/g;->c:Lcom/antivirus/applocker/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/i;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->t()V

    return-void
.end method
